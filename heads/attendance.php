<?php include('includes/header.php') ?>
<?php include('../includes/session.php') ?>
<?php


if (isset($_POST['mydata'])) {

$wholeData = $_POST['mydata'];

$splittedData = explode('},',(string)$wholeData);

// print($splittedData[0]);
$obj = json_decode((string)$splittedData[0], true);
foreach ($splittedData as $value) {
	$obj = json_decode($value);
	if(null != $obj) {
		// $month = $obj->Month;
		$attendeeCode = $obj->Attendee_Code;
		$attendeeName = $obj->Attendee_Name;
		$designation = $obj->Designation;
		$totalDays = (int)$obj->Total_Days;
		$totalHolidays = (int)$obj->Total_Holidays;
		$workingDays = (int)$obj->WorkingDays;
		$fulldayPresent = (int)$obj->Fullday_Present;
		$halfdayPresent = (int)$obj->HalfDay_Present;
		$errors = (int)$obj->Errors;
		$totalAbsents = (int)$obj->Total_Absents;
		$totalLeaves = (int)$obj->Total_Leaves;
		$weekOffs = (int)$obj->Week_Offs;
		$onDuty = (int)$obj->On_Duty;
		$eligibleDays = (int)$obj->Eligible_Days;
		$attendancePercentage = (int)$obj->Attendance_Percentage;
		$month	=	$obj->Month;
		$year	=	(int)$obj->Year;

		if(!empty($attendeeCode) && !empty($attendeeName)) {
			$sql = "INSERT INTO tblattendance(AttendeeCode,attendeeName,designation,totalDays,totalHolidays,workingDays,fulldayPresent,halfdayPresent,errors,totalAbsents,totalLeaves,weekOffs,onDuty,eligibleDays,attendancePercentage,month,year) VALUES('$attendeeCode','$attendeeName','$designation','$totalDays','$totalHolidays','$workingDays' ,'$fulldayPresent','$halfdayPresent','$errors','$totalAbsents','$totalLeaves','$weekOffs','$onDuty','$eligibleDays','$attendancePercentage', '$month', '$year')";
			if (mysqli_query($conn, $sql)) {
				//echo "New record created successfully";
			} else {
				echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			}
		}
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

	<?php include('includes/navbar.php') ?>

	<?php include('includes/right_sidebar.php') ?>

	<?php include('includes/left_sidebar.php') ?>

	<div class="mobile-menu-overlay"></div>

	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pb-20">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Upload Attendance</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
									<li class="breadcrumb-item active" aria-current="page">Upload</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>

				<div class="pd-20 card-box mb-30">

				

					<div class="wizard-content">
						<form method="post" action="">
						<div class="clearfix">
						<div class="pull-left">
							<input type="file" id="myFile" onchange="fileChange(event)" name="filename">
							<input type="text" name="mydata" id="mydata" required="true">
							<p class="mb-20"></p>
						</div>
					</div>
							<section>
								<div class="row">
									<div class="col-md-4 col-sm-12">
										<div class="form-group">
											<label style="font-size:16px;"><b></b></label>
											<div class="modal-footer justify-content-center">
												<button class="btn btn-primary" name="attendance" type="submit" id="attendance" data-toggle="modal">Upload</button>
											</div>
										</div>
									</div>
								</div>
							</section>
						</form>
					<!-- <form action="attendance.php" method="post" enctype="multipart/form-data">
						<input type="file" name="csv_file" id="csv_file" accept=".csv">
						<input type="submit" name="submit" value="Upload CSV">
					</form> -->
					</div>

					<table id="attendanceData">
						<tr id="headers">
						</tr>
						<tbody id="attendancetBody">
						
					</tbody>
					</table>
				</div>

			</div>

			<script>
		
		const preventDef = (event) => {
			//event.preventDefault();
		}

		const fileChange = (e) => {
			const reader = new FileReader()
			reader.onload = () => {
			const text = reader.result;
			convertToObject(text);
  			}
  			reader.readAsText(e.target.files[0])
		}


		const convertToObject = (text) => {
			let finalRecords = [];
			let records = text.split(/\r\n|\n/);
			let headers = records[0];
			records.splice(0,1);
			records.forEach(record => {
				let obj = {};
					headers.split(",").forEach((element,index) => {
					obj[element.replace(/ /g, "_")] = record.split(",")[index];
				});
				finalRecords.push(obj)
			});
			setCookie("csvData", JSON.stringify(finalRecords), 2);
			let data = JSON.stringify(finalRecords);
			data = data.replace("[","");
			data = data.replace("]","");
			data = data.replace(/},/g,"}},");
			
			$("#mydata").val(data);
			//document.cookie = "csvData="+ JSON.stringify(finalRecords);			
			//insertHeaders(headers,finalRecords);
		}

		function setCookie(cname, cvalue, exdays) {
			const d = new Date();
			d.setTime(d.getTime() + (exdays*24*60*60*1000));
			let expires = "expires="+ d.toUTCString();
			document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
		}

		const insertHeaders = (headers, finalRecords) => {
			let inhtml = "";
			headers.split(",").forEach(element => {
				inhtml += `<th>${element}</th>`;
			});
			//document.getElementById("headers").innerHTML = inhtml;

			let tbodyHtml = "";
			finalRecords.forEach(element => {
				tbodyHtml += `<tr>`;
				Object.values(element).forEach(val => {
					tbodyHtml += `<td>${val}</td>`;
				})
				tbodyHtml += `</tr>`;
			});
			//document.getElementById("attendancetBody").innerHTML = tbodyHtml;
		}

// 		$(document).ready(function(){
//     $('#attendance').click(function(){
//         var clickBtnValue = $(this).val();
//         var ajaxurl = 'attendanceupload.php',
//         data =  {'action': clickBtnValue};
//         $.post(ajaxurl, data, function (response) {
//             // Response div goes here.
//             alert("action performed successfully");
//         });
//     });
// });

		</script>
			<?php include('includes/footer.php'); ?>
		</div>
	</div>
	<!-- js -->
	<?php include('includes/scripts.php') ?>
</body>

</html>