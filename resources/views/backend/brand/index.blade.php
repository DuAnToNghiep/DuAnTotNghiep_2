@extends('backend.layouts.master')
@section('title', __('backend.Brand List'))

@section('content')
    <div class="content-header">
        <div>
            <h2 class="content-title card-title">{{ __('backend.Brand List') }} </h2>
        </div>
        @can('create brand management')
        <div>
            <a href="{{route('admin.brand.create')}}" class="btn btn-primary btn-sm rounded">{{ __('backend.Create new') }}</a>
        </div>
        @endcan
    </div>
    <div class="card mb-4">
        <div class="card-body">
            <div class="table-responsive">
                {{ $dataTable->table() }}
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    {{ $dataTable->scripts(attributes: ['type' => 'module']) }}
@endpush
