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
<title>信息管理系统-现金币转报单币</title>
<script type="text/javascript">
function goPage(v){
	document.getElementById("pageNo").value=v;
	document.getElementById("cashTaxForm").submit();
}

function tran(){
	if(confirm("确定要转报单币吗")){
		document.getElementById("cashTaxForm").action="cashTaxAction!addSave.${actionExt }";
		document.getElementById("cashTaxForm").submit();
	}
}

<c:if test="${requestScope.errCode!=null && requestScope.errCode=='passwd3err'}">
alert('三级密码错误');
</c:if>

<c:if test="${requestScope.errCode!=null && requestScope.errCode=='coinerr'}">
alert('转换金我额错误');
</c:if>

</script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">奖金业绩</span> <span class="font_navigate">&gt;</span>
						<span class="font_navigate">现金币转报单币</span>
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
			<td class="newZwTitle">现金币转报单币</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		
		 <td colspan="2" class="newGjmyGyUll" align="center" valign="top">
		 <form action="cashTaxAction.${actionExt }" id="cashTaxForm" name="cashTaxForm" method="post">
         <input type="hidden" name="pageNo" id="pageNo" value="${requestScope.pageInfo.page}" />
		 <input type="hidden" name="pageSize" id="pageSize" value="${requestScope.pageInfo.pageSize}" />
               <table border="0" cellpadding="0" cellspacing="0" class="table_1 tablepad" width="100%">
                   <tbody>
                   <tr>
                       <td align="center" colspan="9">
                           现金币---转换成---报单币</td>
                   </tr>
                   <tr>
                       <td align="right">
                           现有现金币：</td>
                       <td align="left">
                           <span id="Label2" style="display:inline-block;width:85px;">${sessionScope.member.cashCoin }</span></td>
                       <td align="right">
                           转换金额：</td>
                       <td align="left">
                           <input name="coin" type="text" id="coin" style="width:80px;"></td>
                       <td rowspan="2">
                           <input type="button" name="Button1" value="提 交" onclick="return tran();" id="Button1" class="tijiaobtn2">&nbsp;</td>
                   </tr>
                   <tr>
                       <td align="right">
                           现有报单币：</td>
                       <td align="left">
                           <span id="Label3" style="display:inline-block;width:85px;">${sessionScope.member.taxCoin }</span></td>
                       <td align="right">
                           三级密码：</td>
                       <td align="left">
                           <input name="passwd3" type="password" id="passwd3" style="width:80px;"></td>
                   </tr>
                   </tbody>
               </table>
               <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView1" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
                   <tbody>

                   <tr align="center" style="color:#000001;background-color:#F9E9D9;font-weight:bold;height:23px;">
                       <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_zc_id')" style="color:#000001;">编号</a></th><th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_zc_money')" style="color:#000001;">转换金额</a></th><th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$zc_date')" style="color:#000001;">日期</a></th>
                   </tr>


				<c:forEach items="${resultList }" var="cashTax" varStatus="i">
				<c:choose>
				<c:when test="${i.index%2==0 }">
					<tr class="gvRowStyle" align="center" style="color:#4A3C8C;background-color:WhiteSmoke;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                       <td style="color:Black;">${cashTax.code }</td><td style="color:Black;">${cashTax.coin }</td><td style="color:Black;"><fmt:formatDate value="${cashTax.dealtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                   </tr>
				</c:when>
				<c:otherwise>
					<tr class="gvAlternatingRow" align="center" style="color:#4A3C8C;background-color:White;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                       <td style="color:Black;">${cashTax.code }</td><td style="color:Black;">${cashTax.coin }</td><td style="color:Black;"><fmt:formatDate value="${cashTax.dealtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                   </tr>
				</c:otherwise>
				</c:choose>
				</c:forEach>
				<%@ include file="/jsp/common/page.jsp"%>
                   </tbody></table>
                   </form>
       		</td>
		</tr>
	</tbody>
</table>
</body>
</html>