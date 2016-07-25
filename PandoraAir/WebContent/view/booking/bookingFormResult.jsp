
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
   
<%@page import="java.text.DecimalFormat"%>
	<%
	String patternBF = "###,###";
	DecimalFormat BF = new DecimalFormat(patternBF);
	int twelveBF = 12; //�׸��� �ý����� ���� ��
	%>
    <%
	int myoffsetBF = 1 ;
	int mywidthBF = 5 * myoffsetBF;
	int formleftBF = 2 ;
	int formrightBF = 9 - formleftBF ; //�� �Է�â ũ�� ����
	%>
	
	
	<%
	String contextPathBF = request.getContextPath(); //���� ���� ���� ������Ʈ �̸� 
	String CommandNameBF = "/BookingCtrl"; //��û�� ���� url ���� �̸�
	String MyCtrlByFormBF = contextPathBF + CommandNameBF; //���� �ִ� ��쿡 ���ȴ�. 
	String MyCtrlCommandBF = contextPathBF + CommandNameBF + "?command=";
	//out.print( MyCtrlCommand + "<br>" ); // Model2/MiniShopCtrl?command=
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>


</head>
<body>
 		<div id="main_container" align="center" 
		class="container col-xs-offset-<%=myoffsetBF%> col-lg-offset-<%=myoffsetBF%> col-xs-<%=mywidthBF%> col-lg-<%=mywidthBF%>"> 
		
		
		<h2>�պ�</h2>
		<div class="panel panel-primary sub_container">
			<div class="panel-heading" align="left">
				<font color="red"><b>�պ�!</b></font>
			</div>
			
			<div class="panel-body sub_container">
				<form id="myform" name="myform" class="form-horizontal" action="<%=MyCtrlByFormBF%>" method="post">
					<input type="hidden" name="command" value="#">
					
					<div class="form-group">
						<label for="section1" class="col-xs-<%=formleftBF+1%> col-lg-<%=formleftBF+1%> control-label">���� 1</label>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	            			<label>${requestScope.local1}</label>
	            			<!-- <input type="text" name="local1" id="local1" class="form-control"> -->
	        			</div>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	        				<label>${requestScope.destination1}</label>
	            			<!-- <input type="text" name="destination1" id="destination1" class="form-control"> -->
	        			</div>
	        		</div>
	        		
	        		<div class="form-group">
						<label for="section2" class="col-xs-<%=formleftBF+1%> col-lg-<%=formleftBF+1%> control-label">���� 2</label>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	        				<label>${requestScope.local2}</label>
	            			<!-- <input type="text" name="local2" id="local2" class="form-control"> -->
	        			</div>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	        				<label>${requestScope.destination2}</label>
	            			<!-- <input type="text" name="destination2" id="destination2" class="form-control"> -->
	        			</div>
	        		</div>		
	        		
					<div class="form-group">
						<label for="persons" class="col-xs-<%=formleftBF+1%> col-lg-<%=formleftBF+1%> control-label">�ο�</label>
	        			<div class="col-xs-<%=formrightBF-4%> col-lg-<%=formrightBF-4%>">
	        				<label>${requestScope.persons}</label>
	            			<!-- <input type="text" name="persons" id="persons" class="form-control"> -->
	        			</div>
	        		</div>
				
					
					<div class="form-group">
						<div class="col-xs-<%=twelveBF%> col-lg-<%=twelveBF%>" align="center">
							<button type="submit" class="btn btn-default" onclick="return checkForm();"><b>Ȯ�� �Ϸ�</b></button>
						</div>
					</div>
					
				</form>
			</div>
		</div>		
	</div>
        
        

        
        
        
        

</body>
</html>