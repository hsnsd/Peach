@extends('layouts.app')

@section('content')
    @foreach ( $products as $product)
        
          <div class="well">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <img style="width:80%" src="/{{$product->Photo}}">
                        </div>
                        <div class="col-md-0 col-sm-0">
                            <font color="#F77143">
                            <h1><b>{{$product->Name}}</b></h1> </font>
                            <h3> Rs. {{$product->Unit_price}}</h3>
                           
                        </div>
                    </div>
                </div>
                <div class =well>
                <h2> Description</h2>
                 <br>

                 <p>{{$product->Name}} is locally known as {{$product->local_name}}</p> 
                 <p>The sowing method for this seed is to use {{$product->sowing_method}}</p>

                 <p><b>{{$status}}</b></p>

                 
                </div>

    @endforeach

@endsection