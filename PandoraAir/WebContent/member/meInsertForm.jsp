<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="./../common/top.jsp"%>
<%
	int myoffset = 3 ;
	int mywidth = 2 * myoffset;
	int formleft = 2 ;
	int formright = 9 - formleft ; 
%>
<html>
<head>
	<style type="text/css">
		.form-group{ margin-bottom : 3px; }
	</style>
	<script type="text/javascript">
		function function1( message ){
			alert( message ) ;
		}
		function function2( message ){
			alert( message ) ;
		}		
	</script>
</head>
<body>
	<div id="main_container" align="center" 
		class="container col-xs-offset-<%=myoffset%> col-lg-offset-<%=myoffset%> col-xs-<%=mywidth%> col-lg-<%=mywidth%>"> 
		<h2>회원 가입 하기</h2>
		<div class="panel panel-primary sub_container">
			<div class="panel-heading" align="left">
				<font color="red"><b>회원 가입</b></font> 페이지입니다.
			</div>
			<div class="panel-body sub_container">
				<form class="form-horizontal" role="form" action="<%=contextPath%>/Insert.me"  method="post">
					<div class="form-group">
						<label for="id" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">아이디</label>
	        			<div class="col-xs-<%=formright-2%> col-lg-<%=formright-2%>">
	            			<input type="text" name="id" id="id" class="form-control" placeholder="아이디"> 
	        			</div>
	        			<div class="col-xs-<%=2%> col-lg-<%=2%>" align="left">
	            			<input type="button" class="btn btn-info" value="중복 검사" onclick="function1('아이디 중복 검사');"> 
	        			</div>
	        		</div>        		
					<div class="form-group">
						<label for="name" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">이름</label>
	        			<div class="col-xs-<%=formright%> col-lg-<%=formright%>">
	            			<input type="text" name="name" id="name" class="form-control" placeholder="이름"> 
	        			</div>
	        		</div>
					<div class="form-group">
						<label for="password" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">비밀 번호</label>
	        			<div class="col-xs-<%=formright%> col-lg-<%=formright%>">
	            			<input type="password" name="password" id="password" class="form-control" placeholder="비밀 번호를 넣어 주셔요"> 
	        			</div>
	        		</div>
					<div class="form-group">
						<label for="lnum" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">주민 번호</label>
	        			<div class="col-xs-<%=formright%> col-lg-<%=formright%>">
	            			<input type="text" name="lnum" id="lnum" class="form-control" placeholder="주민 번호"> 
	        			</div>
	        		</div>
					<div class="form-group">
						<label for="phone" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">전화 번호</label>
	        			<div class="col-xs-<%=formright%> col-lg-<%=formright%>">
	            			<input type="text" name="phone" id="phone" class="form-control" placeholder="전화 번호"> 
	        			</div>
	        		</div>
					<div class="form-group">
						<label for="email" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">e-mail</label>
	        			<div class="col-xs-<%=formright%> col-lg-<%=formright%>">
	            			<input type="text" name="email" id="email" class="form-control" placeholder="e-mail"> 
	        			</div>
	        		</div>
					
					
				<!-- 	
					<div class="form-group">
						<label for="zipcode" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">우편 번호</label>
	        			<div class="col-xs-<%=formright-2%> col-lg-<%=formright-2%>">
	            			<input type="text" name="fakezipcode" id="fakezipcode" class="form-control" disabled="disabled" placeholder="우편 번호" value="${bean.zipcode}" >
	            			<input type="hidden" name="zipcode" id="zipcode" value="${bean.zipcode}" > 
	        			</div>
						<div class="col-xs-<%=2%> col-lg-<%=2%>" align="left">
	            			<input type="button" class="btn btn-info" value="우편 번호 찾기" onclick="function2('우편 번호 검색');"> 
	        			</div>	        			
	        		</div> 
					<div class="form-group">
						<label for="address1" class="col-xs-<%=formleft%> col-lg-<%=formleft%> control-label">주소</label>
	        			<div class="col-xs-<%=formright%> col-lg-<%=formright%>">
	            			<input type="text" name="fakeaddress1" id="fakeaddress1" class="form-control" disabled="disabled" placeholder="주소" value="${bean.address1}" >
	            			<input type="hidden" name="address1" id="address1" value="${bean.address1}" >	            			
	        			</div>
	        		</div>
					 -->
					<div class="form-group">
						<div class="col-xs-<%=twelve%> col-lg-<%=twelve%>" align="center">
							<button type="submit" class="btn btn-default"><b>회원 가입</b></button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-default">초기화</button>
						</div>
					</div>
				</form>
			</div>
		</div>		
	</div>
</body>
</html>