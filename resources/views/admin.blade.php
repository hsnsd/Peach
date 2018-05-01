@extends('layouts.app')

@section('content')
@if ($user_id == 4) {{--admin id is 4--}}

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Admin Dashboard</div>

                    <div class="panel-body">
                        <a href="/admin/create" class="btn btn-primary">Create Product</a>
                        <h3>Current Products</h3>
                        
                        @if(count($products) > 0)
                            <table class="table table-striped">
                                <tr>
                                    <th>Title</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                @foreach($products as $product)
                                    <tr>
                                        <td>{{$product->Name}}</td>
                                        <td></td>
                                        <td>
                                            {!!Form::open(['action' => ['AdminController@destroy', $product->product_id], 'method' => 'POST', 'class' => 'pull-right'])!!}
                                                {{Form::hidden('_method', 'DELETE')}}
                                                {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                                            {!!Form::close()!!}
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        @else
                            <p>You have no posts</p>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    
@else
    <script type="text/javascript">
        window.location = '/products';//here double curly bracket
    </script>
    
    

    
@endif
@endsection
