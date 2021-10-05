
@php
$setting  = DB::table('settings')->first();
@endphp

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>{{ $setting->name }}</title>
  <link rel="icon" href="{{ url($setting->image) }}" type="image/gif" sizes="16x16">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Baloo+Chettan+2:wght@500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.maateen.me/adorsho-lipi/font.css" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/') }}/css/uikit.min.css">
  <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/') }}/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/') }}/style.css">
  <link href="{{ asset('public/frontend/') }}/css/bootstrap-4-navbar.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">

  <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
  <link href="{{ asset('public/frontend/') }}/css/sliderResponsive.css" rel="stylesheet" type="text/css">


  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/jquery-3.3.1.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/main.js"></script>
  
</head>
<body>


  <div class="container">
    <div class="col-sm-12 col-12 bg-white pt-2">


     <div class="col-sm-12 col-12 topheader">
      <div class="row">
        <div class="col-sm-6 col-12 text-sm-left text-center">
          <label>PHONE:&nbsp;&nbsp;{{ $setting->phone }}</label>
        </div>
        <div class="col-sm-6 col-12 text-sm-right text-center">

          <li><a href="">Online Exam</a></li>
          <li><a href="">Online Admission</a></li>
          <li><a href="">Result</a></li>
          <li><a href="">Student Login</a></li>

        </div>
      </div>
    </div><!-------Top Header End------->





    @php
    $slider = DB::table('photo_gallery')->where('type','1')->limit(3)->get();
    $mobileslider = DB::table('photo_gallery')->where('type','1')->first();
    $mobileslidermore = DB::table('photo_gallery')->where('type','1')->skip(1)->limit(2)->get();
    @endphp


    <div class="col-sm-12 col-12 p-0">
      <div class="slider" id="slider1">
        @if(isset($slider))
        @foreach($slider as $s)
        <div style="background:linear-gradient(0deg, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url('{{ asset($s->image) }}'); background-position: center; background-size: cover;"></div>

        @endforeach
        @endif

        <span class="titleBar">
         <a href="{{ url('/') }}"><img src="{{ url($setting->image) }}" class="img-fluid rounded"></a>&nbsp;&nbsp;<span>{{ $setting->name }} <p style="padding-left: 78px;  margin-top: -25px;">EST - 1985</p></span><br>
       </span>
     </div>


     <div id="carouselExampleIndicators" class="carousel slide d-block d-sm-none" data-ride="carousel">
      <div class="carousel-inner">

        @if(isset($mobileslider))

        <div class="carousel-item active">
          <img src="{{ url($mobileslider->image) }}" class="d-block w-100">
        </div>

        @endif


        @if(isset($mobileslidermore))
        @foreach($mobileslidermore as $s)

        <div class="carousel-item">
          <img src="{{ url($s->image) }}" class="d-block w-100">
        </div>

        @endforeach
        @endif


      </div>

      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div><!-----End Mobile Slider------>


  </div><!-------End Slider----->











  <nav class="navbar navbar-expand-lg navbar-light btco-hover-menu menubar" style="background: #fff; border-bottom: 1px solid #e5e5e5; padding: 0px; box-shadow: 0 1px 5px -2px #999;">


    <a class="navbar-brand d-sm-none d-block" style="color: #000; font-weight: bold;" href="{{ url('/') }}">Menu</a>

    <button  class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" style="background-color: #f4f4f4; color: #fff; padding: 5px 10px;">
      <span class="navbar-toggler-icon" style="color: #fff;"></span>
    </button>



    <div class="collapse navbar-collapse " id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="{{ url('/') }}"><i class="fa fa-home" aria-hidden="true" style="font-size: 15px;"></i></a>
        </li>



        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            About us
          </a>
          <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

            <div class="col-md-12 col-12 dmenu mt-3">
             <li><a href="{{ url('About_institute') }}">About Institute</a></li>
             <li><a href="{{ url('Mission_vission') }}">Mission & Vision</a></li>
             <li><a href="{{ url('History') }}">History</a></li>
             <li><a href="{{ url('Citizen_charter') }}">Citizen Charter</a></li>
             <li><a href="{{ url('Student_info_chart') }}">Student Info. Chart</a></li>
             <li><a href="{{ url('Infrastructure') }}">Infrastructure</a></li>
             <li><a href="{{ url('Yearly_working_plan') }}">Yearly Working Plan</a></li>          
             <li><a href="{{ url('Contact_us') }}">Contact us</a></li>
           </div>
         </ul>
       </li> 





       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Administration
        </a>
        <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

          <div class="col-md-12 col-12 dmenu mt-3">
           <li><a href="{{ url('Principle-message') }}">Principle Message</a></li>
         {{-- <li><a href="{{ url('Vice-principle-message') }}">Vice-Principle Message</a></li>
         <li><a href="{{ url('Founder_Message') }}">Founder Message</a></li>
         <li><a href="{{ url('President_Message') }}">President Message</a></li> --}}
         <li><a href="{{ url('Managing_comittee') }}">Managing Comittee</a></li>
         <li><a href="{{ url('Chairman_list') }}">Chairman List</a></li>
         <li><a href="{{ url('Principle_list') }}">Principle List</a></li>
         <li><a href="{{ url('Donars_list') }}">Donar's List</a></li>
         <li><a href="{{ url('Ex_member_list') }}">Ex-Member's List</a></li>
       </div>
     </ul>
   </li> 


   <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Teacher & Staff
    </a>
    <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

      <div class="col-md-12 col-12 dmenu mt-3">
       <li><a href="{{ url('Teacher_info') }}">Teacher Info.</a></li>
       <li><a href="{{ url('Staff_info') }}">Staff Info.</a></li>
       <li><a href="{{ url('Ex_Teacher_info') }}">Ex-Teacher Info.</a></li>
       <li><a href="{{ url('Ex_Staff_info') }}">Ex-Staff Info.</a></li>
       <li><a href="{{ url('Guidline_teacher_staff') }}">Guidline for Teacher/Staff</a></li>
     </div>
   </ul>
 </li> 



 <li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Academic
  </a>
  <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

    <div class="col-md-12 col-12 dmenu mt-3">
      <li><a href="{{ url('Rules_regulation') }}">Rules & Regulation</a></li>
      <li><a href="{{ url('Academic_Calender') }}">Academic Calender</a></li>
      <li><a href="{{ url('Class_routine') }}">Class Routine</a></li>
      <li><a href="{{ url('Online_Classroutine') }}">Online Class Routine</a></li>
      <li><a href="{{ url('Book_list') }}">Book List</a></li>
      <li><a href="{{ url('Uniform') }}">Uniform</a></li>
      <li><a href="{{ url('Fees') }}">Fees</a></li>
      <li><a href="{{ url('Holiday_list') }}">Holiday List</a></li>
    </div>
  </ul>
</li> 




<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Admission
  </a>
  <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

    <div class="col-md-12 col-12 dmenu mt-3">
      <li><a href="{{ url('Prospects') }}">Prospects</a></li>
      <li><a href="{{ url('Admission_Rules') }}">Admission Rules</a></li>
      <li><a href="{{ url('Admission_Procedure') }}">Admission Procedure</a></li>
      <li><a href="{{ url('Admission_Result') }}">Admission Result</a></li>
      <li><a href="{{ url('Admission_Question') }}">Admission Test Question</a></li>
      <li><a href="{{ url('Transfer_Procedure') }}">Transfer Procedure</a></li>
    </div>
  </ul>
</li> 





{{-- 
<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Students Info.
  </a>


  <ul class="dropdown-menu bg-white" aria-labelledby="navbarDropdownMenuLink">
   <li><a class="dropdown-item dropdown-toggle" href="#">Six</a>
    <ul class="dropdown-menu bg-white">
      <li><a class="dropdown-item" href=""><span uk-icon="icon:  chevron-right; ratio: 0.8"></span>&nbsp;&nbsp;Commerce</a></li>

    </ul>
  </li>


</ul>
</li>
--}}




{{-- <li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Academic
  </a>
  <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

    <div class="col-md-12 col-12 dmenu mt-3">
     <li><a href="{{ url('Notices') }}">Notices</a></li>
     <li><a href="{{ url('Events') }}">Events</a></li>
     <li><a href="{{ url('Library_Info') }}">Library Info.</a></li>
     <li><a href="{{ url('Hostel_Info') }}">Hostel Info.</a></li>
   </div>
 </ul>
</li> 
--}}


<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Exam
  </a>
  <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

    <div class="col-md-12 col-12 dmenu mt-3">
     <li><a href="{{ url('Exam_rules') }}">Exam Rules</a></li>
     <li><a href="{{ url('Exam_routine') }}">Exam Routine</a></li>
     <li><a href="{{ url('Syllabas') }}">Syllabas</a></li>
     <li><a href="{{ url('Lesson_plan') }}">Lesson Plan</a></li>
     <li><a href="{{ url('Suggestion') }}">Suggestion</a></li>
   </div>
 </ul>
</li> 


<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Results
  </a>
  <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

    <div class="col-md-12 col-12 dmenu mt-3">
     <li><a href="{{ url('') }}">Internal Result</a></li>
     <li><a href="https://eboardresults.com/v2/home" target="blank">Public Result</a></li>
     <li><a href="{{ url('') }}">Govt. Scholarship Result</a></li>
   </div>
 </ul>
</li> 





<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Gallery
  </a>
  <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

    <div class="col-md-12 col-12 dmenu mt-3">
     <li><a href="{{ url('Photo_gallery') }}">Photo Gallery</a></li>
     <li><a href="{{ url('Video_gallery') }}">Video Gallery</a></li>
     <li><a href="{{ url('Magazine') }}">Magazine</a></li>
   </div>
 </ul>
</li> 




<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Co-curricular
  </a>
  <ul class="dropdown-menu pb-3 bg-white" aria-labelledby="navbarDropdownMenuLink">

    <div class="col-md-12 col-12 dmenu mt-3">
     <li><a  href="{{ url('Events') }}">Events</a></li>
     <li><a  href="{{ url('Sports') }}">Sports</a></li>
     <li><a  href="{{ url('Cultural_Activities') }}">Cultural Activities</a></li>
     <li><a  href="{{ url('Scouts') }}">Scouts</a></li>
     <li><a  href="{{ url('Girls_Guide') }}">Girls Guide</a></li>
     <li><a  href="{{ url('BNCC') }}">BNCC</a></li>
     <li><a  href="{{ url('Red_Crescent') }}">Red Crescent</a></li>
     <li><a  href="{{ url('Student_Cafinet') }}">Student Cafinet</a></li>
     <li><a  href="{{ url('Debate') }}">Debate</a></li>
     <li><a  href="{{ url('Language_Club') }}">Language Club</a></li>
     <li><a  href="{{ url('Study_Tour') }}">Study Tour</a></li>
     <li><a  href="{{ url('Science_Fair') }}">Science Fair</a></li>
     <li><a  href="{{ url('Computer_Club') }}">Computer Club</a></li>

   </div>
 </ul>
</li> 













</ul>

</div>
</nav>





</div>
</div><!-------------------End Container-------------------->







@yield('content')






<div class="container">

  <div class="col-sm-12 col-12 bg-white p-0 pt-5">
    <img src="{{ asset('public/frontend/') }}/img/footer_top_bg.png" class="img-fluid w-100">
  </div>


  <div class="col-sm-12 col-12 developerdiv">

    <center>
      <span class="develop">Copyright © 2021 Alhelalacademy. All Right Reserved.</span><br>
      <span class="develop">Developed by</span>&nbsp;&nbsp;<a href="#" class="it">SKILL BASED IT</a></center>

    </div>
    <!-----------end develop by---------->




  </div>





  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
  crossorigin="anonymous"></script>

  <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/bootstrap.min.js"></script>
  <script src="{{ asset('public/frontend/') }}/js/bootstrap-4-navbar.js"></script>
  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/jquery.nivo.slider.js"></script>
  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/uikit.min.js"></script>
  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/uikit-icons.min.js"></script>
  <script type="text/javascript" src="{{ asset('public/frontend/') }}/js/jquery.exzoom.js"></script>

  <script>
    AOS.init();      
    var preloader=document.getElementById('load');
    function myfunctions() {
      preloader.style.display='none';
    }

    $(document).ready(function() {
      $('#example').DataTable();
    } );


  </script>


  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="{{ asset('public/frontend/') }}/js/sliderResponsive.js"></script>




  <script>
    $(document).ready(function() {

      $("#slider1").sliderResponsive({
  // Using default everything
    // slidePause: 5000,
    // fadeSpeed: 800,
    // autoPlay: "on",
    // showArrows: "off", 
    // hideDots: "off", 
    // hoverZoom: "on", 
    // titleBarTop: "off"
  });

      $("#slider2").sliderResponsive({
        fadeSpeed: 300,
        autoPlay: "off",
        showArrows: "on",
        hideDots: "on"
      });

      $("#slider3").sliderResponsive({
        hoverZoom: "off",
        hideDots: "on"
      });

    }); 
  </script>


  <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js" type="text/javascript" ></script>

  <script type="text/javascript">
    $(document).ready(function() {
      $('#example').DataTable();
    } );
  </script>
  


</body>
</html>