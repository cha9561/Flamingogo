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
    <h3>ȸ�� ����</h3>
    <div class="joinWrite">
    <form name="join_frm" action="../member/join_ok.do" method="post">
        <table border=1 bordercolor="black" width=500
               cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table border=0 width=500>
                        <th scope="row">���̵�</th>
                            <td width=75% align=left>
                                <input type=text name=id size=12 readonly>
                                <input type="button" value="�ߺ�üũ" onclick="idcheck()">
                            </td>
                        </tr>
                        <th scope="row">��й�ȣ</th>
                            <td width=75% align=left>
                                <input type=password name=pwd size=12 required>
                            </td>
                        </tr>

                        <th scope="row"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif" class="displaynone" alt="�ʼ�"> ��й�ȣ Ȯ��</th>
                            <td width=75% align=left>
                                <input type=password name=pwd size=12 required>
                            </td>
                        </tr>

                        <<th scope="row">�̸�</th>
                            <td width=85% align=left>
                                <input type=text name=name size=12 required>
                            </td>
                        </tr>
                        <tr height=30>
                            <th scope="row">����</th>
                            <td width=85% align=left>
                                <input type=radio name=sex value=���� checked>����
                                <input type=radio name=sex value=����>����
                            </td>
                        </tr>
                        <th scope="row">�������</th>
                            <td width=85% align=left>
                                <input type=date name=birth size=20>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">��ȭ��ȣ</th>
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
                            <th scope="row">�̸���</th>
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
					�α���/ȸ������ó��

					<li>
						<div class="login">
							<button id="show-dialog" type="button"
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored ">
								<i class="fa fa-chevron-circle-right"></i> �α���
							</button>
							<dialog class="mdl-dialog">
							<h4 class="mdl-dialog__title">ȸ��������</h4>
							<div class="mdl-dialog__content">
								<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
									<div class="mdl-tabs__tab-bar">
										<a href="#login_form" class="mdl-tabs__tab is-active">�α���</a>
										<a href="#join_form" class="mdl-tabs__tab">ȸ������</a>
									</div>
									login.jsp�� �ٲܰ�
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
											type="button">�α���</button>
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
												<th scope="row">���̵�</th>
												<td width=75% align=left><input type=text name=id
													size=12 readonly> <input type="button" value="�ߺ�üũ"
													onclick="idcheck()"></td>
												</tr>
												<th scope="row">��й�ȣ</th>
												<td width=75% align=left><input type=password name=pwd
													size=12 required></td>
												</tr>

												<th scope="row"><img
													src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"
													class="displaynone" alt="�ʼ�"> ��й�ȣ Ȯ��</th>
												<td width=75% align=left><input type=password name=pwd
													size=12 required></td>
												</tr>

												
												<th scope="row">�̸�</th>
												<td width=85% align=left><input type=text name=name
													size=12 required></td>
												</tr>
												<tr height=30>
													<th scope="row">����</th>
													<td width=85% align=left><input type=radio name=sex
														value=���� checked>���� <input type=radio name=sex
														value=����>����</td>
												</tr>
												<th scope="row">�������</th>
												<td width=85% align=left><input type=date name=birth
													size=20></td>
												</tr>
												<tr>
													<th scope="row">��ȭ��ȣ</th>
													<td width=85% align=left><select name=tel1>
															<option>010</option>
															<option>011</option>
															<option>017</option>
													</select> <input type=text name=tel2 size=5> - <input
														type=text name=tel3 size=5></td>
												</tr>

												<tr>
													<th scope="row">�̸���</th>
													<td><input id="email1" name="email1" type="text"
														size="7"> @ <input id="email2" name="email2"
														type="text" size="7"> <select id="email3"
														fw-filter="isFill" fw-label="�̸���" fw-alone="N" fw-msg="">
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
													</select> <span id="emailMsg"></span></td>
												</tr>

											</table>

										</form>
									   <button type="button" class="mdl-button">ȸ������</button>
									</div>
								</div>
							</div>
							<div class="mdl-dialog__actions">
								�α��� ��ưó�� �ʿ�  �α��� ��ư ������ logout����
								<button type="button" class="mdl-button close">���</button>
							</div>
							</dialog>
						</div>
					</li>
				</ul>
			</div>



 -->