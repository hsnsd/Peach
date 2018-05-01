@extends('layouts.app')

@section('content')
    @foreach ( $products as $product)
        <h1>{{$product->Name}}<h1>
    @endforeach
@endsection