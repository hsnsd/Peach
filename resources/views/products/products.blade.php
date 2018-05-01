@extends('layouts.app')

@section('content')

<div id="container">

<h1><b><font color="#F77143"> Buy the correct plants without stepping out of your home! </font></b></h1>

        {!! Form::open(['action' => 'ProductsController@store', 'method' =>'POST']) !!}
            <div class="form-group">
                    {{ Form::label('a', 'Water Requirements: ') }} 
                    {{ Form::radio('water_type', '1 to 2 days') }} {{ Form::label('a', '1 to 2 days') }}  
                    {{ Form::radio('water_type', '2 to 3 days') }} {{ Form::label('name', '2 to 3 days') }} 
                    {{ Form::radio('water_type', '6 to 7 days') }} {{ Form::label('name', '6 to 7 days') }} 

            </div>
            <div class="form-group">
                    {{ Form::label('a', 'Light Requirements: ') }} 
                    {{ Form::radio('light_type', 'Full') }} {{ Form::label('a', 'Full') }}  
                    {{ Form::radio('light_type', 'Partial') }} {{ Form::label('name', 'Partial') }}
                    {{ Form::radio('light_type', 'No Light') }} {{ Form::label('name', 'No Light') }}

            </div>
            <div class="form-group">
                    {{ Form::label('a', 'Plant Life: ') }} 
                    {{ Form::radio('life_type', 'seasonal') }} {{ Form::label('a', 'Seasonal') }}  
                    {{ Form::radio('life_type', 'annual') }} {{ Form::label('name', 'Annual') }} 
                    {{ Form::radio('life_type', 'evergreen') }} {{ Form::label('name', 'Evergreen') }} 

            </div>
            
            {{Form::submit('Filter', ['class'=>'btn bt-primary' , 'name' => 'submitbutton'])}}
            {{Form::submit('Clear', ['class'=>'btn bt-primary', 'name' => 'submitbutton'])}}


        {!! Form::close() !!}

        <h1>Products</h1>
        @if(count($products) > 0)
            @foreach($products as $product)
                <div class="well">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <img style="width:40%" src="/{{$product->Photo}}">
                        </div>
                        <div class="col-md-0 col-sm-0">
                            <h3><a href="/products/{{$product->product_id}}">{{$product->Name}}</a></h3>
                             <p>Rs. {{$product->Unit_price}}</p>
                        </div>
                    </div>
                </div>
            @endforeach

        @else
            <p>No posts found</p>
        @endif
</div>

@endsection
