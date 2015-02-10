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
<title>信息管理系统-会员</title>
<script type="text/javascript">
function goPage(v){
	document.getElementById("pageNo").value=v;
	document.getElementById("memberForm").submit();
}
</script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">会员管理</span> <span class="font_navigate">&gt;</span>
						<c:if test="${requestScope.status==0 }"><span class="font_navigate">未审会员</span></c:if>
						<c:if test="${requestScope.status==1 }"><span class="font_navigate">已审会员</span></c:if>
						</td>
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
			<td class="newZwTitle"><c:if test="${requestScope.status==0 }">未审会员</c:if><c:if test="${requestScope.status==1 }">已审会员</c:if></td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		<td colspan="2" class="newGjmyGyUll" align="center" style="height: 420px" valign="top">
         <form action="memberAction.${actionExt }" id="memberForm" name="memberForm" method="post">
         <input type="hidden" name="pageNo" id="pageNo" value="${requestScope.pageInfo.page}" />
		 <input type="hidden" name="pageSize" id="pageSize" value="${requestScope.pageInfo.pageSize}" />
         <input type="hidden" name="status" id="status" value="${requestScope.status }" />
         <table width="100%">
             <tbody>
             <tr>
                 <td style="width: 100px" align="left">
                     查询方式：
                 </td>
                 <td style="width: 100px" align="left">
                     <select name="DropDownList1" id="DropDownList1" disabled="disabled">
						<c:if test="${requestScope.status==0 }"><option selected="selected" value="0">未审会员</option></c:if>
						<c:if test="${requestScope.status==1 }"><option selected="selected" value="1">已审会员</option></c:if>
                     </select></td>
                 <td style="width: 100px">
                     <input name="member.code" type="text" id="member.code" style="width:107px;"></td>
                 <td style="width: 100px" align="left">
                     <input type="submit" name="Button1" value="查询" id="Button1" class="tijiaobtn2"></td>
                 <td style="width: 100px">
                 </td>
                 <td style="width: 100px">
                 </td>
                 <td style="width: 100px">
                 </td>
                 <td style="width: 100px">
                 </td>
             </tr>
             </tbody>
         </table>
         <br>
                        
                        
			
			
			
			
			
			
			
			<div>
            <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView1"
                   style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
                <tbody>
                <tr align="center"
                    style="color:#000001;background-color:#F9E9D9;font-weight:bold;height:23px;">
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_id')"
                                       style="color:#000001;">编号</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_name')"
                                       style="color:#000001;">姓名</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_zczx')"
                                       style="color:#000001;">注册人</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_dian')"
                                       style="color:#000001;">服务中心</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_tj_id')"
                                       style="color:#000001;">推荐人</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_up_id')"
                                       style="color:#000001;">管理人</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_where')"
                                       style="color:#000001;">位置</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_sh_date')"
                                       style="color:#000001;">审核时间</a></th>
                </tr>
                <c:forEach items="${resultList }" var="member" varStatus="i">
				<c:choose>
				<c:when test="${i.index%2==0 }">
					<tr class="gvRowStyle" align="center"
	                    onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'"
	                    onmouseout="this.style.backgroundColor=c"
	                    style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: rgb(245, 245, 245);">
	                    <td style="color:Black;">${member.code }</td>
	                    <td style="color:Black;">${member.name }</td>
	                    <td style="color:Black;">${member.creator }</td>
	                    <td style="color:Black;">${member.servCode }</td>
	                    <td style="color:Black;">${member.recoCode }</td>
	                    <td style="color:Black;">${member.managerCode }</td>
	                    <td style="color:Black;">
	                        <span id="GridView1_ctl02_Label1">${member.area }区</span>
	                    </td>
	                    <td style="color:Black;width:110px;"><fmt:formatDate value="${member.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                </tr>
				</c:when>
				<c:otherwise>
					<tr class="gvAlternatingRow" align="center"
	                    onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'"
	                    onmouseout="this.style.backgroundColor=c"
	                    style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: white;">
	                    <td style="color:Black;">${member.code }</td>
	                    <td style="color:Black;">${member.name }</td>
	                    <td style="color:Black;">${member.creator }</td>
	                    <td style="color:Black;">${member.servCode }</td>
	                    <td style="color:Black;">${member.recoCode }</td>
	                    <td style="color:Black;">${member.managerCode }</td>
	                    <td style="color:Black;">
	                        <span id="GridView1_ctl03_Label1">${member.area }区</span>
	                    </td>
	                    <td style="color:Black;width:110px;"><fmt:formatDate value="${member.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                </tr>
				</c:otherwise>
				</c:choose>
				</c:forEach>
                <%@ include file="/jsp/common/page.jsp"%>
                </tbody>
            </table>
        </div>
    </td>
		</tr>
	</tbody>
</table>
</body>
</html>