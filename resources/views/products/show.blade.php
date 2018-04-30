@extends('layouts.app')

@section('content')
    @foreach ( $products as $product)
        <h1>{{$product->name}}<h1>
    @endforeach
@endsection