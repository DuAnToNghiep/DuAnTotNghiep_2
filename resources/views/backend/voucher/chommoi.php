@extends('backend.layouts.master')
@section('title', __('backend.Add New Voucher'))
@section('content')
    <form action="{{ route('admin.voucher.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-9">
                <div class="content-header">
                    <h2 class="content-title">{{ __('backend.Add New Voucher') }}</h2>
                    <div>
                        <button type="submit" class="btn btn-md rounded font-sm hover-up">{{ __('backend.Publish') }}</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-body">

                        <div class="mb-4">
                            <label class="form-label">{{ __('backend.Voucher Code') }}</label>
                            <input type="text" class="form-control @error('code') is-invalid @enderror" name="code"
                                   value="{{ old('code') }}"/>
                            @error('code')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label class="form-label">{{ __('backend.Description') }}</label>
                            <textarea placeholder="Type here"
                                      class="form-control @error('description') is-invalid @enderror" name="description"
                                      rows="4">{{ old('description') }}</textarea>
                            @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label class="form-label">{{ __('backend.Discount Value') }}</label>
                            <input type="number" placeholder="{{ __('Giá trị giảm giá (phần trăm hoặc số tiền)') }}" class="form-control @error('discount_value') is-invalid @enderror" name="discount_value"
                                   value="{{ old('discount_value') }}" step="0.01"/>
                            @error('discount_value')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label class="form-label">{{ __('backend.Start Date') }}</label>
                            <input type="date"  class="form-control @error('start_date') is-invalid @enderror" name="start_date"
                                   value="{{ old('start_date') }}"/>
                            @error('start_date')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label class="form-label">{{ __('backend.End Date') }}</label>
                            <input type="date" class="form-control @error('end_date') is-invalid @enderror" name="end_date"
                                   value="{{ old('end_date') }}"/>
                            @error('end_date')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label class="form-label">{{ __('backend.Usage Limit') }}</label>
                            <input type="number" placeholder="{{ __('Giới hạn số lần sử dụng') }}" class="form-control @error('usage_limit') is-invalid @enderror" name="usage_limit"
                                   value="{{ old('usage_limit') }}"/>
                            @error('usage_limit')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label class="form-label">{{ __('backend.Minimum Order Value') }}</label>
                            <input type="number" placeholder="{{ __('Giá trị đơn hàng tối thiểu để sử dụng voucher') }}" class="form-control @error('min_order_value') is-invalid @enderror" name="min_order_value"
                                   value="{{ old('min_order_value') }}" step="0.01"/>
                            @error('min_order_value')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="col-lg-3">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <div class="mb-4">
                                        <label class="form-label">{{ __('backend.Status') }}</label>
                                        <select class="form-select @error('status') is-invalid @enderror" name="status">
                                            <option value="active">{{ __('backend.Active') }}</option>
                                            <option value="inactive">{{ __('backend.Inactive') }}</option>
                                        </select>
                                        @error('status')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <hr>
                                </div>
                            </div> <!-- card end// -->
                        </div>

                    </div>
                </div> <!-- card end// -->
            </div>
        </div>
    </form>
@endsection
