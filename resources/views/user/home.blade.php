@extends('user.index')
@section('content')


<div class="container">


  <div class="col-sm-12 col-12" id="mainpage">
    <div class="row">

      <div class="col-sm-9 col-12">
        <div class="col-sm-12 col-12 p-0 govtnews">
         <a href="https://www.youtube.com/watch?v=317_54bDctA" target="_blank"> <img src="{{ asset('public/frontend/') }}/img/sekh.jpeg" class="img-fluid"> </a>
         <marquee scrollamount="5" onmouseover="this.stop();"onmouseout="this.start();">
          <div class="mt-2">
           নো মাস্ক নো সার্ভিস। করোনাভাইরাসের বিস্তার রোধে এখনই ডাউনলোড করুন Corona Tracer BD অ্যাপ। ডাউনলোড করতে ক্লিক করুন <a href="https://bit.ly/coronatracerbd">https://bit.ly/coronatracerbd</a> । নিজে সুরক্ষিত থাকুন অন্যকেও নিরাপদ রাখুন। দেশের প্রথম ক্রাউডফান্ডিং প্ল্যাটফর্ম 'একদেশ'- এর মাধ্যমে আর্থিক অনুদান পৌঁছে দিন নির্বাচিত সরকারি-বেসরকারি প্রতিষ্ঠানসমূহে। ভিজিট করুন <a href="https://ekdesh.ekpay.gov.bd">https://ekdesh.ekpay.gov.bd</a> অথবা “Ek Desh” অ্যাপ ডাউনলোড করুন। করোনার লক্ষণ দেখা দিলে গোপন না করে ডাক্তারের পরামর্শের জন্য ফ্রি কল করুন ৩৩৩ ও ১৬২৬৩ নম্বরে। করোনাভাইরাস প্রতিরোধে নিয়ম মেনে মাস্ক ব্যবহার করুন। আতঙ্কিত না হয়ে বরং সচেতন থাকুন। ভিজিট করুন <a href="https://corona.gov.bd">https://corona.gov.bd</a>
         </div>
       </marquee>
     </div><!-------------End News---------->





     <div class="col-sm-12 col-12 mt-3 p-0 pb-2 cnotice">
      <div class="row">
        <div class="col-md-2 col-12 d-sm-block d-none">
         <img src="{{ asset('public/frontend/') }}/img/notice.png" class="img-fluid">
       </div>

       <div class="col-md-10 col-11 pt-3 p-4">
        <span>NOTICE BOARD</span><br>

        <div class="mt-3">

          @if(isset($noticeview))
          @foreach($noticeview as $notices)

          <li><i class="fa fa-caret-right" aria-hidden="true"></i>&nbsp;&nbsp;<a href="{{ asset('notice-view') }}/{{ $notices->id }}" >{{ $notices->title }}</a></li>

          @endforeach
          @endif

        </div>

        <div class="">
          <a href="{{ url('/Notices') }}" class="float-right all">সকল</a>
        </div>


      </div>
    </div>

  </div><!-------------End Notice---------->




  <div class="col-md-12 col-12 p-0 mt-3 about">
    <ul class="list-group p-0">
      <li class="list-group-item" id="header">About Institute</li>
      <div class="details2 p-2 border">
       {!! $about->About_Massage !!}
     </div>

   </ul>
 </div>




 <div class="col-sm-12 col-12 p-0">
  <div class="row">




    <div class="col-sm-6 col-12 ">
     <div class="col-sm-12 col-12 pt-3 pb-2" id="cart" data-aos="fade-in" data-aos-duration="1000" >
      <p class="session">&nbsp;&nbsp;About us</p>
      <div class="row">
        <div class="col-sm-3 col-3">
          <img src="{{ asset('public/frontend/') }}/img/1.jpg" class="img-fluid" id="iconss">         
        </div>

        <div class="col-sm-9 col-9 p-0">
          <ul class="menus">
            <li><i class="fa fa-caret-right"></i><a href="{{ url('About_institute') }}">About Institute</a></li>
            <li><i class="fa fa-caret-right"></i><a href="{{ url('Mission_vission') }}">Mission & Vision</a></li>
            <li><i class="fa fa-caret-right"></i><a href="{{ url('History') }}">History</a></li>
            <li><i class="fa fa-caret-right"></i><a href="{{ url('Contact_us') }}">Contact us</a></li>

          </ul>              
        </div>            
      </div>        
    </div>  
  </div><!-------------------------End Card----------------------->





  <div class="col-sm-6 col-12 ">
   <div class="col-sm-12 col-12 pt-3 pb-2" id="cart" data-aos="fade-in" data-aos-duration="1000" >
    <p class="session">&nbsp;&nbsp;Administration</p>
    <div class="row">
      <div class="col-sm-3 col-3">
        <img src="{{ asset('public/frontend/') }}/img/2.jpg" class="img-fluid" id="iconss">         
      </div>

      <div class="col-sm-9 col-9 p-0">
        <ul class="menus">
          <li><i class="fa fa-caret-right"></i><a href="{{ url('Principle-message') }}">Principle Message</a></li>
          <li><i class="fa fa-caret-right"></i><a href="{{ url('Vice-principle-message') }}">Vice-Principle Message</a></li>
          <li><i class="fa fa-caret-right"></i><a href="{{ url('Founder_Message') }}">Founder Message</a></li>
          <li><i class="fa fa-caret-right"></i><a href="{{ url('President_Message') }}">President Message</a></li>

        </ul>              
      </div>            
    </div>        
  </div>  
</div><!-------------------------End Card----------------------->





<div class="col-sm-6 col-12 ">
 <div class="col-sm-12 col-12 pt-3 pb-2" id="cart" data-aos="fade-in" data-aos-duration="1000" >
  <p class="session">&nbsp;&nbsp;Teacher & Staff</p>
  <div class="row">
    <div class="col-sm-3 col-3">
      <img src="{{ asset('public/frontend/') }}/img/3.jpg" class="img-fluid" id="iconss">         
    </div>

    <div class="col-sm-9 col-9 p-0">
      <ul class="menus">
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Teacher_info') }}">Teacher Info.</a></li>
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Staff_info') }}">Staff Info.</a></li>
     </ul>              
   </div>            
 </div>        
</div>  
</div><!-------------------------End Card----------------------->



<div class="col-sm-6 col-12 ">
 <div class="col-sm-12 col-12 pt-3 pb-2" id="cart" data-aos="fade-in" data-aos-duration="1000" >
  <p class="session">&nbsp;&nbsp;Academic</p>
  <div class="row">
    <div class="col-sm-3 col-3">
      <img src="{{ asset('public/frontend/') }}/img/4.jpg" class="img-fluid" id="iconss">         
    </div>

    <div class="col-sm-9 col-9 p-0">
      <ul class="menus">
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Notices') }}">Notices</a></li>
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Events') }}">Events</a></li>
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Library_Info') }}">Library Info.</a></li>
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Hostel_Info') }}">Hostel Info.</a></li>
     </ul>              
   </div>            
 </div>        
</div>  
</div><!-------------------------End Card----------------------->





<div class="col-sm-6 col-12 ">
 <div class="col-sm-12 col-12 pt-3 pb-2" id="cart" data-aos="fade-in" data-aos-duration="1000" >
  <p class="session">&nbsp;&nbsp;Exam Info.</p>
  <div class="row">
    <div class="col-sm-3 col-3">
      <img src="{{ asset('public/frontend/') }}/img/5.jpg" class="img-fluid" id="iconss">         
    </div>

    <div class="col-sm-9 col-9 p-0">
      <ul class="menus">
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Exam_rule') }}">Exam Rules</a></li>
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Exam_routine') }}">Exam Routine</a></li>
     </ul>              
   </div>            
 </div>        
</div>  
</div><!-------------------------End Card----------------------->


<div class="col-sm-6 col-12 ">
 <div class="col-sm-12 col-12 pt-3 pb-2" id="cart" data-aos="fade-in" data-aos-duration="1000" >
  <p class="session">&nbsp;&nbsp;Results</p>
  <div class="row">
    <div class="col-sm-3 col-3">
      <img src="{{ asset('public/frontend/') }}/img/6.jpg" class="img-fluid" id="iconss">         
    </div>

    <div class="col-sm-9 col-9 p-0">
      <ul class="menus">
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Internal_result') }}">Internal Result</a></li>
       <li><i class="fa fa-caret-right"></i><a href="https://eboardresults.com/v2/home" target="blank">Public Result</a></li>
     </ul>              
   </div>            
 </div>        
</div>  
</div><!-------------------------End Card----------------------->




<div class="col-sm-6 col-12 ">
 <div class="col-sm-12 col-12 pt-3 pb-2" id="cart" data-aos="fade-in" data-aos-duration="1000" >
  <p class="session">&nbsp;&nbsp;Others</p>
  <div class="row">
    <div class="col-sm-3 col-3">
      <img src="{{ asset('public/frontend/') }}/img/7.jpg" class="img-fluid" id="iconss">         
    </div>

    <div class="col-sm-9 col-9 p-0">
      <ul class="menus">
       <li><i class="fa fa-caret-right"></i><a href="{{ url('Internal_result') }}">Internal Result</a></li>
       <li><i class="fa fa-caret-right"></i><a href="https://eboardresults.com/v2/home" target="blank">Public Result</a></li>
     </ul>              
   </div>            
 </div>        
</div>  
</div><!-------------------------End Card----------------------->








</div>  
</div>
</div><!-------------End Mainpage----------->





<div class="col-sm-3 col-12">

  @include('user.sidebar')

</div>


</div>   
</div><!-----------------------End sidebar---------------------->



</div><!-------End Container----------->




@endsection