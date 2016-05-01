<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Insert title here</title>

    <link rel="stylesheet" type="text/css"
	href="../../shadow/css/shadowbox.css">
	<script type="text/javascript" src="../../shadow/js/shadowbox.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
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
    			title:'아이디중복체크'
    		});
    	}
    
    	   
	  //email 제이쿼리 - email까지 다 입력해야 버튼 활성
	
		    
	   //email 활성화
		   $(function(){
		  
			   
			   $('#email_select').change(function(){
				    if($('#email_select').val() == "1"){
				     $("#email2").val(""); //값 초기화
				     $("#email2").prop("readonly",false); //활성화
				    } else if($('#email_select').val() == ""){
				     $("#email2").val(""); //값 초기화
				     $("#email2").prop("readonly",true); //textBox 비활성화
				    } else {
				     $("#email2").val($('#email_select').val()); //선택값 입력
				     $("#email2").prop("readonly",true); //비활성화
	
				    }
						
			   });
			  
			   $('#resImg').click(function(){
					
					var id=$('#id').val();
					if(id.trim()=="")
					{
						$('#id').focus();
						return;
					}
					
					var pwd=$('#pwd').val();
					if(pwd.trim()=="")
					{
						$('#pwd').focus();
						return;
					}
					
					var pwdCk=$('#pwdCk').val();
					if(pwdCk.trim()=="")
					{
						$('#pwdCk').focus();
						return;
					}
					
					var name=$('#name').val();
					if(name.trim()=="")
					{
						$('#name').focus();
						return;
					}
					
					var id=$('#tel2').val();
					if(tel2.trim()=="")
					{
						$('#tel2').focus();
						return;
					}
					var id=$('#tel3').val();
					if(tel3.trim()=="")
					{
						return;
					}
					
					var email1=$('#email1').val();
					if(email1.trim()=="")
					{
						return;
					}
					var email2=$('#email2').val();
					if(email2.trim()=="")
					{
						return;
					}
					
					$('#resImg').attr("src","joinok.png");
					$('#resImg').css("cursor","pointer"); 
					
					
			   });
			   
			  
			   
			   
			   $('#resImg').click(function(){
					var src=$('#resImg').attr("src");
					if(src=="join.png")
					{
						return;
			
					}
					else
					{
					
						$('#join_frm').submit();
						ShadowClose();
					}
				   
			 	}); 
		   });
	  
	  //창닫기
	  function ShadowClose() {
    		    parent.Shadowbox.close();
    		} 
    	 
    </script>
<style>
    body, code {
        font-size: 12px;
        font-family: 'Open Sans','Noto Sans KR',sans-serif;
 		margin: 10px;
        padding: 10px;
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
    <h3><img src="joinus.png" border=0></h3>
    <div class="joinWrite">
    <form id="join_frm" action="join_ok.do" method="post">
       <!--  <table border=0 width=500
               cellpadding="0" cellspacing="0"> -->
      
                    <table border=0 width=400 align=center>
			         
			         <tr height=35>
			             <td width=15% align=right>ID</td>
			             <td width=85% align=left>
			              <input type=text name=id size=12 id="id" readonly>
			              <input type="button" value="중복체크" onclick="idcheck()">
			             </td>
			           </tr>
			           
                         <tr height=35>
				             <td width=15% align=right>Password</td>
				             <td width=85% align=left>
                                <input type=password name=pwd size=12 required id="pwd">
                            </td>
                        </tr>
                        
 						<tr height=35>
                         <td width=15% align=right>비밀번호 확인</td>
                            <td width=75% align=left>
                                <input type=password name=pwd size=12 required id="pwdCk">
                            </td>
                        </tr>

                        <tr height=35>
				             <td width=15% align=right>이름</td>
				             <td width=85% align=left>
				              <input type=text name=name size=12 required id="name">
				             </td>
				           </tr>
				           
                        <tr height=35>
                             <td width=15% align=right>성별</td>
                            <td width=85% align=left>
               
                                <input type=radio name=sex value=남자 checked>남자
                                <input type=radio name=sex value=여자>여자
                           
                            </td>
                        </tr>
                        
                        
                        <tr height=35>
            			 <td width=15% align=right id="birth">생년월일</td>
                            <td width=85% align=left>
                                <input type=date name=birth size=20>
                            </td>
                        </tr>
                        
                       <tr height=35>
				             <td width=15% align=right id="tel">전화번호</td>
				             <td width=85% align=left>
				              <select name=tel1>
				                <option>010</option>
				                <option>011</option>
				                <option>017</option>
				              </select>
				              <input type=text name=tel2 size=7 id="tel2">-
				              <input type=text name=tel3 size=7 id="tel3">
				             </td>
         			  </tr>

                        <tr height=35>
                             <td width=15% align=right>이메일</td>
                             <td> <input type="text" id="email1" size="10" /> @ <input type="text" id="email2" size="10"/>
  								<select id="email_select">
   								<option value="" selected="selected">::선택하기::</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="yahoo.com">yahoo.com</option>
                                <option value="empas.com">empas.com</option>
                                <option value="korea.com">korea.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="1">::직접입력::</option>
                            </select>
                            </td>
                        </tr>
                        <tr height=30></tr>
									<tr height=35>
						             <td colspan="2" align=center>

					

						             <img src="join.png" border=0 id="resImg">
						             <img src="cancle.png" border=0 id="cancleBtn" onclick="ShadowClose()">
						              <!-- <input type="button" value="취소" onclick='ShadowClose()'> -->
						               </td>
           							</tr>
     
       </table>
    </form>
    </div>
  </center>
</body>
</html>






