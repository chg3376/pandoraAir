
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
   
<%@page import="java.text.DecimalFormat"%>
	<%
	String patternBF2 = "###,###";
	DecimalFormat BF2 = new DecimalFormat(patternBF2);
	int twelveBF2 = 12; //�׸��� �ý����� ���� ��
	%>
    <%
	int myoffsetBF2 = 1 ;
	int mywidthBF2 = 5 * myoffsetBF2;
	int formleftBF2 = 2 ;
	int formrightBF2 = 9 - formleftBF2 ; //�� �Է�â ũ�� ����
	%>
	
	
	<%
	String contextPathBF2 = request.getContextPath(); //���� ���� ���� ������Ʈ �̸� 
	String CommandNameBF2 = "/BookingCtrl"; //��û�� ���� url ���� �̸�
	String MyCtrlByFormBF2 = contextPathBF2 + CommandNameBF2; //���� �ִ� ��쿡 ���ȴ�. 
	String MyCtrlCommandBF2 = contextPathBF2 + CommandNameBF2 + "?command=";
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
 		


	<div class="panel-body sub_container">
				<form id="myform" name="myform" class="form-horizontal" action="<%=MyCtrlByFormBF2%>" method="post">
					<input type="hidden" name="command" value="#">
					
					<div class="form-group">
	        			<div class="col-xs-<%=formrightBF2-3%> col-lg-<%=formrightBF2-3%>">
	            			<select class="opera" name="section1-1" id="section1-1" style=" width: 352px; height: 32px;">
								<option value="��õ" selected="selected">��õ
								<option value="����">����
								<option value="����">����
							</select>
	        			</div>
	        		</div>
	        		
	        		<div class="form-group">
	        		<div class="col-xs-<%=formrightBF2-3%> col-lg-<%=formrightBF2-3%>">
	            			<select class="opera" name="section1-2" id="section1-2" style=" width: 352px; height: 32px;">
								<option value="����" selected="selected">����
								<option value="����¡">����¡
								<option value="���Ҷ�">���Ҷ�
							</select>
	        			</div>
	        		</div>
	        		
	        		<div class="form-group">
	        			<%@ include file="./calTwo.jsp"%>
	        		</div>
					
					<div class="form-group">
	        		<div class="col-xs-<%=formrightBF2-3%> col-lg-<%=formrightBF2-3%>">
	            			<select class="opera" name="persons" id="persons" style="height: 32px;">
								<option value="-" selected="selected">-
								<option value="1��">1��
								<option value="2��">2��
								<option value="3��">3��
								<option value="4��">4��
								<option value="5��">5��
							</select>
	        			</div>
	        		</div>
				
					
					<div class="form-group">
						<div class="col-xs-<%=twelveBF2%> col-lg-<%=twelveBF2%>" align="center">
							<button type="submit" class="btn btn-default" onclick="return checkForm();"><b>���� ������</b></button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-default">�ʱ�ȭ</button>
						</div>
					</div>
					

					
				</form>
			</div>
        
        

        
        
        
        

</body>
</html>