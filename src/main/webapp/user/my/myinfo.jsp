<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ����</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

    <link rel="stylesheet" type="text/css"
	href="../../shadow/css/shadowbox.css">
	<script type="text/javascript" src="../../shadow/js/shadowbox.js"></script>

<!-- �޷� -->
  <link rel="stylesheet" media="screen" href="styles/vlaCal-v2.1.css" type="text/css" />
	<link rel="stylesheet" media="screen" href="styles/vlaCal-v2.1-adobe_cs3.css" type="text/css" />
	<link rel="stylesheet" media="screen" href="styles/vlaCal-v2.1-apple_widget.css" type="text/css" />
	
	<script type="text/javascript" src="jslib/mootools-1.2-core-compressed.js"></script>
	<script type="text/javascript" src="jslib/vlaCal-v2.1-compressed.js"></script>


<script type="text/javascript">

    	   function readURL(input) {
    	      if (input.files && input.files[0]) {
    	         var reader = new FileReader();
    	         reader.onload = function(e) {
    	            $('#uploadimg').attr('src', e.target.result);

    	         }
    	         reader.readAsDataURL(input.files[0]);
    	      }
    	   }

    </script>
    
    <script type="text/javascript">
    
 
   $(function() {
	  
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


		     $('#resImg').attr("src","user/my/img/updateok.png");
			  $('#resImg').css("cursor","pointer");
			
		    }
	   });
	   
      $('#resImg').click(function() {
         //�±� �� ����
       
         if (confirm("�����Ͻðڽ��ϱ�?") == true){    //Ȯ��
            $('#update_frm').submit();
         }else{   //���
             return;
         }
   		});
   });
</script>
<style>
    body, code {
        font-size: 18px;
        font-family: 'Open Sans','Noto Sans KR',sans-serif;
 		
        }
        
   
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
     <div class="container" style="margin-top:100px">
    <h3 style="text-align:center"><img src="user/my/img/updateinfo.png" border=0></h3>
    
    <form id="update_frm" action="update_ok.do" method="post">
       <tr height=35></tr>
        <tr height=35></tr>
      <div class="form-group">
                    <table border=0 width=1000px align=center>
			         <tr>
           			<td width ="300" height="300" rowspan="9" align=center >
           			
                           <img src="user/my/img/profile.png" alt=""
                             width="250px" height="300px" id="uploadimg" style="border-radius:80%">
                      
           			<!-- <input type="image" src="user/my/img/profile.jpg" width="200px" height="190px" id="uploadimg" border=0><br>
           			 -->
           			 <br><br>
           			<input type="file" onchange="readURL(this);"
                        class="btn btn-default" name="upload" id="upload" value="���ϼ���"
                        size=50 style="margin: auto;">
           			
           	
           			
           			</tr>
			         <tr height=35>
			             <td width=20% align=right>ID&nbsp;&nbsp;</td>
			             <td width=80% align=left id="id">${id}</td>
			           </tr>
			           
                         <tr height=35>
				             <td width=20% align=right>Password&nbsp;&nbsp;</td>
				             <td width=80% align=left>
                                <input type=password name=pwd size=12 required id="pwd">
                            </td>
                        </tr>
                        
 						<tr height=35>
                         <td width=20% align=right>��й�ȣ Ȯ��&nbsp;&nbsp;</td>
                            <td width=80% align=left>
                                <input type=password name=pwd size=12 required id="pwdCk">
                            </td>
                        </tr>

                        <tr height=35>
				             <td width=20% align=right>�̸�&nbsp;&nbsp;</td>
				             <td width=80% align=left>
				              <input type=text name=name size=12 required id="name" value="${name }">
				             </td>
				           </tr>
				           
                        <tr height=35>
                             <td width=20% align=right>����&nbsp;&nbsp;</td>
                            <td width=80% align=left  id="sex" required>
               
                                <input type=radio id="man" name=sex value=���� checked>����
                                <input type=radio id="woman" name=sex value=����>����
                           
                            </td>
                        </tr>
                        
                        
                        <tr height=35>
            			 <td width=15% align=right id="birth">�������&nbsp;&nbsp;</td>
                            <td width=85% align=left>
                               
                                <input type=date name=birth size=20 required>
                            </td>
                        </tr>
                        
                       <tr height=35>
				             <td width=15% align=right id="tel">��ȭ��ȣ&nbsp;&nbsp;</td>
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
                             <td width=15% align=right >�̸���&nbsp;&nbsp;</td>
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
                   <tr height=35></tr>
                   <tr height=35></tr>
                   <tr height=35></tr>
                  
									<tr height=35>
						             <td align=center colspan="3">
						        
									<input type="image" src="user/my/img/update.png" id="resImg" border=0>
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
<!-- 
 
       <tr>
        <td width=15% align="right">��й�ȣ</td>
        <td width=85% align="left">
        <input type="password" size=10 name=pwd id="pwd1">
        </td>
       </tr> -->




