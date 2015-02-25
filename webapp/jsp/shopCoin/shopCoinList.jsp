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
<title>信息管理系统-电商币明细</title>
<script type="text/javascript">
function goPage(v){
	document.getElementById("pageNo").value=v;
	document.getElementById("shopCoinForm").submit();
}
</script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">奖金业绩</span> <span class="font_navigate">&gt;</span>
						<span class="font_navigate">电商币明细</span>
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
			<td class="newZwTitle">电商币明细</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		
		<td colspan="2" align="center">
		<form action="shopCoinAction.${actionExt }" id="shopCoinForm" name="shopCoinForm" method="post">
         <input type="hidden" name="pageNo" id="pageNo" value="${requestScope.pageInfo.page}" />
		 <input type="hidden" name="pageSize" id="pageSize" value="${requestScope.pageInfo.pageSize}" />
           <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView1"
                 style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
              <tbody>
              <tr align="center" style="color:#000001;background-color:#F9E9D9;font-weight:bold;height:23px;">
                  <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_id')"
                                     style="color:#000001;">编号</a></th>
                  <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_name')"
                                     style="color:#000001;">姓名</a></th>
                  <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_fz')"
                                     style="color:#000001;">电商币</a></th>
                  <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_date')"
                                     style="color:#000001;">结算时间</a></th>
              </tr>
              <c:forEach items="${resultList }" var="shopCoin" varStatus="i">
				<c:choose>
				<c:when test="${i.index%2==0 }">
					<tr class="gvRowStyle" align="center"
		                  onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'"
		                  onmouseout="this.style.backgroundColor=c"
		                  style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: rgb(245, 245, 245);">
		                  <td style="color:Black;">${shopCoin.code }</td>
		                  <td style="color:Black;">${shopCoin.name }</td>
		                  <td style="color:Black;">${shopCoin.coin }</td>
		                  <td style="color:Black;"><fmt:formatDate value="${shopCoin.dealtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
		              </tr>
				</c:when>
				<c:otherwise>
					<tr class="gvAlternatingRow" align="center"
		                  onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'"
		                  onmouseout="this.style.backgroundColor=c"
		                  style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: white;">
		                  <td style="color:Black;">${shopCoin.code }</td>
		                  <td style="color:Black;">${shopCoin.name }</td>
		                  <td style="color:Black;">${shopCoin.coin }</td>
		                  <td style="color:Black;"><fmt:formatDate value="${shopCoin.dealtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
		              </tr>
				</c:otherwise>
				</c:choose>
				</c:forEach>

              <%@ include file="/jsp/common/page.jsp"%>
              </tbody>
          </table>
                </form>
                </td>
		</tr>
	</tbody>
</table>
</body>
</html>