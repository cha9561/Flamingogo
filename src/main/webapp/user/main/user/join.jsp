<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>

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
    			content:'idcheck.jsp',
    			player:'iframe',
    			width:240,
    			height:150,
    			title:'���̵��ߺ�üũ'
    		});
    	}
       
   $(function(){
	  
	   $('#joinBtn').click(function(){
		  var pwd=$('#pwd').val();
			  if(pwd.trim()=="")
		   {
				  $('pwd').focus();
				  return;
		   }
			  
		 var pwd=$('#pwdCk').val();
			  if(pwd.trim()=="")
		   {
				  $('pwdCk').focus();
				  return;
		   }
		
		  var pwd=$('#name').val();
			  if(pwd.trim()=="")
		   {
				  $('name').focus();
				  return;
		   }
			  
		$('#join_frm').submit();
		   
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
    <h3>ȸ�� ����</h3>
    <div class="joinWrite">
    <form name="join_frm" action="join_ok.do" method="post">
        <table border=1 bordercolor="black" width=500
               cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table border=0 width=500>
			         
			         <tr height=30>
			             <td width=15% align=right>ID</td>
			             <td width=85% align=left>
			              <input type=text name=id size=12 readonly>
			              <input type="button" value="�ߺ�üũ" onclick="idcheck()">
			             </td>
			           </tr>
			           
                         <tr height=30>
				             <td width=15% align=right>Password</td>
				             <td width=85% align=left>
                                <input type=password name=pwd size=12 required id="pwd">
                            </td>
                        </tr>

                         <td width=15% align=right><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif" class="displaynone" alt="�ʼ�"> ��й�ȣ Ȯ��</td>
                            <td width=75% align=left>
                                <input type=password name=pwd size=12 required id="pwdCk">
                            </td>
                        </tr>

                        <tr height=30>
				             <td width=15% align=right>�̸�</td>
				             <td width=85% align=left>
				              <input type=text name=name size=12 required id="name">
				             </td>
				           </tr>
				           
                        <tr height=30>
                             <td width=15% align=right>����</td>
                            <td width=85% align=left>
                                <input type=radio name=sex value=���� checked>����
                                <input type=radio name=sex value=����>����
                            </td>
                        </tr>
                        
                        
                        <tr height=30>
            			 <td width=15% align=right>�������</td>
                            <td width=85% align=left>
                                <input type=date name=birth size=20>
                            </td>
                        </tr>
                        
                       <tr height=30>
				             <td width=15% align=right>��ȭ��ȣ</td>
				             <td width=85% align=left>
				              <select name=tel1>
				                <option>010</option>
				                <option>011</option>
				                <option>017</option>
				              </select>
				              <input type=text name=tel2 size=7>-
				              <input type=text name=tel3 size=7>
				             </td>
         			  </tr>

                        <tr>
                             <td width=15% align=right>�̸���</td>
                             <td><input id="email1" name="email1" type="text" size="7"> @ <input id="email2" name="email2" type="text" size="7">

                                <select id="email3" fw-filter="isFill" fw-label="�̸���" fw-alone="N" fw-msg="">
                                <option value="" selected="selected">- �̸��� ���� -</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="yahoo.com">yahoo.com</option>
                                <option value="empas.com">empas.com</option>
                                <option value="korea.com">korea.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="etc">�����Է�</option>
                            </select> <span id="emailMsg"></span>
                            </td>
                        </tr>
									<tr>
						             <td colspan="2" align=center>
						              <input type="submit" value="����" id="joinBtn">
						              <input type="button" value="���" onclick="">
						               </td>
           							</tr>
         </table>
        </td>
      </tr>
    </table>
    </form>
    </div>
  </center>
</body>
</html>






