<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../../assets/img/apple-icon.png" />
<link rel="icon" type="image/png" sizes="96x96"
	href="../../assets/img/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Welcome to our christmas party</title>

<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta name="viewport" content="width=device-width" />

<!-- Bootstrap core CSS     -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="resources/css/paper-dashboard.css" rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="resources/css/demo.css" rel="stylesheet" />

<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Muli:400,300"
	rel="stylesheet" type="text/css" />
<link href="resources/css/themify-icons.css" rel="stylesheet" />
</head>

<body>


	<div class="wrapper wrapper-full-page">
		<div class="full-page login-page" data-color=""
			data-image="resources/image/background.png">
			<!--   you can change the color of the filter page using: data-color="blue | azure | green | orange | red | purple" -->
			<div class="content">

				<div class="form-group">
					<input type="text" placeholder="PASSENGER NAME" id="user_name"
						class="form-control input-no-border" />
					<div class="form-control input-no-border2">
						<input type="image" src="resources/image/entrance.png" id="loginBtn" name="name"
							class="form-control input-no-border2 imgBtn" onclick="login.entrance()" />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
<script src="resources/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="resources/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Forms Validations Plugin -->
<script src="resources/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="resources/js/moment.min.js"></script>

<!--  Date Time Picker Plugin is included in this js file -->
<script src="resources/js/bootstrap-datetimepicker.js"></script>

<!--  Select Picker Plugin -->
<script src="resources/js/bootstrap-selectpicker.js"></script>

<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
<script src="resources/js/bootstrap-checkbox-radio-switch-tags.js"></script>

<!-- Circle Percentage-chart -->
<script src="resources/js/jquery.easypiechart.min.js"></script>

<!--  Charts Plugin -->
<script src="resources/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="resources/js/bootstrap-notify.js"></script>

<!-- Sweet Alert 2 plugin -->
<script src="resources/js/sweetalert2.js"></script>

<!-- Vector Map plugin -->
<script src="resources/js/jquery-jvectormap.js"></script>

<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Wizard Plugin    -->
<script src="resources/js/jquery.bootstrap.wizard.min.js"></script>

<!--  Bootstrap Table Plugin    -->
<script src="resources/js/bootstrap-table.js"></script>

<!--  Plugin for DataTables.net  -->
<script src="resources/js/jquery.datatables.js"></script>

<!--  Full Calendar Plugin    -->
<script src="resources/js/fullcalendar.min.js"></script>

<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
<script src="resources/js/paper-dashboard.js?ver=3"></script>

<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
<script src="resources/js/demo.js"></script>
<script src="resources/js/login.js?ver=2"></script>

<script type="text/javascript">
	$().ready(function() {
		demo.checkFullPageBackgroundImage();

		setTimeout(function() {
			// after 1000 ms we add the class animated to the login/register card
			$(".card").removeClass("card-hidden");
		}, 700);
	});
</script>
</html>
