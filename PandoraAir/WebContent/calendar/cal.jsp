<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="./common/js/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="./templates/default/js/ui.datepicker/css/smoothness/jquery-ui-1.7.2.custom.css">
<script type="text/javascript" src="./templates/default/js/ui.datepicker/jquery-ui-1.8.16.custom.min.js"></script>
<script src="./templates/default/js/kr.validate.js" language="javascript" type="text/javascript"></script>
<script src="./templates/default/js/formValidate.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript">
$(function(e){
		$('#btnSave').click(function() {
		});

		$("#startTerm").datepicker({
			dateFormat:'yy-mm-dd'
			,showOn:'both'
		});

		$("#endTerm").datepicker({
			dateFormat:'yy-mm-dd'
			,showOn:'both'
		});
      

 } );
</script>
</head>
<body>
<input type="text" class="it validate-req" title="ë´ì¬ììì¼" name="startTerm" id="startTerm" value="" />
<input type="text" class="it validate-req" title="ë´ì¬ì¢ë£ì¼" name="endTerm" id="endTerm" value="" />
</body>
</html>