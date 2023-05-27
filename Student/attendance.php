<?php include('includes/header.php')?>
<?php include('../includes/session.php')?>


          

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
		<div class="pd-ltr-20">
			<div class="title pb-20">
				<h2 class="h3 mb-0">Attendance</h2>
			</div>

			<div class="card-box mb-30">
				<div class="pd-20">
						<h2 class="text-blue h4">Your Attendance</h2>
					</div>
				<div class="pb-20">
					<table class="data-table table stripe hover nowrap">
						<thead>
							<tr>
								<th>MONTH</th>
								<th>HALLTICKET</th>
								<th>FULLPRESENT</th>
								<th>HALFPRESENT</th>
								<th>ABSENT</th>
								<th>ELIGIBLE</th>
								<th>PERCENTAGE</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								
								
								 <?php 								 
                                    
									$query	=	mysqli_query($conn, "SELECT * from tblattendance where AttendeeCode = '".$session_htnumber."'") or die(mysqli_error());
                                    
                                    while($result = mysqli_fetch_array($query))
                                    {               
										?>  

								  <td><?php echo $result['month']; ?></td>
								  <td><?php echo $result['AttendeeCode']; ?></td>
								  <td><?php echo $result['fulldayPresent']; ?></td>
								  <td><?php echo $result['halfdayPresent']; ?></td>
								  <td><?php echo $result['totalAbsents']; ?></td>
								  <td><?php echo $result['eligibleDays']; ?></td>
								  <td><?php echo $result['attendancePercentage']; ?></td>
                                  							
							<?php }   ?>  
							</tr>
						</tbody>
					</table>
			   </div>
			</div>

			<?php include('includes/footer.php'); ?>
		</div>
	</div>
	<!-- js -->

	<?php include('includes/scripts.php')?>
</body>
</html>


































