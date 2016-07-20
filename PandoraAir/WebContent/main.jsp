<!DOCTYPE html>
<html lang="en">
<head>
<title>PandoraAir Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
<<<<<<< HEAD
=======
	background-color: #FFFFFF;
>>>>>>> branch 'master' of https://github.com/chg3376/pandoraAir.git
	height: 100%;
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #FFFFFF;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
/* @media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
		
	} */
@media screen and (max-width: 500px) {
	.sidenav {
		height: auto;
		padding: 15px;
		
	}
	.row.content {
		height: auto;
		
	}
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row content">
<<<<<<< HEAD
			<div class="col-sm-2 sidenav" >
			
				<jsp:include page="./common/top.jsp"/>
				<div class="col-sm-10">
				   <%@ include file="./../view/member/Login.jsp"%>
			    </div>
				<%	
					String meLoginForm = MyCtrlCommand + "meLoginForm"  ;
					String meInsertForm = MyCtrlCommand + "meInsertForm"  ;
				%>
					
=======
		
			<div class="col-sm-2 sidenav">
				<%@ include file="./common/top.jsp"%>

				<div class="col-sm-10">
					<%@ include file="./common/Login.jsp"%>
				</div>
				
>>>>>>> branch 'master' of https://github.com/chg3376/pandoraAir.git
			</div>
		</div>
	</div>

	<footer class="container-fluid">
		<%@ include file="./common/footer.jsp" %>
	</footer>

</body>
</html>

