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
<title>信息管理系统-输入二级密码</title>
<script type="text/javascript">
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
					class="font_navigate">输入二级密码</span></td>
			</tr>
		</tbody>
	</table>
	<table style="margin-right:4px;" border="0" cellpadding="0" cellspacing="0" width="745">
            <tbody>
            <tr>
                <td colspan="2" height="7"></td>
            </tr>
            <tr>
                <td class="newZwTitle">
                    输入二级密码
                </td>
                <td class="newMoreBg">
                </td>
            </tr>
            <tr>
                <td colspan="2" height="8"></td>
            </tr>
            <tr>
                <td colspan="2" class="newGjmyGyUll" align="center" valign="top">
                <form action="${base }/login!op.${actionExt}" method="post">
                <input type="hidden" id="forwardUrl" name="forwardUrl" value="<%=request.getParameter("forwardUrl") %>" />
                
                    <div style="border-right: CCCCCC 1px solid; border-top: CCCCCC 1px solid; margin: 0px auto auto;
                                    border-left: CCCCCC 1px solid; border-bottom: CCCCCC 1px solid; text-align: center">
                        <br>
                        <br>

                        <h3>
                            请输入二级密码</h3>
                        <input name="passwd2" id="passwd2" type="password">
                        <br>

                        <br>
                        <br>
                        <input name="Button1" value="提交" id="Button1" class="tijiaobtn2" type="submit"><br>
                        <br><br><br>
                    </div>
				</form>
                </td>
            </tr>
            </tbody>
        </table>
	</body>
	</html>