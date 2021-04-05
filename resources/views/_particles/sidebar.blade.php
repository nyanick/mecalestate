<div class="col-md-3 col-md-pull-9 sidebar">
            <div class="widget widget-white">
              <div class="widget-header">
                <h3>{{ trans('messages.advance_search') }}</h3>
              </div>    
               
              {!! Form::open(array('url' => array('searchproperties'),'class'=>'advance-search','name'=>'search_form','id'=>'search_form','role'=>'form')) !!}   
                <div class="form-group">
                      <label for="purpose">{{ trans('messages.purpose') }}</label>
                      <select class="form-control" name="purpose">
                        <option value="Sale">{{ trans('messages.for_sale') }}</option>
                        <option value="Rent">{{ trans('messages.for_rent') }}</option>
                      </select>
               </div>
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
                      <label for="minprice">{{ trans('messages.min_price') }}</label>
                      <input type="text" name="min_price" class="form-control" placeholder="Min Price (number)"> 
                </div>
                <div class="form-group">
                      <label for="maxprice">{{ trans('messages.max_price') }}</label>
                      <input type="text" name="max_price" class="form-control" placeholder="Max Price (number)"> 
                    </div>
                
                <input type="submit" name="submit" value="{{ trans('messages.search') }}" class="btn btn-primary btn-block">
              {!! Form::close() !!}
            </div>
            <!-- break -->
            <div class="widget widget-sidebar widget-white">
              <div class="widget-header">
                <h3>{{ trans('messages.property_type') }}</h3>
              </div>    
              <ul class="list-check">
                <li><a href="{{URL::to('type/Room')}}">{{ trans('messages.room') }}</a>&nbsp;({{countPropertyType('Room')}})</li>
                <li><a href="{{URL::to('type/Studio')}}">{{ trans('messages.studio') }}</a>&nbsp;({{countPropertyType('Studio')}})</li>
                <li><a href="{{URL::to('type/Apartment')}}">{{ trans('messages.apartment') }}</a>&nbsp;({{countPropertyType('Apartment')}})</li>
                <li><a href="{{URL::to('type/Villa')}}">{{ trans('messages.villa') }}</a>&nbsp;({{countPropertyType('Villa')}})</li>
                <li><a href="{{URL::to('type/House')}}">{{ trans('messages.house') }}</a>&nbsp;({{countPropertyType('House')}})</li>
                <li><a href="{{URL::to('type/Land')}}">{{ trans('messages.land') }}</a>&nbsp;({{countPropertyType('Land')}})</li>
                <li><a href="{{URL::to('type/Commercial')}}">{{ trans('messages.commercial') }}</a>&nbsp;({{countPropertyType('Commercial')}})</li>                
              </ul>
            </div>
            <!-- break -->
          </div>