<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>내정보 수정</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

    <link rel="stylesheet" type="text/css"
	href="../../shadow/css/shadowbox.css">
	<script type="text/javascript" src="../../shadow/js/shadowbox.js"></script>
 <!--    <link rel="stylesheet" type="text/css" href="user/shadow/css/shadowbox.css"> -->

<script type="text/javascript">

Shadowbox.init({
	players:["iframe"]
});
    	function upload()
    	{
    		Shadowbox.open({
    			content:'user/my/profile.jsp',
    			player:'iframe',
    			width:240,
    			height:150,
    			title:'프로필 등록하기'
    		});
    	}


    	$(function(){
	
			   

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
    <h3><img src="user/main/img/joinus.png" border=0></h3>
    <!-- 회원정보수정 img로 바꿀것 -->
    
    <form id="join_frm" action="update_ok.do" method="post">
      <div class="form-group">
                    <table border=0 width=800 align=center>
			         <tr>
           			<td width ="250" height="300" rowspan="9" align=center>
           			<input type="image" src="user/my/img/profile.jpg" width="170px" height="190px" id="profile" border=0><br>
           			<input type="image" src="user/main/img/join.png" id="upload" width="170px" border=0 onclick="upload()"></td>
           			<!-- 프로필 등록하기 이미지 넣기 -->
           			
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
                         <td width=20% align=right>비밀번호 확인&nbsp;&nbsp;</td>
                            <td width=80% align=left>
                                <input type=password name=pwd size=12 required id="pwdCk">
                            </td>
                        </tr>

                        <tr height=35>
				             <td width=20% align=right>이름&nbsp;&nbsp;</td>
				             <td width=80% align=left>
				              <input type=text name=name size=12 required id="name" value="${name }">
				             </td>
				           </tr>
				           
                        <tr height=35>
                             <td width=20% align=right>성별&nbsp;&nbsp;</td>
                            <td width=80% align=left  id="sex" required>
               
                                <input type=radio id="man" name=sex value=남자 checked>남자
                                <input type=radio id="woman" name=sex value=여자>여자
                           
                            </td>
                        </tr>
                        
                        
                        <tr height=35>
            			 <td width=15% align=right id="birth">생년월일&nbsp;&nbsp;</td>
                            <td width=85% align=left>
                                <input type=date name=birth size=20 required>
                            </td>
                        </tr>
                        
                       <tr height=35>
				             <td width=15% align=right id="tel">전화번호&nbsp;&nbsp;</td>
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
                             <td width=15% align=right >이메일&nbsp;&nbsp;</td>
                             <td> <input type="text" id="email1" size="10" required / > @ <input type="text" id="email2" size="10" required/>
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
						             <td align=center colspan="3">
						             <!-- ok 버튼으로 이미지 바꾸기 -->
									<input type="image" src="user/main/img/join.png" id="resImg" border=0>
						            <input type="image" src="user/main/img/cancle.png" border=0 id="cancleBtn" onclick="javascript:history.back()">
						              
						             </td>
           				</tr>
           				</tr>
       </table>
       </div>
    </form>
    </div>
  </center>
</body>
</html>






