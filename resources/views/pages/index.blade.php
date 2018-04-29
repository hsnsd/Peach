@extends('layouts.app')

@section('content')
    <div class="jumbotron text-center"  style="background-color:#FF875E">
        <font color="white">
<h1>Welcome To Peach Blossom!</h1>
        <p>Beautify your house with PeachBlossom. Discover all the colors of nature that suits your garden</p>
        <p><a class="btn btn-primary btn-lg" href="/login" role="button">Login</a> <a class="btn btn-success btn-lg" href="/register" role="button">Register</a></p>
    </font>
    </div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
      
        <!-- Wrapper for slides -->
        

        <div class="carousel-inner">
          <div class="item active">
            <img src="makeover1.jpg" alt="Chania">
            <div class="carousel-caption">
              <h1> MakeOver on a Budget</h1>
              <h2> Get a cool makeover for your garden!</h2>
            </div>
          </div>
      
          <div class="item">
                <img src="vegetable1.jpg" alt="New York">
                <div class="carousel-caption">                   
                    <font color='white'><h1>Daily Fresh Fruits</h1>
                  <h2>Make your own kitchen garden and enjoy fresh and healthy food</h2></font>               
                </div>
              </div>

          <div class="item">
            <img src="tools.jpg" alt="Chicago">
            <div class="carousel-caption">
             <b> <h1>Get all the gardening accessories</h1>
              <h2>No need to run to shops to search for different tools! All are available under the roof of PeachBlossom</h2>
             </b>
            </div>
          </div>
      
          <div class="item">
            <img src="flower1.jpg" alt="New York">
            <div class="carousel-caption">
                <div class="sidebar text-center"  style="background-color:#FF875E">
                <font color='white'><h1>Buy The Correct Plants</h1>
              <h2>See which plants will survive at your location! 
                  Know how to care for your plants</h2></font>
            </div>
            </div>
          </div>
        </div>
      
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    @endsection
