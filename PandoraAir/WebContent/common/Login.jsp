<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int myoffset = 3;
	int mywidth = 12 - (2 * myoffset);
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="container">
		<div class="col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>">
			<div class="panel panel-default panel-primary">
				<div class="panel-heading">로그인 페이지</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="control-label col-sm-3" for="ID">ID:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="ID" name="ID"
									data-toggle="tooltip" title="아이디는 3글자 이상 10글자 이하로 넣어 주세요"
									placeholder="Enter ID">
							</div>
						</div>	
						<div class="form-group">
							<label class="control-label col-sm-3" for="pwd">Password:</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" id="pwd" name="pwd"
									placeholder="Enter password">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-4 col-sm-10">
								<button type="submit" class="btn btn-success">확인</button>
								&nbsp;&nbsp;
								<a href="/PandoraAir/BookingCtrl?command=pdrInsertForm">
									<button type="button" class="btn btn-danger">회원가입</button>
								</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<!-- JQuery 문법 : 모든 문서가 로딩되고 나면 실행되는 문장. -->
</body>
</html>