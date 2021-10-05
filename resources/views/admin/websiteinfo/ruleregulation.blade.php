@extends('admin.index')
@section('content')


<div class="app-body">
	<main class="main-content">
		<div class="container-fluid p-0">
			<div class="col-sm-12 col-12 bg-white p-0 p-4 border-bottom">
				<h3 class="font-weight-bold head"><img src="{{ asset('public/admin') }}/assets/img/logo.png" class="img-fluid" style="height: 40px;">&nbsp;&nbsp;Rules & Regulation</h3>
			</div>

			<div class="container-fluid mt-4">
				<div class="card mb-4 border-0">
					<div class="card-header">
						<div class="card-title">
							Rules & Regulation
						</div>
					</div>
					<div class="card-body">
						<form method="post" action="" class="btn-submit" data-id="{{ $view->id }}">
							<div class="row">

								<div class="form-group col-md-12">
									<label>Title :</label>
									<textarea rows="3" name="title" class="form-control" placeholder="Title">{{ $view->title }}</textarea>
								</div>

								<div class="form-group col-md-12">
									<label>Details :</label>
									<textarea  id="summernote" class="form-control" name="details">{{ $view->details }}</textarea>
								</div>

							</div>


						
							<button type="submit" class="btn btn-success btn-sm button">Update</button>
							<button type="button" class="btn btn-success btn-sm loading">Loading...</button>
						</form>
					</div>
				</div>
			</div>




		</div>
	</main>
</div>



<script type="text/javascript">

	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		}
	});


	function getdata(){
		$.ajax({
			url:"{{ url('getrulesregulation') }}",
			method:'get',
			data:data,
			success:function(){


			},
		});



	}


	$('.loading').hide();
	$(".btn-submit").submit(function(e){
		e.preventDefault();

		var data = $(this).serialize();
		var id = $(this).data("id");

		$.ajax({
			url:"{{ url('updateruleregulation') }}/"+id,
			method:'POST',
			data:data,

			beforeSend:function(response) { 

				$('.loading').show();
				$('.button').hide();

			},


			success:function(response){

				UIkit.notification({
					message: 'Data Update Successfully Done',
					status: 'primary',
					pos: 'top-right',
					timeout: 2000
				});
				$('.loading').hide();
				$('.button').show();

				getdata();

			},


			error:function(error){
				console.log(error)
			}
		});
	});




</script>



@endsection