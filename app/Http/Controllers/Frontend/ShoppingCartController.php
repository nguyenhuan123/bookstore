<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Services\ShoppingCartService\PayManager;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;
use App\Models\Transaction;
use App\Models\Order;
use App\Mail\TransactionSuccess;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use App\Models\Payment;

class ShoppingCartController extends Controller
{
    public function index()
    {
        $shopping = \Cart::content();
        
        $viewData = [
            'title_page' => 'Danh sách giỏ hàng',
            'shopping'   => $shopping
        ];
        return view('frontend.pages.shopping.index', $viewData);
    }

    /**
     * Thêm giỏ hàng
     * */
    public function add($id)
    {
        $product = Product::find($id);

        //1. Kiểm tra tồn tại sản phẩm
        if (!$product) return redirect()->to('/');

        // 2. Kiểm tra số lượng sản phẩm
        if ($product->pro_number < 1) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Số lượng sản phẩm không đủ'
            ]);

            return redirect()->back();
        }
		$cart = \Cart::content();
        
		$idCartProduct = $cart->search(function ($cartItem) use ($product){
			if ($cartItem->id == $product->id) return $cartItem->id;
		});
		if ($idCartProduct) {
			$productByCart = \Cart::get($idCartProduct);
			if ($product->pro_number < ($productByCart->qty + 1))
			{
				\Session::flash('toastr', [
					'type'    => 'error',
					'message' => 'Số lượng sản phẩm không đủ'
				]);
				return  redirect()->back();
			}
		}

        // 3. Thêm sản phẩm vào giỏ hàng
        \Cart::add([
            'id'      => $product->id,
            'name'    => $product->pro_name,
            'qty'     => 1,
            'price'   => number_price($product->pro_price, $product->pro_sale),
            'weight'  => '1',
            'options' => [
                'sale'      => $product->pro_sale,
                'price_old' => $product->pro_price,
                'image'     => $product->pro_avatar
            ]
        ]);

        //4. Thông báo
        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Thêm giỏ hàng thành công'
        ]);

        return redirect()->back();
    }

    public function postPay(Request $request)
    {
		Cache::forget('HOME.PRODUCT_PAY');
        $data = $request->except("_token", 'pay');
        if (!\Auth::user()->id) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đăng nhập để thực hiện tính năng này'
            ]);

            return redirect()->back();
        }

        $data['tst_user_id'] = \Auth::user()->id;$data['tst_user_id'] = \Auth::user()->id;
        $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
        $data['created_at']      = Carbon::now();

        $data['tst_code']      = randString(15);

            $transactionID           = Transaction::insertGetId($data);
            if ($transactionID) {
                $shopping = \Cart::content();

                foreach ($shopping as $key => $item) {

                    // Lưu chi tiết đơn hàng
                    Order::insert([
                        'od_transaction_id' => $transactionID,
                        'od_product_id'     => $item->id,
                        'od_sale'           => $item->options->sale,
                        'od_qty'            => $item->qty,
                        'od_price'          => $item->price,
                    ]);

                    //Tăng pay ( số lượt mua của sản phẩm dó)
                    \DB::table('products')
                        ->where('id', $item->id)
                        ->increment("pro_pay");
                }
            }

            \Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Đơn hàng của bạn đã được lưu'
            ]);
            \Cart::destroy();
            return redirect()->to('/');
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.Lấy tham số
            $qty       = $request->qty ?? 1;
            $idProduct = $request->idProduct;
            $product   = Product::find($idProduct);

            //2. Kiểm tra tồn tại sản phẩm
            if (!$product) return response(['messages' => 'Không tồn tại sản sản phẩm cần update']);

            //3. Kiểm tra số lượng sản phẩm còn ko
            if ($product->pro_number < $qty) {
                return response([
                    'messages' => 'Số lượng cập nhật không đủ',
                    'error'    => true
                ]);
            }

            //4. Update
            \Cart::update($id, $qty);

            return response([
                'messages'   => 'Cập nhật thành công',
                'totalMoney' => \Cart::subtotal(0),
                'totalItem'  => number_format(number_price($product->pro_price, $product->pro_sale) * $qty, 0, ',', '.')
            ]);
        }
    }

    /**
     *  Xoá sản phẩm đơn hang
     * */
    public function delete(Request $request, $rowId)
    {
        if ($request->ajax())
        {
            \Cart::remove($rowId);
            return response([
                'totalMoney' => \Cart::subtotal(0),
                'type'       => 'success',
                'message'    => 'Xoá sản phẩm khỏi đơn hàng thành công'
            ]);
        }
    }

    public function checkTimeDiscount($dateThi) {
        $currentTime = Carbon::now();
        $datetime = new Carbon($dateThi);
        $checkTimeBDThi = Carbon::parse($currentTime)->diffInMinutes($datetime, false);
        return $checkTimeBDThi;
    }
}
