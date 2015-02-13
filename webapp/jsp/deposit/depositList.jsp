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
<title>信息管理系统-充值记录</title>
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
						<span class="font_navigate">充值记录</span>
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
			<td class="newZwTitle">充值记录</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		
		<td colspan="2" align="center">
		<form action="memberAction.${actionExt }" id="memberForm" name="memberForm" method="post">
         <input type="hidden" name="pageNo" id="pageNo" value="${requestScope.pageInfo.page}" />
		 <input type="hidden" name="pageSize" id="pageSize" value="${requestScope.pageInfo.pageSize}" />
                    <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView1" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
                       <thead>
                        <tr align="center" style="color:#000001;background-color:#F9E9D9;font-weight:bold;height:23px;">
                            <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_id')" style="color:#000001;">编号</a></th>
                            <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_money')" style="color:#000001;">所充报单币</a></th>
                            <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_rec_date')" style="color:#000001;">充值日期</a></th>
                            <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_lb')" style="color:#000001;">说明</a></th>
                        </tr>
                       </thead>

                        <tbody>
                        <c:forEach items="${resultList }" var="deposit" varStatus="i">
				<c:choose>
				<c:when test="${i.index%2==0 }">
					<tr class="gvRowStyle" align="center" style="color:#4A3C8C;background-color:WhiteSmoke;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                            <td style="color:Black;">${deposit.code }</td><td style="color:Black;">${deposit.taxCoin }</td><td style="color:Black;"><fmt:formatDate value="${deposit.dealtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td><td style="color:Black;">${deposit.des }</td>
                        </tr>
				</c:when>
				<c:otherwise>
					<tr class="gvAlternatingRow" align="center" style="color:#4A3C8C;background-color:White;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                            <td style="color:Black;">${deposit.code }</td><td style="color:Black;">${deposit.taxCoin }</td><td style="color:Black;"><fmt:formatDate value="${deposit.dealtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td><td style="color:Black;">${deposit.des }</td>
                        </tr>
				</c:otherwise>
				</c:choose>
				</c:forEach>
                        
                        <%@ include file="/jsp/common/page.jsp"%>
                        </tbody>
                    </table>
                </td>
		</tr>
	</tbody>
</table>
</body>
</html>