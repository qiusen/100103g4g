<%@ page contentType="text/html;charset=UTF-8" %><%@ page import="com.g3g4.common.Property" %><%@ include file="/jsp/common/taglibs.jsp"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%=Property.SYSTEM_NAME %></title>
<script type="text/javascript">
alert('为了系统安全，请重新登录！！！');
window.parent.location="<%=Property.BASE %>";
</script>
</head>

<body>
<div style="margin-top:50px;margin-left:100px;">
为了系统安全，请重新登录！！！
</div>
</body>
</html>
