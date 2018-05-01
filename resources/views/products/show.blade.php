@extends('layouts.app')

@section('content')
    @foreach ( $products as $product)
        <h1>{{$product->Name}}</h1>
          <div class="well">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <img style="width:70%" src="/{{$product->Photo}}">
                        </div>
                        <div class="col-md-0 col-sm-0">
                            <h3><a href="/products/{{$product->product_id}}">{{$product->Name}}</a></h3>
                            
                        </div>
                    </div>
                </div>
                <div class =well>
                <h2> Description</h2>
                 <br>
                 <p>This is a {{$product->plant_type}} plant and is {{$product->life}}</p> 
                 <p>Water this plant every {{$product->water}}</p>
                 <p>Keep this plant in {{$product->light}} Sun light</p>
                 
                </div>

    @endforeach

@endsection