<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../../../ajax.js"></script>
<!--mdlfont -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- mdl js-->
<script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
<script type="text/javascript" src="js/prefixfree.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<!--mdl css-->
<link rel="stylesheet"
	href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">

<script type="text/javascript">
$(function(){
	$('#checkBtn').click(function(){
	
		var profile=$('#profile').val();
		if(profile.trim()=="")
		{
			alert("������ ����� �ּ���.");
			return;
		}
		var res=profile.split(".",2);
		for(var i in res)
		{
			var check=res[1];
			<!--jspminiproject-->
		}
		if((check=="png")||(check=="jpg")||(check=="PNG")||(check=="JPG"))
		{
			var param="profile="+profile;
			alert(param);
			sendMessage("POST", "profile_ok.do", param, pckCallback);
		}
		else
		{
			alert("Ȯ���ڴ� png, jpg�� �����մϴ�");
			return;
		}
		
	});
});

function pckCallback()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			alert("�������� ���������� ��ϵǾ����ϴ�.")
			Shadowbox.close();
		}
	}
}
function ok(profile)
{
/* 	parent.join_frm.profile.src=profile; */
	parent.Shadowbox.close();
}
</script>
</head>
<body>
   <center>
     <table id="table_content" width=220 style="margin-top: 30px">
      <tr>
       <td><input type="file" size=20 name=upload id="profile"></td>
       </tr>
       <tr>
            <td align="right"><button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" id="checkBtn">
                <i class="fa fa-chevron-circle-right"></i>����ϱ�
                </button></td>
       <!-- ����ϱ� ��ư ������ fileupload â �߰� ���� �̹��� �����ϸ� �̹��� ��� value�� ���� �ϰ�, �̹����� my�ؿ� �ִ� img ������ ����Ǿ�� ��.
       �׸��� �̸��� ��η� src �� �ٲ������ϴ���... -->
      </tr>
      <tr>
        <td class="tdcenter" id="result"></td>
      </tr>
     </table>
   </center>
</body>
</html>

