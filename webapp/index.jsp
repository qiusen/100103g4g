<%@ page contentType="text/html;charset=UTF-8"%><%@ include
	file="/jsp/common/taglibs.jsp"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${base}/css/default.css" type="text/jtext/css" />
<link href="${base}/css/gdv.css" type="text/jtext/css" />
<link href="${base}/css/font.css" type="text/jtext/css" />
<link href="${base}/css/login.css" type="text/jtext/css" />

<title>信息管理系统-统一登陆入口</title>
<script language="javascript">
     //<![CDATA[
     var theForm = document.forms['form1'];
     if (!theForm) {
         theForm = document.form1;
     }
     //]]>
     
<c:if test="${requestScope.errorStr!=null && requestScope.errorStr!=''}">
alert("${requestScope.errorStr}");
</c:if>
 </script>

<style type="text/css">
body {
	margin: 0px;
	font-size: 12px;
	background-color: #CCDAF7;
	background-image: url(${base}/images/d.jpg);
	background-repeat: no-repeat;
	background-position: top;
	background-attachment: fixed;
	-moz-background-size: 100% 100%; /*  Firefox 3.6 */
	-o-background-size: 100% 100%; /* Opera 9.5 */
	-webkit-background-size: 100% 100%; /* Safari 3.0 */
	background-size: 100% 100%;
	/*  Firefox 4.0 and other CSS3-compliant browsers */
	-moz-border-image: url(${base}/images/d.jpg) 0;
	/* Firefox 3.5 */
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='${base}/images/d.jpg',
		sizingMethod='scale');
	position: relative;
	line-height: 2;
	height: 100%;
	overflow: hidden
}
</style>
</head>


<body style="OVERFLOW-X: hidden; OVERFLOW-Y: hidden;">
	<form name="form1" method="post" action="login.${actionExt}" id="form1">
		<div>
			<div id="UpdatePanel1">
				<div class="youzhong">.</div>
				<div
					style="TEXT-ALIGN: center; MARGIN: auto; WIDTH: 100%; HEIGHT: auto">
					<div style="TEXT-ALIGN: left; WIDTH: 880px; VERTICAL-ALIGN: top"></div>
					<br><br><br><br><br>
					<table border="0" cellspacing="0" cellpadding="0" width="112%"
						style="position: relative">
						<tbody>
							<tr>
								<td width="53%" align="middle">.</td>
								<td align="middle">
									<table border="0" cellspacing="0" cellpadding="0" width="27%"
										align="left">
										<tbody>
											<tr>
												<td height="136" valign="center" align="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
													hspace="22" src="images/logoo.gif" width="286" height="90"></td>
											</tr>
											<tr>
												<td>
													<table style="FONT-SIZE: 13px" border="0" cellspacing="0"
														cellpadding="0" width="90%" align="center">
														<tbody>
															<tr>
																<td height="33" width="26%" align="middle"><strong><font
																		class="f11" color="#336699">用户名</font></strong></td>
																<td height="33" width="74%" align="left" valign="middle"><font
																	color="#ffffff"> <input name="code" type="text" id="code"
																		style="color: #81B432; border-color: #82C4DE; border-width: 2px; border-style: Solid; font-size: 10pt; height: 18px; width: 150px;">
																</font></td>
															</tr>
															<tr>
																<td height="33" align="middle"><strong><font
																		class="f11" color="#336699">密&nbsp;&nbsp;码</font></strong></td>
																<td height="33" align="left" valign="middle"><font
																	color="#ffffff"> <input name="password" type="password" id="password"
																		style="color: #81B432; border-color: #82C4DE; border-width: 2px; border-style: Solid; font-size: 10pt; height: 18px; width: 150px;">
																</font></td>
															</tr>
															<tr>
																<td height="33" align="middle"><strong><font
																		class="f11" color="#336699">验证码</font></strong></td>
																<td height="33" align="left" valign="middle"><input
																	name="checkCode" type="text" id="checkCode"
																	style="color: #81B432; border-color: #82C4DE; border-width: 2px; border-style: Solid; font-size: 10pt; height: 18px; width: 75px;">&nbsp;
																	<img alt="看不清？点击更换" onclick="this.src=this.src + '?'"
																	style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; height: 23px; width: 65px;"
																	id="Image2" src="${base }/getcheckimage"></td>
															</tr>
															<tr>
																<td height="33" align="center" colspan="2">&nbsp; <input
																	type="image" 
																	src="images/anniu.jpg" style="border-width: 0px;">
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>

				</div>

			</div>

		</div>
	</form>
</body>
</html>