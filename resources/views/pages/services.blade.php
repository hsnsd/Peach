@extends('layouts.app')

@section('content')

<section class="section-service-category-holder section-holder grey-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <h1><b><font color="#82C617"> Pick the Gardening Services Trusted by Many in Pakistan </font></b></h1>
<h3>The one-stop shop for all garden care services by Peach Blossom Gardeners</h3>
                </div>
            </div>
            <hr>
            <div class="row service-types-holder">
                                                                                    
                                                                    <div class="col-md-3 col-sm-4 col-xs-6  service-type-item odd">
                            <a href="https://www.fantasticservices.com/garden-maintenance/">
                                <img style="width:100%" src="/service1.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <h3><b>Garden Maintenance</b></h3>
                            </a>
                        </div>
                                     
                                    
                                                                    <div class="col-md-3 col-sm-4 col-xs-6  service-type-item even">
                            <a href="https://www.fantasticservices.com/garden-clearance/">
                                <img style="width:100%" src="/service2.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <h3><b>Garden Clearance</b></h3>
                            </a>
                        </div>
                                     
                                    
                                                                    <div class="col-md-3 col-sm-4 col-xs-6  service-type-item odd">
                            <a href="https://www.fantasticservices.com/lawn-care/" >
                                <img style="width:100%" src="/service3.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <h3><b>Lawn Care</b></h3>
                            </a>
                        </div>
                                     
                                    
                            <div class="col-md-3 col-sm-4 col-xs-6  service-type-item even">
                            <a href="https://www.fantasticservices.com/tree-surgery/">
                                <img style="width:100%" src="/service4.jpg">
                                <div class="hover"><span class="icon-eye"></span></div>
                                <h3><b>Tree Surgery</b></h3>
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