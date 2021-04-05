<link href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.1.0/css/flag-icon.min.css" rel="stylesheet">
<script src="{{ URL::asset('assets/js/jquery.js') }}"></script>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-top">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ URL::to('/') }}">

                @if(getcong('site_logo')) <img src="{{ URL::asset('upload/'.getcong('site_logo')) }}"
                                               alt=""> @else {{getcong('site_name')}} @endif

            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-top">
            <ul class="nav navbar-nav navbar-right">
                <li class="{{classActivePathPublic('')}}"><a href="{{ URL::to('/') }}">{{ trans('messages.home') }}</a></li>
                <li class="{{classActivePathPublic('properties')}}"><a href="{{ URL::to('properties/') }}">{{ trans('messages.all_properties') }}</a></li>
                <li class="{{classActivePathPublic('featured')}}"><a href="{{ URL::to('featured/') }}">{{ trans('messages.features') }}</a></li>
                <li class="{{classActivePathPublic('sale')}}"><a href="{{ URL::to('sale/') }}">{{ trans('messages.sale') }}</a></li>
                <li class="{{classActivePathPublic('rent')}}"><a href="{{ URL::to('rent/') }}">{{ trans('messages.rent') }}</a></li>
                <li class="{{classActivePathPublic('agents')}}"><a href="{{ URL::to('agents/') }}">{{ trans('messages.agents') }}</a></li>
                <li class="{{classActivePathPublic('services')}}"><a href="{{ URL::to('services/') }}">{{ trans('messages.other_services') }}</a></li>
                <li>
                    <br>
                    <form action="{{ \Illuminate\Support\Facades\URL::to('/') }}" method="get"
                          id="change-lo"
                          enctype="multipart/form-data">
                        <select class="select2" name="locale" id="change-locale" style="color: black;">

                            @if(\Illuminate\Support\Facades\App::getLocale() == 'en')
                                <option data-content='<span class="flag-icon flag-icon-us"></span> English' value="en" selected>{{ ucfirst(trans('messages.en'))}}</option>
                                <option value="fr">{{ ucfirst(trans('messages.fr'))}}</option>
                            @else
                                <option value="en">{{ ucfirst(trans('messages.en'))}}</option>
                                <option value="fr" selected>{{ ucfirst(trans('messages.fr'))}}</option>
                            @endif
                        </select>
                    </form>

                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
</nav>
<!-- end:navbar -->


<script type="text/javascript">
    $(document).ready(function () {

        $('#change-locale').change(function () {
            $('#change-lo').submit();
        });
    });

    function go__bahasa() {
        location = document.pilih__bahasa.ipicked__bahasa.options[document.pilih__bahasa.ipicked__bahasa.selectedIndex].value
    }

</script>
