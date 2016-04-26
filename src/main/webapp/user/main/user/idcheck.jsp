<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="user/member/table.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../../ajax.js"></script>
<script type="text/javascript">
	$(function(){
		$('#checkBtn').click(function(){
		
			var id=$('#id').val();
			if(id.trim()=="")
				{
					$('#id').focus();
					return;
				}
			var param="id="+id;
			sendMessage("POST","../../../idcheck_ok.do",param,idcheckCallback);
			
		});
	
	});
	
	function idcheckCallback()
	{
		if(httpRequest.readyState==4)//레디 :4 client가 끝났다
		{
			if(httpRequest.status==200)
				{
					
					var count=httpRequest.responseText;
					alert(count);
					$('#result').text("");
					
					if(count==0)
					{
						
						var res=$('#id').val()+"는(은) 사용가능한 ID입니다<br>"
						+"<input type=button value=확인 onclick=ok('"+$('#id').val()+"')>";
						
						$('#result').append(res);
						
					}
					else
						{
							var res="<font color=yellow>"+$('#id').val()+"는(은) 이미 존재하는 ID입니다"
							$('#result').append(res);
						}
				}
			
		}
	}
	function ok(id)
	{
		parent.join_frm.id.value=id;
		parent.Shadowbox.close();
		
	}
	</script>

</head>
<body>
	<center>
		<table id="table_content" width=220 style="margin-top:10px">
			<tr>
				<td><font color=white>ID:<input type=text name=id size=12></font>
				<input type=button value="체크" id="checkBtn">
				</td>
			</tr>
			
			<tr>
				<td class="tdcenter" id="result"></td> 
			</tr>
		</table>
	</center>
</body>
</html>