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
<title>信息管理系统-销售业绩</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">个人资料</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">销售业绩</span></td>
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
			<td class="newZwTitle">销售业绩------直推会员 ${fn:length(memberList)} 人</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
                   <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView1" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
                       <tbody>
                       <tr align="center" style="color:#000001;background-color:#F9E9D9;font-weight:bold;height:23px;">
                           <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_id')" style="color:#000001;">编号</a></th>
                           <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_name')" style="color:#000001;">姓名</a></th>
                           <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_dian')" style="color:#000001;">服务中心</a></th>
                           <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_tj_id')" style="color:#000001;">推荐人</a></th>
                           <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_sh_date')" style="color:#000001;">审核时间</a></th>
                       </tr>
					<c:forEach items="${memberList }" var="member" varStatus="i">
					<c:choose>
					<c:when test="${i.index%2==0 }">
					<tr class="gvRowStyle" align="center" onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'" onmouseout="this.style.backgroundColor=c" style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: rgb(245, 245, 245);">
                           <td style="color:Black;">${member.code }</td><td style="color:Black;">${member.name }</td><td style="color:Black;">${member.servCode }</td><td style="color:Black;">${member.recoCode }</td><td style="color:Black;"><fmt:formatDate value="${member.exatetime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                       </tr>
					</c:when>
					<c:otherwise>
					<tr class="gvAlternatingRow" align="center" onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'" onmouseout="this.style.backgroundColor=c" style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: white;">
                           <td style="color:Black;">${member.code }</td><td style="color:Black;">${member.name }</td><td style="color:Black;">${member.servCode }</td><td style="color:Black;">${member.recoCode }</td><td style="color:Black;"><fmt:formatDate value="${member.exatetime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                       </tr>
					</c:otherwise>
					</c:choose>
					</c:forEach>

                       </tbody>
                   </table>

               </td>
       </tr>
       <tr>
           <td colspan="2" height="11"></td>
       </tr>
       </tbody>
       </table>
</body>
</html>