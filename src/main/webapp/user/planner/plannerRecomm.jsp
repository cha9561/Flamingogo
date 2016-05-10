<%@page import="org.w3c.dom.Document"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@ page import="java.util.*" %>
<%
String plandateday=request.getParameter("plandateday");
String a=request.getParameter("place");
String b=request.getParameter("images");
String c=request.getParameter("plandate");
String d=request.getParameter("latlng1");
String e=request.getParameter("latlng2");
String f=request.getParameter("latmax");
String g=request.getParameter("lngmax");
String[] aa=a.split("/");
String[] bb=b.split("-");
String[] dd=d.split("/");
String[] ee=e.split("/");
int date=1;
String latmax;
String lngmax;
for(int i=0;i<aa.length;i++){
date++;

System.out.println(aa[i]);
System.out.println("lat"+dd[i]);
System.out.println("lng"+ee[i]);
}
plandateday=plandateday+date;


%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/shop.style.css">
<link rel="stylesheet" type="text/css"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
/* function plnSave1(){
	$('#plannersave').submit();
}; */
function plnSave1(){
   if (confirm("저장하시겠습니까??") == true) { //확인
      	$('#plannersave').submit();
   }
   else { //취소
    return;
   };
 };
/* $(function(){
	sendMessage("POST","plannerfind.do",null,recommCallBack);
});
function recommCallBack()
{
	if(httpRequest.readyState==4)
	{
		if(httpRequest.status==200)
		{
			$('#find').html(httpRequest.responseText);
		}	
	}	
} */
</script>
</head>
<body>
  <center>
    <table>
    <tr>
    <td>
     <form method="post" action="plannersave.do" id="plannersave">
     	<font size="3"><b>planner name : </b></font><input type="text" id="plan_id" name="plan_id" size="30" style="margin-bottom: 5px; font-size: 20px">
     	<font size="3" style="margin-bottom: 5px"><b>여행 시작 날짜 : <%=c %></b></font>
                 <input type=hidden id="place" name="place" value="<%=a%>">
                 <input type=hidden id="images" name="images" value="<%=b%>">
                 <input type=hidden id="plandate" name="plandate" value="<%=c%>">
                 <input type="hidden" class="latlng1" name="latlng1" value="<%=d%>">
                 <input type="hidden" class="latlng2" name="latlng2" value="<%=e%>">
                 <input type="hidden" class="latmax" name="latmax" value="<%=f%>">
                 <input type="hidden" class="lngmax" name="lngmax" value="<%=g%>">
                  
     </form>
     </td>
     </tr>
    <tr>
    <td>
        <button style="margin-bottom: 10px; font-size: 20px" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" onclick="plnSave1()">
           <b>플래너 저장</b> 
            
            </button>
    </td>
    </tr>
  
   
    <input type="hidden" id="city" name="city">
    
    <tr>
    <td>
            
	<font size="5" style="margin-bottom: 10px" ><%=date-1%>박<%=date %>일 간의 여정</font>
	
    </td>
    </tr>
    <%
    int k=0;
 
    for(int j=0;j<3;j++)
    {
    	
    %>
      <tr>
   <%
   int q=0;
    for(int i=(0+k);i<aa.length;i++)
    {
    		
   %>

     
   <td width="50">
    
     <img style="margin-bottom: 5px" border="0" class="findBtn" width="300" height="150" src=<%=bb[i] %>>
 	
   </td>
 
 	<td>
<!--  	<button style="font-size: 30px; margin-bottom: 0px; border: 0px"  class="find" name="find"> -->
 	<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent find" name="find">
  	<%=aa[i]%></button>
	</td>
	
	
	
	
   <% 
  
   q++;
   if(q>2)
	   break;
    }
   %>
   
	</tr>
	<%
	k=k+3;
    }
	%>
	
	<tr>
	<center>
	<img src="http://maps.google.com/maps/api/staticmap?path=color:0x000000ff|weight:2
	<%
	   for(int i=0;i<aa.length;i++)
	    {
	    	
	%>
	|<%=dd[i] %>,<%=ee[i] %>
	<%
	    }
	%>
	&markers=label:S|color:red|<%=dd[0] %>,<%=ee[0] %>
	<%
	 for(int i=1;i<aa.length-1;i++)
	    {
	%>

	&markers=size:tiny|color:gray|
	<%=dd[i] %>,<%=ee[i] %>
	<%

	
	    }
	%>
	&markers=label:E|color:red|<%=f %>,<%=g %>&size=290x150&sensor=false" width="790" height="400" style="border:1px solid #b5b5b5; margin-top: 10px;margin-bottom: 10px">
	  <td width=300 class="dt" height=300 id="dt" valign="top">
	</td>
	</center>
	</tr>
	
    </table>
  </center>
</body>
</html>