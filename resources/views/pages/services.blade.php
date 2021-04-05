@extends("app")

@section('head_title', 'Agents | '.getcong('site_name') )
@section('head_url', Request::url())

@section("content")
<!-- begin:header -->
    <div id="header" class="heading" style="background-image: url({{ URL::asset('assets/img/img01.jpg') }});">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="page-title">
              <h2>Agents</p>
            </div>
            <ol class="breadcrumb">
              <li><a href="{{ URL::to('/') }}">Home</a></li>
              <li class="active">Services</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <!-- end:header -->
<!-- begin:content -->
    <div id="content">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="blog-container">
              <div class="blog-content">
                
                <!-- Section: Blog v.2 -->
                <section class="text-center my-5">

                  <!-- Section heading -->
                  <h2 class="h1-responsive font-weight-bold my-5">{{ trans('messages.general_service') }}</h2>
                  <!-- Section description -->
                  <p class="dark-grey-text w-responsive mx-auto mb-5">{{ trans('messages.service_note') }}.</p>

                  <!-- Grid row -->
                  <div class="row">

                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">

                      <!-- Featured image -->
                      <div class="view overlay rounded z-depth-2 mb-4">
                        <img class="img-fluid" src="{{ URL::to('/assets/img/construction.jpg') }}" alt="Sample image" width="360" height="400">
                        <a>
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>

                      <!-- Category -->
                      <a href="#!" class="pink-text">
                        <h4 class="font-weight-bold mb-3"><i class="fas fa-map pr-2"></i>Building, Construction & Repairs</h4>
                      </a>
                      <!-- Post title -->
                      

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">

                      <!-- Featured image -->
                      <div class="view overlay rounded z-depth-2 mb-4">
                        <img class="img-fluid" src="{{ URL::to('/assets/img/painter.jpg') }}"alt="Sample image" width="360" height="400">
                        <a>
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>

                      <!-- Category -->
                      <a href="#!" class="pink-text">
                        <h4 class="font-weight-bold mb-3"><i class="fas fa-map pr-2"></i>Painting</h4>
                      </a>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">

                      <!-- Featured image -->
                      <div class="view overlay rounded z-depth-2 mb-4">
                        <img class="img-fluid" src="{{ URL::to('/assets/img/plomber.jpg') }}" alt="Sample image" width="360" height="400">
                        <a>
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>

                      <!-- Category -->
                      <a href="#!" class="deep-orange-text">
                        <h4 class="font-weight-bold mb-3"><i class="fas fa-map pr-2"></i>Plombing</h6>
                      </a>
                    </div>


                  </div>
                  <!-- Grid row -->

                  <div class="row">


                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">

                      <!-- Featured image -->
                      <div class="view overlay rounded z-depth-2 mb-4">
                        <img class="img-fluid" src="{{ URL::to('/assets/img/electrician.jpg') }}"alt="Sample image" width="360" height="400">
                        <a>
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>

                      <!-- Category -->
                      <a href="#!" class="pink-text">
                        <h4 class="font-weight-bold mb-3"><i class="fas fa-map pr-2"></i>Electricity</h4>
                      </a>
                    </div>


                  </div>
                  <!-- Grid row -->

                </section>
                <!-- Section: Blog v.2 -->

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end:content -->
 
@endsection
