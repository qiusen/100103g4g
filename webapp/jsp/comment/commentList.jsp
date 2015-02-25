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
<script type="text/javascript">
function goPage(v){
	document.getElementById("pageNo").value=v;
	document.getElementById("commentForm").submit();
}
</script>
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
		
		<td align="center" class="newGjmyGyUll" colspan="2">
                <table cellspacing="0" cellpadding="3" border="0" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;" id="GridView1" class="table">
                <tbody>
                <form name="commentForm" id="commentForm" method="post" action="commentAction.${actionExt}" >
				<input type="hidden" name="pageNo" id="pageNo" value="${requestScope.pageInfo.page}" />
				<input type="hidden" name="pageSize" id="pageSize" value="${requestScope.pageInfo.pageSize}" />
				<c:forEach items="${resultList }" var="comment" varStatus="i">
                
                
                
                
                <c:choose>
				<c:when test="${i.index%2==0 }">
                <tr align="center" style="color:#4A3C8C;background-color:WhiteSmoke;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;" class="gvRowStyle">
                    <td style="width:100%;">
                        <table align="center" style="width: 100%">
                            <tbody><tr>
                                <td width="100px">
                                    标题:</td>
                                <td style="width: 500px; text-align: left">
                                    <span id="GridView1_ctl02_Label1">
                                    <c:if test="${comment.type==1}">财务咨询</c:if>
									<c:if test="${comment.type==2}">产品咨询</c:if>
									<c:if test="${comment.type==3}">公司建议</c:if>
									<c:if test="${comment.type==4}">其他咨询</c:if>
                                    </span></td>
                            </tr>
                            <tr>
                                <td width="100px">
                                    留言时间:</td>
                                <td align="left">
                                    <span id="GridView1_ctl02_Label4"><fmt:formatDate value="${comment.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
                            </tr>
                            <tr>
                                <td width="100px">
                                    留言内容:</td>
                                <td align="left">
                                    <span id="GridView1_ctl02_Label2">${comment.content }</span></td>
                            </tr>
                            <tr>
                                <td width="100px" valign="top">
                                    回复内容:</td>
                                <td align="left">
                                            <span id="GridView1_ctl02_Label3"><p class="p" style="MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; mso-pagination: widow-orphan"><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">尊敬的<font face="Times New Roman">VIP</font></span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">会员：&nbsp;</span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 12pt; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt"><o:p></o:p></span></p>
<p class="p" style="MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; mso-pagination: widow-orphan"><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">${comment.revet }</span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 12pt; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt"><o:p></o:p></span></p>
<p class="p" style="MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; mso-pagination: widow-orphan"><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">4G<font face="宋体">商城电子商务平台</font></span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">祝您成就辉煌人生！</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt"><o:p></o:p></span></p>
<!--EndFragment--></span></td>
                            </tr>
                            </tbody></table>
                        <br>
                    </td>
                </tr>
                </c:when>
				<c:otherwise>
                
                <tr align="center" style="color:#4A3C8C;background-color:White;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;" class="gvAlternatingRow">
                    <td style="width:100%;">
                        <table align="center" style="width: 100%">
                            <tbody><tr>
                                <td width="100px">
                                    标题:</td>
                                <td style="width: 500px; text-align: left">
                                    <span id="GridView1_ctl03_Label1">
                                    <c:if test="${comment.type==1}">财务咨询</c:if>
									<c:if test="${comment.type==2}">产品咨询</c:if>
									<c:if test="${comment.type==3}">公司建议</c:if>
									<c:if test="${comment.type==4}">其他咨询</c:if>
                                    </span></td>
                            </tr>
                            <tr>
                                <td width="100px">
                                    留言时间:</td>
                                <td align="left">
                                    <span id="GridView1_ctl03_Label4"><fmt:formatDate value="${comment.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
                            </tr>
                            <tr>
                                <td width="100px">
                                    留言内容:</td>
                                <td align="left">
                                    <span id="GridView1_ctl03_Label2">${comment.content }</span></td>
                            </tr>
                            <tr>
                                <td width="100px" valign="top">
                                    回复内容:</td>
                                <td align="left">
                                            <span id="GridView1_ctl03_Label3"><p class="p" style="MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; mso-pagination: widow-orphan"><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">尊敬的<font face="Times New Roman">VIP</font></span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">会员：&nbsp;</span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 12pt; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt"><o:p></o:p></span></p>
<p class="p" style="MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; mso-pagination: widow-orphan"><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">${comment.revet }</span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 12pt; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt"><o:p></o:p></span></p>
<p class="p" style="MARGIN-TOP: 0pt; MARGIN-BOTTOM: 0pt; mso-pagination: widow-orphan"><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">&nbsp;&nbsp;&nbsp;</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt">4G<font face="宋体">商城电子商务平台</font></span><span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-fareast-font-family: 宋体; mso-font-kerning: 0.0000pt">祝您成就辉煌人生！</span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; FONT-WEIGHT: bold; mso-spacerun: 'yes'; mso-font-kerning: 0.0000pt"><o:p></o:p></span></p>
<!--EndFragment--></span></td>
                            </tr>
                            </tbody></table>
                        <br>
                    </td>
                </tr>
                </c:otherwise>
				</c:choose>
                
                
                </c:forEach>
                <%@ include file="/jsp/common/page.jsp"%>
                </form>
                </tbody></table>
                </td>
                
                
                
                
			
			
			
			
			
			
		</tr>
	</tbody>
</table>
</body>
</html>