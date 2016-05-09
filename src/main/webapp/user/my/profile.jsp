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
       <input type=button value="등록하기" id="checkBtn">
       <!-- 등록하기 버튼 누르면 fileupload 창 뜨고 내가 이미지 선택하면 이미지 경로 value에 들어가야 하고, 이미지는 my밑에 있는 img 폴더에 저장되어야 함.
       그리고 이름의 경로로 src 가 바뀌어들어가야하눈뎅... -->
       </td>
      </tr>
      <tr>
        <td class="tdcenter" id="result"></td>
      </tr>
     </table>
   </center>
</body>
</html>

