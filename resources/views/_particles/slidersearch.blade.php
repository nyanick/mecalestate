<!-- begin:header -->
    <div id="header" class="header-slide">
      <div class="container">
        <div class="row">
          <div class="col-md-5">
            <div class="quick-search">
              <div class="row">
                 
                 {!! Form::open(array('url' => array('searchproperties'),'name'=>'search_form','id'=>'search_form','role'=>'form')) !!}   
                   
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="form-group">
                      <label for="purpose">{{ trans('messages.purpose') }}</label>
                      <select class="form-control" name="purpose">
                      <option value="Sale">{{ trans('messages.for_sale') }}</option>
                        <option value="Rent">{{ trans('messages.for_rent') }}</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="minprice">{{ trans('messages.min_price') }}</label>
                      <input type="text" name="min_price" class="form-control" placeholder="10000"> 
                    </div>
                  </div>
                  <!-- break -->
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="form-group">
                      <label for="type">{{ trans('messages.type') }}</label>
                      <select class="form-control" name="type">
                        <option value="Room">{{ trans('messages.room') }}</option>
                        <option value="Studio">{{ trans('messages.studio') }}</option>
                        <option value="Apartment">{{ trans('messages.apartment') }}</option>
                        <option value="Villa">{{ trans('messages.villa') }}</option>
                        <option value="House">{{ trans('messages.house') }}</option>
                        <option value="Land">{{ trans('messages.land') }}</option>
                        <option value="Commercial">{{ trans('messages.commercial') }}</option>

                      </select>
                    </div>
                    <div class="form-group">
                      <label for="maxprice">{{ trans('messages.max_price') }}</label>
                      <input type="text" name="max_price" class="form-control" placeholder="1000000"> 
                    </div>
                  </div>
                  <div class="col-md-12 col-sm-12"><input type="submit" name="submit" value="{{ trans('messages.search') }}" class="btn btn-primary btn-lg btn-block"></div>

                {!! Form::close() !!} 
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end:header -->