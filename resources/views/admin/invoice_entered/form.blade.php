<div class="col-md-12">
	@include('components.int_message')
</div>
<form role="form" action="" method="POST">
	@csrf
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
			<label for="name">Nhà cung cấp <span class="text-danger">(*)</span></label>
			<select name="ie_suppliere" class="form-control">
				@foreach($suppliere as $item)
				<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_suppliere ?? 0) ==  $item->id ? "selected='selected'" : "" }}>{{ $item->sl_name }}</option>
				@endforeach
			</select>
		</div>
	</div>
	<div class="col-md-12">
		<small style="color:red; margin-bottom:20px!important; display: block">Lưu ý: Bạn chỉ có thể nhập tối đa 3 sản phẩm cùng 1 nhà cung cấp/ 1 lần!</small>
		<div class="row">
			<div class="col-md-4">
				<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
					<label for="name">Sản phẩm 1<span class="text-danger">(*)</span></label>
					<select name="ie_product_id" class="form-control js-products">
						@foreach($products as $item)
						<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_product_id ?? 0) ==  $item->id ? "selected='selected'" : "" }}>Name : {{ $item->pro_name }}
							- Giá : {{ number_format($item->pro_price,0,',','.') }}
							- Số lượng : {{ $item->pro_number }}
							- Tổn tiền : {{ number_format($item->pro_price * $item->pro_number,0,',','.') }}
						</option>
						@endforeach
					</select>

				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Số lượng nhập <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control" id="qty" required value="{{ old('ie_number',$invoiceEntered->ie_number ?? 1) }}" name="ie_number" placeholder="10 ...">
				</div>
			</div>
			<div class="col-sm-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Giá nhập <span class="text-danger">(*)</span></label>
					<input type="number" required class="form-control js-money-input" value="{{ old('ie_money',$invoiceEntered->ie_money ?? 0) }}" name="ie_money" placeholder="10000 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Ngày sản xuất</label>
					<input type="date" class="form-control" name="nsx">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Hạn sử dụng</label>
					<input type="date" class="form-control" name="hsd">
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-10">
		<div class="row">
			<div class="col-md-4">
				<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
					<label for="name">Sản phẩm 2<span class="text-danger">(*)</span></label>
					<select name="ie_product_id2" class="form-control js-products2">
						<option value="none">Chọn sản phẩm...</option>
						@foreach($products as $item)
						<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_product_id ?? 0) ==  $item->id ? "selected='selected'" : "" }}>Name : {{ $item->pro_name }}
							- Giá : {{ number_format($item->pro_price,0,',','.') }}
							- Số lượng : {{ $item->pro_number }}
							- Tổn tiền : {{ number_format($item->pro_price * $item->pro_number,0,',','.') }}
						</option>
						@endforeach
					</select>

				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Số lượng nhập <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control" id="qty2" required value="{{ old('ie_number',$invoiceEntered->ie_number ?? 1) }}" name="ie_number2" placeholder="10 ...">
				</div>
			</div>
			<div class="col-sm-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Giá nhập <span class="text-danger">(*)</span></label>
					<input type="number" required class="form-control js-money-input2" value="{{ old('ie_money',$invoiceEntered->ie_money ?? 0) }}" name="ie_money2" placeholder="10000 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Ngày sản xuất</label>
					<input type="date" class="form-control" name="nsx2">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Hạn sử dụng</label>
					<input type="date" class="form-control" name="hsd2">
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-10">
		<div class="row">
			<div class="col-md-4">
				<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
					<label for="name">Sản phẩm 3<span class="text-danger">(*)</span></label>
					<select name="ie_product_id3" class="form-control js-products3">
						<option value="none">Chọn sản phẩm...</option>
						@foreach($products as $item)
						<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_product_id ?? 0) ==  $item->id ? "selected='selected'" : "" }}>Name : {{ $item->pro_name }}
							- Giá : {{ number_format($item->pro_price,0,',','.') }}
							- Số lượng : {{ $item->pro_number }}
							- Tổn tiền : {{ number_format($item->pro_price * $item->pro_number,0,',','.') }}
						</option>
						@endforeach
					</select>

				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Số lượng nhập <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control" id="qty3" value="{{ old('ie_number3',$invoiceEntered->ie_number3 ?? 1) }}" name="ie_number3" placeholder="10 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Giá nhập <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control js-money-input3" value="{{ old('ie_money3',$invoiceEntered->ie_money3 ?? 0) }}" name="ie_money3" placeholder="10000 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Ngày sản xuất</label>
					<input type="date" class="form-control" name="nsx3">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Hạn sử dụng</label>
					<input type="date" class="form-control" name="hsd3">
				</div>
			</div>
		</div>
	</div>

	<!-- <div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">Số lượng nhập <span class="text-danger">(*)</span></label>
			<input type="number" class="form-control" id="qty" required value="{{ old('ie_number',$invoiceEntered->ie_number ?? 1) }}" name="ie_number" placeholder="10 ...">
		</div>
	</div> -->
	<!-- <div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">Gía nhập <span class="text-danger">(*)</span></label>
			<input type="number" required class="form-control js-money-input" value="{{ old('ie_money',$invoiceEntered->ie_money ?? 0) }}" name="ie_money" placeholder="10000 ...">
		</div>
	</div> -->
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">Thành tiền <span class="text-danger">(*)</span></label>
			<input type="text" disabled class="form-control" id="total_money" value="{{ number_format( 0,0,',','.') }} VNĐ" name="ie_money" placeholder="20.000.000">
		</div>
	</div>
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_total_money') ? 'has-error' : '' }}">
			<label for="name">Số tiền đã thanh toán <span class="text-danger">(*)</span></label>
			<input type="number" class="form-control" value="{{ $invoiceEntered->ie_the_advance ?? 0 }}" name="ie_the_advance" placeholder="20000 ...">
		</div>
	</div>
	<div class="col-sm-8">
		<div class="box-footer text-center">
			<a href="{{ route('admin.invoice_entered.index') }}" class="btn btn-danger">
				Quay lại <i class="fa fa-undo"></i></a>
			<button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
		</div>
	</div>
</form>