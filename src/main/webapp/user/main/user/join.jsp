<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

    <link rel="stylesheet" type="text/css"
	href="../../shadow/css/shadowbox.css">
	<script type="text/javascript" src="../../shadow/js/shadowbox.js"></script>
    <link rel="stylesheet" type="text/css" href="user/shadow/css/shadowbox.css">

<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
    	function idcheck()
    	{
    		Shadowbox.open({
    			content:'user/main/user/idcheck.jsp',
    			player:'iframe',
    			width:240,
    			height:150,
    			title:'���̵��ߺ�üũ'
    		});
    	}
     
    	
    	$(function(){
		  
			   
			   $('#email_select').change(function(){
				    if($('#email_select').val() == "1"){
				     $("#email2").val(""); //�� �ʱ�ȭ
				     $("#email2").prop("readonly",false); //Ȱ��ȭ
				    } else if($('#email_select').val() == ""){
				     $("#email2").val(""); //�� �ʱ�ȭ
				     $("#email2").prop("readonly",true); //textBox ��Ȱ��ȭ
				    } else {
				     $("#email2").val($('#email_select').val()); //���ð� �Է�
				     $("#email2").prop("readonly",true); //��Ȱ��ȭ


					  $('#resImg').attr("src","user/main/img/joinok.png");
					  $('#resImg').css("cursor","pointer");
					
				    }
						
			   });
			   
			   

			   $('#resImg').click(function(){
					

				   if ($("#id").val() == "") {
		                
					   $("#id").focus();
		                
		            }else
		            	{

						   alert("�ö��Go�� ���Ű� ȯ���մϴ�")	
		            	}
				   
		
			   });
    	});

    </script>
<style>
    body, code {
        font-size: 12px;
        font-family: 'Open Sans','Noto Sans KR',sans-serif;
 		
        }
        
    th, td {
        border: 0;}

    .btnArea{
        margin: 20px 0 30px;
        text-align: center;
    }

    table{

        border-collapse: collapse;
    }

</style>


</head>
<body>

<center>
<div class="space">


</div>
    <div class="joinWrite">
    <h3><img src="user/main/img/joinus.png" border=0></h3>
    <form id="join_frm" action="join_ok.do" method="post">
       <!--  <table border=0 width=500
               cellpadding="0" cellspacing="0"> -->      
      <div class="form-group">
                    <table border=0 width=400 align=center>
			         
			         <tr height=35>
			             <td width=15% align=right>ID</td>
			             <td width=85% align=left id="id" required>
			              <input type=text name=id size=12 readonly required>
			              <input type="button" value="�ߺ�üũ" onclick="idcheck()">
			             </td>
			           </tr>
			           
                         <tr height=35>
				             <td width=15% align=right>Password</td>
				             <td width=85% align=left>
                                <input type=password name=pwd size=12 required id="pwd">
                            </td>
                        </tr>
                        
 						<tr height=35>
                         <td width=15% align=right>��й�ȣ Ȯ��</td>
                            <td width=75% align=left>
                                <input type=password name=pwd size=12 required id="pwdCk">
                            </td>
                        </tr>

                        <tr height=35>
				             <td width=15% align=right>�̸�</td>
				             <td width=85% align=left>
				              <input type=text name=name size=12 required id="name">
				             </td>
				           </tr>
				           
                        <tr height=35>
                             <td width=15% align=right>����</td>
                            <td width=85% align=left  id="sex" required>
               
                                <input type=radio id="man" name=sex value=���� checked>����
                                <input type=radio id="woman" name=sex value=����>����
                           
                            </td>
                        </tr>
                        
                        
                        <tr height=35>
            			 <td width=15% align=right id="birth">������� </td>
                            <td width=85% align=left>
                                <input type=date name=birth size=20 required>
                            </td>
                        </tr>
                        
                       <tr height=35>
				             <td width=15% align=right id="tel">��ȭ��ȣ</td>
				             <td width=85% align=left>
				              <select name=tel1>
				                <option>010</option>
				                <option>011</option>
				                <option>017</option>
				              </select>
				              <input type=text name=tel2 size=7 id="tel2"  required/>-
				              <input type=text name=tel3 size=7 id="tel3"  required>
				             </td>
         			  </tr>

                        <tr height=35>
                             <td width=15% align=right >�̸���</td>
                             <td> <input type="text" id="email1" size="10" required / > @ <input type="text" id="email2" size="10" required/>
  								<select id="email_select">
   								<option value="" selected="selected">::�����ϱ�::</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="yahoo.com">yahoo.com</option>
                                <option value="empas.com">empas.com</option>
                                <option value="korea.com">korea.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="1">::�����Է�::</option>
                            </select>
                            </td>
                        </tr>
                        <tr height=30></tr>
									<tr height=35>
						             <td align=center colspan="2">
									<input type="image" src="user/main/img/join.png" id="resImg" border=0>
						            <input type="image" src="user/main/img/cancle.png" border=0 id="cancleBtn" onclick="javascript:history.back()">
						              
						             </td>
           							</tr>
       </table>
       </div>
    </form>
    </div>
  </center>
</body>
</html>






