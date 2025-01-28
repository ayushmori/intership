@extends('layouts.admin')

@section('title','Color Setting')

@section('content')
<div class="row">
    <div class="col-md-12 grid-margin">
        @if(session('message'))
            <div class="alert alert-success mb-3">{{ session('message') }}</div>
        @endif

        <!-- Form to change header and footer colors -->
        <form action="{{ route('admin.setting.colors.save') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="header_color">Header Color:</label>
                <input type="text" name="header_color" value="{{ old('header_color', $settings->header_color) }}" class="form-control">
                @error('header_color') <div class="error">{{ $message }}</div> @enderror
            </div>

            <div class="form-group">
                <label for="footer_color">Footer Color:</label>
                <input type="text" name="footer_color" value="{{ old('footer_color', $settings->footer_color) }}" class="form-control">
                @error('footer_color') <div class="error">{{ $message }}</div> @enderror
            </div>

            <button type="submit" class="btn btn-primary">Save Colors</button>
        </form>
    </div>
</div>
@endsection
