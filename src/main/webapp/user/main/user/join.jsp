<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="table.css">
    <link rel="stylesheet" type="text/css"
	href="../../shadow/css/shadowbox.css">
	<script type="text/javascript" src="../../shadow/js/shadowbox.js"></script>
    <script type="text/javascript">
        function postfind()
        {
            window.open("../member/postfind.jsp","postfind",
                    "width=430,height=350,menubar=no,toolbar=no,scrollbars=yes");
        }
        Shadowbox.init({
    		players:["iframe"]
    	});
    	function idcheck()
    	{
    		Shadowbox.open({
    			content:'idcheck.jsp',
    			player:'iframe',
    			width:400,
    			height:200,
    			title:''
    		});
    	}
        /* function idcheck()
        {
        	alert("idcheck")
            window.open("idcheck.jsp","idcheck",
                    "width=350,height=150,menubar=no,toolbar=no,scrollbars=no");
        } */
    </script>
<style>
    body, code {
        font-size: 12px;
        font-family: 'Open Sans','Noto Sans KR',sans-serif;}
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
    <h3>회원 가입</h3>
    <div class="joinWrite">
    <form name="join_frm" action="../member/join_ok.do" method="post">
        <table border=1 bordercolor="black" width=500
               cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table border=0 width=500>
                        <th scope="row">아이디</th>
                            <td width=75% align=left>
                                <input type=text name=id size=12 readonly>
                                <input type="button" value="중복체크" onclick="idcheck()">
                            </td>
                        </tr>
                        <th scope="row">비밀번호</th>
                            <td width=75% align=left>
                                <input type=password name=pwd size=12 required>
                            </td>
                        </tr>

                        <th scope="row"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif" class="displaynone" alt="필수"> 비밀번호 확인</th>
                            <td width=75% align=left>
                                <input type=password name=pwd size=12 required>
                            </td>
                        </tr>

                        <<th scope="row">이름</th>
                            <td width=85% align=left>
                                <input type=text name=name size=12 required>
                            </td>
                        </tr>
                        <tr height=30>
                            <th scope="row">성별</th>
                            <td width=85% align=left>
                                <input type=radio name=sex value=남자 checked>남자
                                <input type=radio name=sex value=여자>여자
                            </td>
                        </tr>
                        <th scope="row">생년월일</th>
                            <td width=85% align=left>
                                <input type=date name=birth size=20>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">전화번호</th>
                             <td width=85% align=left>
                                <select name=tel1>
                                    <option>010</option>
                                    <option>011</option>
                                    <option>017</option>
                                </select>
                                <input type=text name=tel2 size=5> -
                                <input type=text name=tel3 size=5>
                            </td>
                        </tr>

                        <tr>
                            <th scope="row">이메일</th>
                            <td><input id="email1" name="email1" type="text" size="7"> @ <input id="email2" name="email2" type="text" size="7">

                                <select id="email3" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="">
                                <option value="" selected="selected">- 이메일 선택 -</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="yahoo.com">yahoo.com</option>
                                <option value="empas.com">empas.com</option>
                                <option value="korea.com">korea.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="etc">직접입력</option>
                            </select> <span id="emailMsg"></span>
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

<!-- 
					로그인/회원가입처리

					<li>
						<div class="login">
							<button id="show-dialog" type="button"
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored ">
								<i class="fa fa-chevron-circle-right"></i> 로그인
							</button>
							<dialog class="mdl-dialog">
							<h4 class="mdl-dialog__title">회원가입폼</h4>
							<div class="mdl-dialog__content">
								<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
									<div class="mdl-tabs__tab-bar">
										<a href="#login_form" class="mdl-tabs__tab is-active">로그인</a>
										<a href="#join_form" class="mdl-tabs__tab">회원가입</a>
									</div>
									login.jsp로 바꿀것
									<div class="mdl-tabs__panel is-active" id="login_form">

										<table border=0 width=200>
											<tr>
												<td align="right" width=30%>ID</td>
												<td align="left" width=70%><input type=text name=id
													size=20 id="id"></td>
											</tr>
											<tr>
												<td align="right" width=30%>PW</td>
												<td align="left" width=70%><input type=password
													name=pwd size=20 id="pwd"></td>
											</tr>
										</table>

										<button id="login_btn"
											class="mdl-button mdl-js-button mdl-button--raised"
											type="button">로그인</button>
										<div id="demo-snackbar-example"
											class="mdl-js-snackbar mdl-snackbar">
											<div class="mdl-snackbar__text"></div>
											<button class="mdl-snackbar__action" type="button"></button>
										</div>
									</div>

									JOIN.JSP
									<div class="mdl-tabs__panel" id="join_form">

										<form name="join_frm" action="../member/join_ok.do"
											method="post">

											<table border=0 width=1000>
												<th scope="row">아이디</th>
												<td width=75% align=left><input type=text name=id
													size=12 readonly> <input type="button" value="중복체크"
													onclick="idcheck()"></td>
												</tr>
												<th scope="row">비밀번호</th>
												<td width=75% align=left><input type=password name=pwd
													size=12 required></td>
												</tr>

												<th scope="row"><img
													src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
													class="displaynone" alt="필수"> 비밀번호 확인</th>
												<td width=75% align=left><input type=password name=pwd
													size=12 required></td>
												</tr>

												
												<th scope="row">이름</th>
												<td width=85% align=left><input type=text name=name
													size=12 required></td>
												</tr>
												<tr height=30>
													<th scope="row">성별</th>
													<td width=85% align=left><input type=radio name=sex
														value=남자 checked>남자 <input type=radio name=sex
														value=여자>여자</td>
												</tr>
												<th scope="row">생년월일</th>
												<td width=85% align=left><input type=date name=birth
													size=20></td>
												</tr>
												<tr>
													<th scope="row">전화번호</th>
													<td width=85% align=left><select name=tel1>
															<option>010</option>
															<option>011</option>
															<option>017</option>
													</select> <input type=text name=tel2 size=5> - <input
														type=text name=tel3 size=5></td>
												</tr>

												<tr>
													<th scope="row">이메일</th>
													<td><input id="email1" name="email1" type="text"
														size="7"> @ <input id="email2" name="email2"
														type="text" size="7"> <select id="email3"
														fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="">
															<option value="" selected="selected">- 이메일 선택 -</option>
															<option value="naver.com">naver.com</option>
															<option value="daum.net">daum.net</option>
															<option value="nate.com">nate.com</option>
															<option value="hotmail.com">hotmail.com</option>
															<option value="yahoo.com">yahoo.com</option>
															<option value="empas.com">empas.com</option>
															<option value="korea.com">korea.com</option>
															<option value="dreamwiz.com">dreamwiz.com</option>
															<option value="gmail.com">gmail.com</option>
															<option value="etc">직접입력</option>
													</select> <span id="emailMsg"></span></td>
												</tr>

											</table>

										</form>
									   <button type="button" class="mdl-button">회원가입</button>
									</div>
								</div>
							</div>
							<div class="mdl-dialog__actions">
								로그인 버튼처리 필요  로그인 버튼 누르면 logout띄우기
								<button type="button" class="mdl-button close">취소</button>
							</div>
							</dialog>
						</div>
					</li>
				</ul>
			</div>



 -->