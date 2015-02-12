<%@ page contentType="text/html;charset=UTF-8"%><%@ include
	file="/jsp/common/taglibs.jsp"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${base}/css/default.css" type="text/css" rel="stylesheet">
<link href="${base}/css/gdv.css" type="text/css" rel="stylesheet">

<link href="${base}/css/style.css" rel="stylesheet" type="text/css">
<link href="${base}/css/newadd.css" rel="stylesheet" type="text/css">

<link href="${base}/css/info.css" type="text/css" rel="stylesheet">
<title>信息管理系统-注册会员</title>
<script type="text/javascript">
function changePasswd12(){
	document.getElementById("changeType").value=12;
	document.getElementById("memberForm").submit();
}

function changePasswd3(){
	document.getElementById("changeType").value=3;
	document.getElementById("memberForm").submit();
}
<c:if test="${requestScope.edit==1}">
alert('修改成功！');
</c:if>
<c:if test="${requestScope.errStr!=null && requestScope.errStr!=''}">
alert('${requestScope.errStr}');
</c:if>
</script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">个人资料</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">修改密码</span></td>
		</tr>
	</tbody>
</table>
<table style="margin-right: 4px;" border="0" cellpadding="0"
	cellspacing="0" width="745">
	<tbody>
		<tr>
			<td colspan="2" height="7"></td>
		</tr>
		<tr>
			<td class="newZwTitle">修改密码</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
			<td colspan="2" class="newGjmyGyUll" align="left" valign="top">
                    <form action="memberAction!savePasswd.${actionExt }" id="memberForm" name="memberForm" method="post">
                    <input type="hidden" id="changeType" name="changeType" value="12" />
                    <table class="zhucetab" style="border-collapse:collapse; border-style:solid;" border="1" cellpadding="0" cellspacing="0" width="480">
                        <tbody>
                        <tr>
                            <td colspan="3" align="center">修改一二级密码</td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">
                                会 员 编 号 :</td>
                            <td colspan="2">
                                <span id="Label1">${sessionScope.member.code}</span></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">
                                一级原密码:</td>
                            <td colspan="2">
                                <input name="oldpasswd1" id="oldpasswd1" style="width:120px;" type="password">（即：入口登陆密码）</td>
                        </tr>
                        <tr>
                            <td style="width: 25%" align="center">
                                三级原密码:</td>
                            <td colspan="2">
                                <input name="oldpasswd3" id="oldpasswd3" style="width:120px;" type="password"></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">
                                一级新密码:</td>
                            <td colspan="2">
                                <input name="newpasswd1" id="newpasswd1" style="width:120px;" type="password"></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">
                                确 认 密 码 :</td>
                            <td colspan="2">
                                <input name="renewpasswd1" id="renewpasswd1" style="width:120px;" type="password">
                                &nbsp;&nbsp;<span>*</span><span id="CompareValidator1" style="color:Red;visibility:hidden;">确认密码与新密码不相同</span></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">
                                二级新密码:</td>
                            <td colspan="2">
                                <input name="newpasswd2" id="newpasswd2" style="width:120px;" type="password"></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">确 认 密 码 :</td>
                            <td colspan="2">
                                <input name="renewpasswd2" id="renewpasswd2" style="width:120px;" type="password">
                                &nbsp;&nbsp;<span>*</span><span id="CompareValidator2" style="color:Red;visibility:hidden;">确认密码与新密码不相同</span></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center"></td>
                            <td colspan="2" align="left"><input name="Button1" value="修改密码" onclick="changePasswd12()" id="Button1" class="tijiaobtn" type="submit"></td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">注:请定期修改您的密码并且牢记它,同时不要将您的 "重要信息" 透露给他人!</td>
                        </tr>
                        </tbody>
                    </table>
                    <br><br>
                    <table class="zhucetab" style="border-collapse:collapse; border-style:solid;" border="1" cellpadding="0" cellspacing="0" width="480">
                        <tbody>
                        <tr>
                            <td colspan="3" align="center">修改三级密码</td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">
                                三级原密码:</td>
                            <td colspan="2">
                                <input name="oldpwd3" id="oldpwd3" style="width:120px;" type="password"></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center">
                                三级新密码:</td>
                            <td colspan="2">
                                <input name="newpwd3" id="newpwd3" style="width:120px;" type="password"></td>
                        </tr>
                        <tr>
                            <td style="width:25%" align="center"></td>
                            <td colspan="2" align="left"><input name="Button1" value="修改" onclick="changePasswd3()" id="Button1" class="tijiaobtn" type="submit"></td>
                        </tr>
                        </tbody>
                    </table>
                    </form>
       </td>
       </tr>
       <tr>
           <td colspan="2" height="11"></td>
       </tr>
       </tbody>
       </table>
       
       
</body>
</html>