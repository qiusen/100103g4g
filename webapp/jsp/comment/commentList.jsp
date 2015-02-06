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
<title>信息管理系统-查看留言</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">资料信息</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">查看留言</span></td>
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
			<td class="newZwTitle">查看留言</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
			<td colspan="2" class="newGjmyGyUll" align="center">
			<div>
				<table class="table" id="GridView1"
					style="width: 100%; border-collapse: collapse;" border="0"
					cellpadding="3" cellspacing="0">
					<tbody>
						<c:forEach items="${resultList }" var="comment" varStatus="i">
						<tr align="center">
							<td style="width: 35;">标题：</td>
							<td align="left">
							<c:if test="${comment.type==1}">财务咨询</c:if>
							<c:if test="${comment.type==2}">产品咨询</c:if>
							<c:if test="${comment.type==3}">公司建议</c:if>
							<c:if test="${comment.type==4}">其他咨询</c:if>
							</td>
						</tr>
						<tr align="center">
						<td style="width: 35;">留言时间：</td>
							<td style="color: Black; "><fmt:formatDate value="${comment.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						</tr>
						<tr align="center">
						<td style="width: 35;">留言内容：</td>
							<td style="color: Black; ">${comment.content }</td>
						</tr>
						<tr align="center">
						<td style="width: 35;">回复：</td>
							<td style="color: Black; ">${comment.revet }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>