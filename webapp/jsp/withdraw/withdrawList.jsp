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
<title>信息管理系统-提现</title>
<script type="text/javascript">
function goPage(v){
	document.getElementById("pageNo").value=v;
	document.getElementById("cashTaxForm").submit();
}

function draw(){
	if(confirm("确定要提现吗")){
		document.getElementById("withdrawForm").action="withdrawAction!addSave.${actionExt }";
		document.getElementById("withdrawForm").submit();
	}
}

<c:if test="${requestScope.errCode!=null && requestScope.errCode=='targeterr'}">
alert('目标用户不存在');
</c:if>

<c:if test="${requestScope.errCode!=null && requestScope.errCode=='passwd3err'}">
alert('三级密码错误');
</c:if>

<c:if test="${requestScope.errCode!=null && requestScope.errCode=='coinerr'}">
alert('转换金额错误');
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
						<span class="font_navigate">申请提现</span>
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
			<td class="newZwTitle">申请提现</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		
		 <td colspan="2" class="newGjmyGyUll" align="center" valign="top">
		 <form action="withdrawAction.${actionExt }" id="withdrawForm" name="withdrawForm" method="post">
         <input type="hidden" name="pageNo" id="pageNo" value="${requestScope.pageInfo.page}" />
		 <input type="hidden" name="pageSize" id="pageSize" value="${requestScope.pageInfo.pageSize}" />
         <table border="0" cellpadding="0" cellspacing="0" class="table_1 tablepad" width="100%">
              <tbody><tr>
                  <td align="right" style="width: 70px">
                      编&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
                  <td align="left" style="width: 100px">
                      <span id="Label1" style="display:inline-block;width:85px;">${sessionScope.member.code }</span></td>
                  <td align="right" style="width: 100px">
                      现有现金币：</td>
                  <td align="left" style="width: 100px">
                      <span id="Label2" style="display:inline-block;width:85px;">${sessionScope.member.cashCoin }</span></td>
                  <td rowspan="2" style="width: 100px">
                      <input type="button" name="Button1" value="提 交" onclick="return draw();" id="Button1" class="tijiaobtn2"></td>
              </tr>
              <tr>
                  <td align="right" style="width: 70px">
                      提取金额：</td>
                  <td align="left" style="width: 100px">
                      <input name="coin" type="text" id="coin" style="width:80px;"></td>
                  <td align="right" style="width: 100px">
                      三级密码：</td>
                  <td align="left" style="width: 100px">
                      <input name="passwd3" type="password" id="passwd3" style="width:80px;"></td>
              </tr>
              </tbody></table>
          <table class="table" cellspacing="0" cellpadding="2" border="0" id="GridView1" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
              <thead>
                  <tr align="center" style="color:#000001;background-color:#F9E9D9;font-weight:bold;">
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_xy_money')" style="color:#000001;">金额</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_zc_money')" style="color:#000001;">提现金额</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_sy_money')" style="color:#000001;">剩余金额</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$beizhu')" style="color:#000001;">备注</a></th>
                    <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$zc_date')" style="color:#000001;">日期</a></th>
                  </tr>
              </thead>

              <tbody>
              <c:forEach items="${resultList }" var="withdraw" varStatus="i">
				<c:choose>
				<c:when test="${i.index%2==0 }">
					<tr class="gvRowStyle" align="center" style="color:#4A3C8C;background-color:WhiteSmoke;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
		                  <td style="color:Black;">${withdraw.haveCoin }</td>
		                  <td style="color:Black;">${withdraw.coin }</td>
		                  <td style="color:Black;">${withdraw.leftCoin }</td>
		                  <td style="color:Black;">${withdraw.remark }</td>
		                  <td style="color:Black;"><fmt:formatDate value="${withdraw.createtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
		              </tr>
				</c:when>
				<c:otherwise>
					<tr class="gvAlternatingRow" align="center" style="color:#4A3C8C;background-color:White;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
		                  <td style="color:Black;">${withdraw.haveCoin }</td>
		                  <td style="color:Black;">${withdraw.coin }</td>
		                  <td style="color:Black;">${withdraw.leftCoin }</td>
		                  <td style="color:Black;">${withdraw.remark }</td>
		                  <td style="color:Black;"><fmt:formatDate value="${withdraw.createtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
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