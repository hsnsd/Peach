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
                 <p>This is a {{$product->plant_type}} and is {{$product->life}}</p> 
                 <p>Height  {{$product->height}}ft Width  {{$product->width}}ft </p>
                 <p>Water this plant every {{$product->water}}</p>
                 <p>Keep this plant in {{$product->light}} Sun light</p>
                 
                </div>

    @endforeach

@endsection