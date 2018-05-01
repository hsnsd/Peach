@extends('layouts.app')

@section('content')

<section class="section-service-category-holder section-holder grey-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <h1> Pick the Gardening Services Trusted by Many in London </h1>

                                            <p class="visible-lg visible-md visible-sm hidden-xs title">The one-stop shop for all garden care services by Fantastic Gardeners</p>
                                    </div>
            </div>
            <div class="row service-types-holder">
                                                                                    
                                                                    <div class="col-md-3 col-sm-4 col-xs-6  service-type-item odd">
                            <a href="https://www.fantasticservices.com/garden-maintenance/">
                                <img style="width:70%" src="/service1.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <p>Garden Maintenance</p>
                            </a>
                        </div>
                                     
                                    
                                                                    <div class="col-md-3 col-sm-4 col-xs-6  service-type-item even">
                            <a href="https://www.fantasticservices.com/garden-clearance/">
                                <img style="width:70%" src="/service2.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <p>Garden Clearance</p>
                            </a>
                        </div>
                                     
                                    
                                                                    <div class="col-md-3 col-sm-4 col-xs-6  service-type-item odd">
                            <a href="https://www.fantasticservices.com/lawn-care/" >
                                <img style="width:70%" src="/service3.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <p>Lawn Care</p>
                            </a>
                        </div>
                                     
                                    
                                                                    <div class="col-md-3 col-sm-4 col-xs-6  service-type-item even">
                            <a href="https://www.fantasticservices.com/tree-surgery/">
                                <img style="width:70%" src="/service4.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <p>Tree Surgery</p>
                            </a>
                        </div>
                                     
                                    
                        
                                     
                            </div>
        </div>
    </section>
{{--
    <h1>{{$title}}</h1>
    @if(count($services) > 0)
        <ul class="list-group">
            @foreach($services as $service)
                <li class="list-group-item">{{$service}}</li>
            @endforeach
        </ul>
    @endif
    --}}
@endsection