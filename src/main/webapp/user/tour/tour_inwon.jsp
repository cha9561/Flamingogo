<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

$(function(){
	$('#grade').change(function(){
		var inwon=$('#grade').val();
		var price=$('#price').val();
		$('#span_inwon').text("�ο�:"+inwon+"��");
		$('#span_price').text("�ѱݾ�:"+(inwon*price)+"��");
		
		$('#inwon_jsp').val(inwon);
		$('#price_jsp').val(inwon*price);
		
		
		$('#resImg').attr("src","user/tour/img/res.png");
		$('#resImg').css("cursor","pointer");
	});
	$('#resImg').click(function(){
		var src=$('#resImg').attr("src");
		if(src=="user/tour/img/res_d.png")
		{
			return;
		}
		else
		{
			$('#res_frm').submit();
		}
	});
});
</script>
</head>
<body>
	<center>
   <!--  <table id="table_content" width=180>
            <tr>
              <th colspan="2"> </th>
            </tr>
            <tr>
              <td>
                    �ο�: -->
                 <select id="grade">
                   <c:forEach var="i" begin="1" end="5">
                    <option>${i }</option>
                   </c:forEach>
                 </select>
              <!-- </td>
            </tr>
         </table> -->
  </center>
</body>
</html>