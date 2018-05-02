@extends('layouts.app')

@section('content')

<div id="container">
<h1><b><font color="#F77143">Kitchen Gardening</font></b></h1>
<h3>A complete guide to make your own Kitchen Garden </h3>

<font size="4">
    {!! Form::open(['action' => 'SeedsController@store', 'method' =>'POST']) !!}
        <div class="form-group">
                {{ Form::label('a', 'Ready to be planted: ') }} 
                {{ Form::radio('ready', 'Yes') }} {{ Form::label('a', 'Yes') }}  
                {{ Form::radio('ready', 'All') }} {{ Form::label('name', 'All') }} 
                {{Form::submit('Filter', ['class'=>'btn bt-primary' , 'name' => 'submitbutton'])}}
        </div>
        
    {!! Form::close() !!}<br>
</font>
@if ($ready == 'All')
        
    @if(count($products) > 0)
        @foreach($products as $product)
            <div class="well">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <img style="width:40%" src="/{{$product->Photo}}">
                    </div>
                    <div class="col-md-0 col-sm-0">
                        <h3><a href="/seeds/{{$product->product_id}}">{{$product->Name}}</a></h3>
                            <p>Rs. {{$product->Unit_price}}</p>
                    </div>
                </div>
            </div>
        @endforeach

    @else
        <p>No posts found</p>
    @endif
@else
    @if(count($products) > 0)
        @foreach($products as $product)
            @if( App\Http\Controllers\SeedsController::getStatus($product->product_id)  == 'Yes')
                <div class="well">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <img style="width:40%" src="/{{$product->Photo}}">
                        </div>
                        <div class="col-md-0 col-sm-0">
                            <h3><a href="/seeds/{{$product->product_id}}">{{$product->Name}}</a></h3>
                                <p>Rs. {{$product->Unit_price}}</p>
                        </div>
                    </div>
                </div>
            @endif
        @endforeach
        @else
            <p>No posts found</p>
        @endif
@endif
</div>

@endsection
