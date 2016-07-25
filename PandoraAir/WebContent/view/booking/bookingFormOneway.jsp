
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
	int myoffsetBF = 0 ;
	int mywidthBF = 12;
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
<html style="width: 500px;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <script src="./common/js/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="./templates/default/js/ui.datepicker/css/smoothness/jquery-ui-1.7.2.custom.css">
<script type="text/javascript" src="./templates/default/js/ui.datepicker/jquery-ui-1.8.16.custom.min.js"></script>
<script src="./templates/default/js/kr.validate.js" language="javascript" type="text/javascript"></script>
<script src="./templates/default/js/formValidate.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript"></script>


<style type="text/css">

.opera { 

border : 1px solid #69A6E4; 

color : #505050; 

font-size : 15px; 

font-weight : bold; 

background-color : #e9e9e9; 

} 

.opera-hover { 

border-color: #69A6E4; color: #505050; 

} 

.opera .current { 

background-color: #808080 !important; 

color: #fff !important; 

} 

.opera .menu { border: 1px solid #494949; } 





</style>
</script>
</head>
<body>
 			

			<div class="panel-body sub_container">
				<form id="myform" name="myform" class="form-horizontal" action="<%=MyCtrlByFormBF%>" method="post">
					<input type="hidden" name="command" value="#">
					
					<div class="form-group">
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	            			<select class="opera" name="section1-1" id="section1-1" style=" width: 352px; height: 32px;">
								<option value="��õ" selected="selected">��õ
								<option value="����">����
								<option value="����">����
							</select>
	        			</div>
	        		</div>
	        		
	        		<div class="form-group">
	        		<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	            			<select class="opera" name="section1-2" id="section1-2" style=" width: 352px; height: 32px;">
								<option value="����" selected="selected">����
								<option value="����¡">����¡
								<option value="���Ҷ�">���Ҷ�
							</select>
	        			</div>
	        		</div>
	        		
	        		<div class="form-group">
	        			<%@ include file="./calOne.jsp"%>
	        		</div>
					
					<div class="form-group">
	        		<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
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
						<div class="col-xs-<%=twelveBF%> col-lg-<%=twelveBF%>" align="center">
							<button type="submit" class="btn btn-default" onclick="return checkForm();"><b>���� ������</b></button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-default">�ʱ�ȭ</button>
						</div>
					</div>
					

					
				</form>
			</div>
	
        
        

        
        
        
        

</body>
</html>