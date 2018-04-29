@extends('layouts.app')

@section('content')
    <h1>Products</h1>
    @if(count($products) > 0)
        @foreach($products as $product)
            <div class="well">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <img style="width:40%" src="/{{$product->photo}}">
                    </div>
                    <div class="col-md-2 col-sm-2">
                        <h3><a href="/products/{{$product->id}}">{{$product->name}}</a></h3>
                        <small> {{$product->description}}</small>
                    </div>
                </div>
            </div>
        @endforeach
    @else
        <p>No posts found</p>
    @endif

@endsection

