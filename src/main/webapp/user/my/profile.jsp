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
<script type="text/javascript">

function ok(profile)
{
/* 	parent.join_frm.profile.src=profile; */
	parent.Shadowbox.close();
}
</script>
</head>
<body>
   <center>
     <table id="table_content" width=220 style="margin-top: 10px">
      <tr>
       <td><input type=text name=id size=12 id="profile" value="">
       <input type=button value="����ϱ�" id="checkBtn">
       <!-- ����ϱ� ��ư ������ fileupload â �߰� ���� �̹��� �����ϸ� �̹��� ��� value�� ���� �ϰ�, �̹����� my�ؿ� �ִ� img ������ ����Ǿ�� ��.
       �׸��� �̸��� ��η� src �� �ٲ������ϴ���... -->
       </td>
      </tr>
      <tr>
        <td class="tdcenter" id="result"></td>
      </tr>
     </table>
   </center>
</body>
</html>

