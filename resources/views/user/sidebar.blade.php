
@php
$principle     = DB::table('principle_message')->first();
$viceprinciple = DB::table('viceprinciple_message')->first();
@endphp


@if(isset($principle))

<div class="col-sm-12 col-12 p-0">
 <ul class="list-group">
  <li class="list-group-item" id="featureheads">{{ $principle->title }}</li>
</ul>
<li class="list-group-item p-0 pt-2" id="padd">
  <a href="{{ url('Principle-message') }}"><center><img src="{{ url($principle->image) }}" class="img-fluid" style="max-height: 200px;"></center></a>
  <center><span class="head">{{ $principle->name }}<br><a href="{{ url('Principle-message') }}" class="details">Message...</a></span></center>
</li>
</div>

@endif



{{-- @if(isset($viceprinciple))

<div class="col-sm-12 col-12 p-0 mt-2">
 <ul class="list-group">
  <li class="list-group-item" id="featureheads">{{ $viceprinciple->title }}</li>
</ul>
<li class="list-group-item p-0 pt-2" id="padd">
  <a href="{{ url('Vice-principle-message') }}"><center><img src="{{ url($viceprinciple->image) }}" class="img-fluid" style="max-height: 200px;"></center></a>
  <center><span class="head">{{ $viceprinciple->name }}<br><a href="{{ url('Vice-principle-message') }}" class="details">Message...</a></span></center>
</li>
</div>

@endif
 --}}




@php 
$uselink = DB::table('usefull_link')->get();
@endphp


<div class="col-sm-12 col-12 p-0 mt-3" data-aos="fade-in" data-aos-duration="1000">
  <ul class="list-group">
   <li class="list-group-item" id="featureheads">গুরুত্বপূর্ণ লিংক</li>
 </ul>
 <div class="feature">

  @if($uselink)
  @foreach($uselink as $v)
  <a href="{{ $v->url }}" target="_blank"><li style='font-size:12px;'><span uk-icon="icon: triangle-right; ratio: 0.7"></span>&nbsp;&nbsp;{{ $v->title }}</li></a>
  @endforeach
  @endif

</div>
</div>






<div class="col-sm-12 col-12 p-0 mt-2">
 <ul class="list-group">
   <li class="list-group-item" id="featureheads">জরুরী হটলাইন</li>
 </ul> 
 <li class="list-group-item p-0 pt-2" id="padd">
  <center><a href="#"><img src="{{ asset('public/frontend/') }}/img/Hotline_BN.png" class="img-fluid"></a><br></center>

</li>

</div>



 
<div class="col-sm-12 col-12 p-0 mt-2">
 <ul class="list-group">
   <li class="list-group-item" id="featureheads">ডেঙ্গু প্রতিরোধে করণীয়</li>
   <li class="list-group-item p-0 pt-2" id="padd">
    <center><a href="#"><img src="{{ asset('public/frontend/') }}/img/dengu.jpg" class="img-fluid"></a><br></center>
    
  </li>
</ul> 
</div>




<div class="col-sm-12 col-12 p-0 mt-2">
 <ul class="list-group">
   <li class="list-group-item" id="featureheads">করোনাভাইরাস প্রতিরোধে</li>
   <li class="list-group-item p-0 pt-2" id="padd">
    <center><a href="#"><img src="{{ asset('public/frontend/') }}/img/c.jpg" class="img-fluid"></a><br></center>

    <div class="mt-2">
     <iframe width="100%" height="150" src="https://www.youtube.com/embed/GVPJHDp29tg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </div>

 </li>
</ul> 
</div>




<div class="col-sm-12 col-12 p-0 mt-2">
 <ul class="list-group">
   <li class="list-group-item" id="featureheads">করোনা ট্রেসার বিডি</li>
   <li class="list-group-item p-0 pt-2" id="padd">
    <center><a href="#"><img src="{{ asset('public/frontend/') }}/img/t.jpg" class="img-fluid"></a><br></center>
    
  </li>
</ul> 
</div>




<div class="col-sm-12 col-12 p-0 mt-2">
 <ul class="list-group">
   <li class="list-group-item" id="featureheads">বন্যার সময় কি করণীয়</li>
   <li class="list-group-item p-0 pt-2" id="padd">

    <div>
      <iframe width="100%" height="150" src="https://www.youtube.com/embed/GT9ShGE_qjg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    
  </li>
</ul> 
</div>


{{-- <div class="col-sm-12 col-12 p-0 mt-2">
 <ul class="list-group">
   <li class="list-group-item" id="featureheads">একদেশ</li>
   <li class="list-group-item p-0 pt-2" id="padd">
    <center><a href="#"><img src="{{ asset('public/frontend/') }}/img/a.jpg" class="img-fluid"></a><br></center>
    
  </li>
</ul> 
</div>

 --}}




<div class="col-sm-12 col-12 p-0 mt-3" data-aos="fade-in" data-aos-duration="1000">
 <ul class="list-group">
   <li class="list-group-item" id="featurehead">জাতীয় সংগীত</li>
   <audio class="mt-2 w-100" controls>
    <source src="{{ asset('public/frontend/') }}/img/bd_national_anthem.mp3" type="audio/ogg">
      <source src="{{ asset('public/frontend/') }}/img/bd_national_anthem.mp3" type="audio/mpeg">
      </audio>
    </ul>
  </div>

