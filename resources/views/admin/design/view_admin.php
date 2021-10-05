<?php include 'header.php'; ?>



<div class="app-body">
	<main class="main-content">

		<div class="container-fluid mt-4">

			<div class="col-sm-12 col-12 bg-white p-0 p-4 border-bottom">
				<h3 class="font-weight-bold head"><img src="assets/img/logo.png" class="img-fluid" style="height: 40px;">&nbsp;&nbsp;All Admins</h3>
			</div>



			<div class="card mb-4 border-0">

				<div class="card-body">
					<div class="table-responsive">
						<table id="bs4-table" class="table table-bordered" cellspacing="0">
							<thead class="bgtable">
								<tr class="text-light">
									<th>SL.</th>
									<th>Name</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th>Image</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>01</td>
									<td>Shuvo</td>
									<td>Shuvo@gmail.com</td>
									<td>01811358602</td>
									<td>Feni</td>
									<td><img src=""></td>
									<td>
										<div class="dropdown ">
											<a href="#" class="btn btn-success text-light btn-sm border p-2 default-color dropdown-hover p-0 rounded-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												<span><i class="fa fa-cogs" aria-hidden="true"></i>&nbsp;&nbsp;Manage</span>
											</a>
											<div class="dropdown-menu ">
												<a class="dropdown-item text-dark" href="#"><i class="fa fa-edit pr-2"></i>Edit</a>
												<a class="dropdown-item text-dark" href="#"><i class="fa fa-trash  pr-2"></i>Delete</a>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>



				</div>
			</div>
		</div>


	</main>
</div>






<?php include 'footer.php'; ?>