
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
	int formrightBF = 8 - formleftBF ; //�� �Է�â ũ�� ����
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
 		<div id="main_container" align="center" class="container col-xs-offset-<%=myoffsetBF%> col-lg-offset-<%=myoffsetBF%> col-xs-<%=mywidthBF%> col-lg-<%=mywidthBF%>"> 
		
		
		<h2>�պ�</h2>
		<div class="panel panel-primary sub_container">
		
			<div class="panel-heading" align="left">
				<font color="red"><b>���� 1 : ${requestScope.local1} - ${requestScope.destination1}</b></font>
				<font color="blue"><b>���� 2 : ${requestScope.local2} - ${requestScope.destination2}</b></font>
			</div>
			
			<table class="table table-striped table-hover">
				<thead>
					
					<tr>
						<th>���</th>
						<th>��߽ð�</th>
						<th>�����ð�</th>
						<th>���ӿ��</th>
					</tr>
					
				</thead>
				<tr>
				</tr>
					<tr>
						<td>${bean.airplane}</td>
						<td>${bean.departure_time}</td>
						<td>${bean.arrival_time}</td>
						<td>${bean.fare}</td>
					</tr>
			</table>
			
		</div>		
	</div>

</body>
</html>