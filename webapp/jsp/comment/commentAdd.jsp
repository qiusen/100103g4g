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
<title>信息管理系统-我要留言</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">资料信息</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">我要留言</span></td>
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
			<td class="newZwTitle">我要留言</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
			<td colspan="2" class="newGjmyGyUll" align="center">
				<div>
				<form action="commentAction!addSave.${actionExt }" id="commentForm" name="commentForm" method="post">
					<table class="table" id="GridView1"
						style="width: 100%; border-collapse: collapse;" border="0"
						cellpadding="3" cellspacing="0">
						<tbody>
							<tr align="center">
								<td align="center">
		首先非常感谢您光临本站，如果您有什么建议或者意见，请给我们留言，我们会尽快给您答复，谢谢！
								</td>
							</tr>
							<tr align="center">
								<td style="color: Black; width: 120px;">
								编号:<input name="comment.creator" id="comment.creator" value="${sessionScope.member.code }" readonly="readonly"/>
								</td>
							</tr>
							<tr align="center">
								<td>标题: 
								<select name="comment.type" id="comment.type">
								<option value="1">财务咨询</option>
								<option value="2">产品咨询</option>
								<option value="3">公司建议</option>
								<option value="4">其他咨询</option>
								</select>
								</td>
							</tr>
							<tr align="center">
								<td>内容: 
								<textarea rows="6" cols="10" name="comment.content" id="comment.content" style="width:330px;height:150px;"></textarea>
								</td>
							</tr>
							<tr align="center">
								<td>
								<input type="submit" value="提交留言" />
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>

			</td>
		</tr>
	</tbody>
</table>
</body>
</html>