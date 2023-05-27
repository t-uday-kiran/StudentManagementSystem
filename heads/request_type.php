<?php include('includes/header.php')?>
<?php include('../includes/session.php')?>

<?php 
	 if (isset($_GET['delete'])) {
		$request_type_id = $_GET['delete'];
		$sql = "DELETE FROM tblrequesttype where id = ".$request_type_id;
		$result = mysqli_query($conn, $sql);
		if ($result) {
			echo "<script>alert('RequestType deleted Successfully');</script>";
     		echo "<script type='text/javascript'> document.location = 'request_type.php'; </script>";
			
		}
	}
?>

<?php
 if(isset($_POST['add']))
{
	 $requesttype=$_POST['requesttype'];
	 $description=$_POST['description'];
	 $dtefrom=date('d-m-Y', strtotime($_POST['date_from']));
	 $dteto=date('d-m-Y', strtotime($_POST['date_to']));

     $query = mysqli_query($conn,"select * from tblrequesttype where RequestType = '$requesttype'")or die(mysqli_error());
	 $count = mysqli_num_rows($query);
     
     if ($count > 10000){ 
     	echo "<script>alert('RequestType Already exist');</script>";
      }
      else{
        $query = mysqli_query($conn,"insert into tblrequesttype (RequestType, Description, date_from, date_to)
  		 values ('$requesttype', '$description', '$dtefrom', '$dteto')      
		") or die(mysqli_error()); 

		if ($query) {
			echo "<script>alert('RequestType Added');</script>";
			echo "<script type='text/javascript'> document.location = 'request_type.php'; </script>";
		}
    }

}

?>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo"><img src="../vendors/images/deskapp-logo-svg.png" alt=""></div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">
				Loading...
			</div>
		</div>
	</div>

	<?php include('includes/navbar.php')?>

	<?php include('includes/right_sidebar.php')?>

	<?php include('includes/left_sidebar.php')?>

	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
					<div class="page-header">
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="title">
									<h4>Request Type List</h4>
								</div>
								<nav aria-label="breadcrumb" role="navigation">
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="admin_dashboard.php">Dashboard</a></li>
										<li class="breadcrumb-item active" aria-current="page">Request Type Module</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-4 col-md-6 col-sm-12 mb-30">
							<div class="card-box pd-30 pt-10 height-100-p">
								<h2 class="mb-30 h4">New Request Type</h2>
								<section>
									<form name="save" method="post">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label >Request Type</label>
												<input name="requesttype" type="text" class="form-control" required="true" autocomplete="off">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Request Description</label>
												<textarea name="description" style="height: 5em;" class="form-control text_area" type="text"></textarea>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Start Date</label>
												<input name="date_from" class="form-control" type="date">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>End Date</label>
												<input name="date_to" class="form-control" type="date">
											</div>
										</div>
									</div>
									
									<div class="col-sm-12 text-right">
										<div class="dropdown">
										   <input class="btn btn-primary" type="submit" value="REGISTER" name="add" id="add">
									    </div>
									</div>
								   </form>
							    </section>
							</div>
						</div>
						
						<div class="col-lg-8 col-md-6 col-sm-12 mb-30">
							<div class="card-box pd-30 pt-10 height-100-p">
								<h2 class="mb-30 h4">Request Type List</h2>
								<div class="pb-20">
									<table class="data-table table stripe hover nowrap">
										<thead>
										<tr>
											<th class="table-plus">REQUESTTYPE</th>
											<th class="table-plus">DESCRIPTION</th>
											<th table-plus>DATE RANGE</th>
											<th class="datatable-nosort">ACTION</th>
										</tr>
										</thead>
										<tbody>

											<?php $sql = "SELECT * from tblrequesttype";
											$query = $dbh -> prepare($sql);
											$query->execute();
											$results=$query->fetchAll(PDO::FETCH_OBJ);
											$cnt=1;
											if($query->rowCount() > 0)
											{
											foreach($results as $result)
											{               ?>  

											<tr>
												<td> <?php echo htmlentities($result->RequestType);?></td>
	                                            <td><?php echo htmlentities($result->Description);?></td>
	                                            <td><?php echo htmlentities($result->date_from." - ".$result->date_to);?></td>
												<td>
													<div class="table-actions">
														<a href="request_type.php?delete=<?php echo htmlentities($result->id);?>" data-color="#e95959"><i class="icon-copy dw dw-delete-3"></i></a>
													</div>
												</td>
											</tr>

											<?php $cnt++;} }?>  

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>

			<?php include('includes/footer.php'); ?>
		</div>
	</div>
	<!-- js -->

	<?php include('includes/scripts.php')?>
</body>
</html>