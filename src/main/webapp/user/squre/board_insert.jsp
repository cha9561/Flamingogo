<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
 <title>��Ʈ��Ʈ�� 101 ���ø�</title>

	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- ��Ʈ��Ʈ�� -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<!----�� �ۼ� ��� ----> 

			<form method="post" action="board_insert_ok.do" id="boardFrm">
      <table id="table_content">
        
        <tr>
          <td align=right width=15%>����</td>
          <td align=left width=85%>
           <textarea rows="5" cols="55" name=content id="content"></textarea>
          </td>
        </tr>
        
      	
        <tr>
          <td align=center colspan="2">
           <input type=button value=�۾��� id="writeBtn">
           <input type=button value=��� 
           onclick="javascript:history.back()">
          </td>
        </tr>
      </table>
      </form>
</body>
</html>