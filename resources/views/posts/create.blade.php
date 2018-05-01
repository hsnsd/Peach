@extends('layouts.app')

@section('content')
    <h1>Create Post</h1>
    {!! Form::open(['action' => 'AdminController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
        <div class="form-group">
            {{Form::label('category_id', 'Product_ID')}}
            {{Form::text('product_id', '', ['class' => 'form-control'])}}
        </div>
        <div class="form-group">
                {{Form::label('name', 'Name')}}
                {{Form::text('name', '', ['class' => 'form-control'])}}
        </div>
        <div class="form-group">
                {{Form::label('name', 'Photo')}}

                {{Form::file('cover_image')}}
        </div>
        <div class="form-group">
                {{Form::label('category_id', 'Category_ID')}}
                {{Form::text('category_id', '', ['class' => 'form-control'])}}
        </div>
        <div class="form-group">
                    {{Form::label('Unit_price', 'Unit_Price')}}
                    {{Form::text('Unit_price', '', ['class' => 'form-control'])}}
        </div>
        <div class="form-group">
                {{Form::label('height', 'Height')}}
                {{Form::text('height', '', ['class' => 'form-control'])}}
        </div>
        <div class="form-group">
            {{Form::label('width', 'Width')}}
            {{Form::text('width', '', ['class' => 'form-control'])}}
        </div>
        <div class="form-group">
            {{Form::label('width', 'Light')}}
            {{ Form::select('light', ['Full', 'Partial', 'NoLight']) }}
        </div>
        <div class="form-group">
            {{Form::label('width', 'Water')}}
            {{ Form::select('water', ['1to2days', '2to3days', '6to7days']) }}
        </div>
        <div class="form-group">
            {{Form::label('width', 'Plant Type')}}
            {{ Form::select('plant_type', ['flower', 'leafyplant']) }}
        </div>
        <div class="form-group">
                {{Form::label('width', 'Life')}}
                {{ Form::select('life', ['seasonal', 'annual', 'evergreen']) }}
        </div>

        
        
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection