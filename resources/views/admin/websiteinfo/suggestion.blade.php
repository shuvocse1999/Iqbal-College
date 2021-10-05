@extends('admin.index')
@section('content')



<div class="app-body">
	<main class="main-content">
		<div class="container-fluid p-0">
			<div class="col-sm-12 col-12 bg-white p-0 p-4 border-bottom">
				<h3 class="font-weight-bold head"><img src="{{ asset('public/admin') }}/assets/img/logo.png" class="img-fluid" style="height: 40px;">&nbsp;&nbsp;Suggestion</h3>
			</div>

			<div class="container-fluid mt-4">
				<div class="card mb-4 border-0">
					<div class="card-header">
						<div class="card-title">
							Suggestion
						</div>
					</div>
					<div class="card-body">
						<form method="post" action="{{ url('insertsuggestion') }}" enctype="multipart/form-data">

							@csrf

							<div class="row">

								<div class="form-group col-md-12">
									<label>Date :</label>
									<input type="date" name="date" class="form-control" placeholder="Date" required="">
								</div>


								<div class="form-group col-md-12">
									<label>Class Name :</label>
									<select class="form-control selecttextfill" id="option_s1" name="class_id">
										@php $class = DB::table('add_class')->get();  @endphp
										@if(isset($class))
										@foreach($class as $c)
										<option value="{{ $c->id }}">{{ $c->class_name }}</option>
										@endforeach
										@endif
									</select>
								</div>


								<div class="form-group col-md-12">
									<label>Title :</label>
									<input type="text" name="title" class="form-control" placeholder="Title" required="">
								</div>


								<div class="form-group col-md-12">
									<label>Image/Pdf File :</label>
									<input type="file" name="image" class="form-control" placeholder="Image" required="">
								</div>



							</div>

							<button type="submit" class="btn btn-success btn-sm"><i class="fa fa-plus-square" aria-hidden="true"></i>&nbsp;&nbsp;Save Info.</button>
						</form>
					</div>
				</div>
			</div>




			<div class="container-fluid mt-4">
				<div class="card mb-4 border-0">
					<div class="card-header">
						<div class="card-title">
							View Suggestion
						</div>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table id="bs4-table" class="table table-bordered" cellspacing="0">
								<thead class="bgtable">
									<tr class="text-light">
										<th>SL.</th>
										<th>Date</th>
										<th>Class Name</th>
										<th>Title</th>
										<th>Image/Pdf</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

									@php $i=0; @endphp

									@if(isset($view))
									@foreach($view as $v)
									@php $i+=1; @endphp

									<tr id="tr{{ $v->id }}">
										<td>{{ $i }}</td>
										<td>{{ $v->date }}</td>
										<td>{{ $v->class_name }}</td>
										<td>{{ $v->title }}</td>
										<td><a href="{{ url($v->image) }}" download="{{ $v->title }}" target="blank" class="btn btn-warning btn-sm">Download</a></td>
										<td>
											<div class="dropdown ">
												<a href="#" class="btn btn-success text-light btn-sm border p-2 default-color dropdown-hover p-0 rounded-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													<span><i class="fa fa-cogs" aria-hidden="true"></i>&nbsp;&nbsp;Manage</span>
												</a>
												<div class="dropdown-menu ">
													<a class="dropdown-item text-dark" href="{{ url('edit_suggestion/'. $v->id) }}"><i class="fa fa-edit pr-2"></i>Edit</a>

													<a class="dropdown-item text-dark delete" data-id="{{ $v->id }}"><i class="fa fa-trash  pr-2"></i>Delete</a>
												</div>
											</div>
										</td>
									</tr>

									@endforeach
									@endif




								</tbody>
							</table>
						</div>



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



	$(".delete").click(function(){
		var id = $(this).data("id");
		$.ajax(
		{
			url: "{{ url('deletesuggestion') }}/"+id,
			type: 'get',
			success: function ()
			{
				$('#tr'+id).hide();

				UIkit.notification({
					message: 'Data Delete Successfully Done',
					status: 'primary',
					pos: 'top-right',
					timeout: 2000
				});
			}
		});

	});





</script>



@endsection