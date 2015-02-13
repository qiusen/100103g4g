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
<script type="text/javascript">
<c:if test="${requestScope.add==1}">
alert('订单提交成功！');
</c:if>
</script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">产品中心</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">订购产品</span></td>
		</tr>
	</tbody>
</table>
<table width="745" border="0" cellpadding="0" cellspacing="0" style="margin-right:4px;">
     <tbody>
     <tr> <td height="7" colspan="2"></td></tr>
     <tr>
         <td class="newZwTitle">产品展示</td>
         <td class="newMoreBg"></td>
     </tr>
     <tr>
         <td height="8" colspan="2"></td>
     </tr>
     <tr>
         <td colspan="2" class="newGjmyGyUll" align="center" valign="top">
             <div>
                 <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView2" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
                     <tbody>
                     <c:forEach items="${productList }" var="product" varStatus="i">
                     <c:choose>
                     <c:when test="${i.index%2==0 }">
                     <tr class="gvRowStyle" align="center" style="color:#4A3C8C;background-color:WhiteSmoke;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                         <td style="width:2%;"></td>
                         <td align="left" style="color:Black;">${product.name }</td>
                         <td align="left" style="color:Black;">${product.shortName }</td>
                         <td><a href="${base}/op/productAction!view.${actionExt}?id=${product.id }" ><font color="red">查看详细说明</font></a></td>
                     </tr>
                     </c:when>
                     <c:otherwise>
                     <tr class="gvAlternatingRow" align="center" style="color:#4A3C8C;background-color:White;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                         <td style="width:2%;"></td>
                         <td align="left" style="color:Black;">${product.name }</td><td align="left" style="color:Black;">${product.shortName }</td>
                         <td><a href="${base}/op/productAction!view.${actionExt}?id=${product.id }" ><font color="red">查看详细说明</font></a></td>
                     </tr>
                     </c:otherwise>
                     </c:choose>
                     </c:forEach>
                     </tbody>
                 </table>
             </div>
         </td>
     </tr>
     </tbody>
 </table>
 <br>
 <br>

 <table width="745" border="0" cellpadding="0" cellspacing="0" style="margin-right:4px;">
     <tbody>
     <tr>
         <td height="7" colspan="2">
         </td>
     </tr>
     <tr>
         <td class="newZwTitle">
             套餐列表
         </td>
         <td class="newMoreBg">
         </td>
     </tr>
     <tr>
         <td colspan="2" height="8"></td>
     </tr>
     <tr>
         <td colspan="2" class="newGjmyGyUll" align="center" valign="top">
             <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView2" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
                 <tbody>
                 <c:forEach items="${comboList }" var="combo" varStatus="i">
                 <c:choose>
                 <c:when test="${i.index%2==0 }">
                 <tr class="gvRowStyle" align="center" style="color:#4A3C8C;background-color:WhiteSmoke;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                     <td style="width:2%;"></td>
                     <td align="left" style="color:Black;">${combo.name }</td><td align="left" style="color:Black;">${combo.shortName }</td>
                     <td> <a href="${base}/op/comboAction!view.${actionExt}?id=${combo.id }" >查看详细说明</a></td>
                 </tr>
                 </c:when>
                 <c:otherwise>
                 <tr class="gvAlternatingRow" align="center" style="color:#4A3C8C;background-color:White;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                     <td style="width:2%;"></td>
                     <td align="left" style="color:Black;">${combo.name }</td>
                     <td align="left" style="color:Black;">${combo.shortName }</td>
                     <td><a href="${base}/op/comboAction!view.${actionExt}?id=${combo.id }" ><font color="red">查看详细说明</font></a></td>
                 </tr>
                 </c:otherwise>
                 </c:choose>
                 </c:forEach>
                 </tbody>
             </table>
         </td>
     </tr>
   </tbody>
 </table>
 <br>
 <br>


 <table width="745" border="0" cellpadding="0" cellspacing="0" style="margin-right:4px;">
     <tbody><tr>
         <td height="7" colspan="2">
         </td>
     </tr>
     <tr>
         <td class="newZwTitle">
             在线订单
         </td>
         <td class="newMoreBg">
         </td>
     </tr>
     <tr>
         <td height="8" colspan="2">
         </td>
     </tr>
     <tr>
         <td colspan="2" class="newGjmyGyUll" align="center" valign="top">
		 <form action="onlineOrderAction!addSave.${actionExt }" id="onlineOrderForm" name="onlineOrderForm" method="post">
             <table border="0" cellpadding="0" cellspacing="0" width="100%">
                 <tbody><tr>
                     <td align="center" style="width: 13%; height: 32px;">
                         订单人编号：</td>
                     <td align="left" colspan="3">
                         &nbsp;<span id="Label1" style="font-size:10pt;font-weight:bold;">${sessionScope.member.code}</span></td>
                 </tr>
                 <tr style="font-size: 9pt; color: #333333">
                     <td align="center" style="width: 13%; height: 32px;">
                         收货人姓名：</td>
                     <td align="left" colspan="3">
                         &nbsp;<input name="onlineOrder.name" type="text" maxlength="4" id="onlineOrder.name" style="width:100px;"><span style="color:Red;">*</span>
                         &nbsp; （请输入您的姓名，4字内）</td>
                 </tr>
                 <tr>
                     <td align="center" style="width: 13%; height: 32px;">
                         收货人手机：</td>
                     <td align="left" colspan="3">
                         &nbsp;<input name="onlineOrder.mobile" type="text" maxlength="11" id="onlineOrder.mobile" style="width:100px;"><span style="color:Red;">*</span>
                         &nbsp; （请输入您的联系手机，11位）</td>
                 </tr>
                 <tr>
                     <td align="center" style="width: 13%; height: 32px;">
                         收货地址：</td>
                     <td align="left" colspan="3">
                         &nbsp;<textarea name="onlineOrder.addr" rows="2" cols="20" id="onlineOrder.addr" style="width:450px;"></textarea><span style="color:Red;">*</span>
                         &nbsp; （30字内）</td>
                 </tr>
                 <tr>
                     <td align="center" style="width: 13%; height: 32px">
                         手机型号：</td>
                     <td align="left" colspan="3">
                         &nbsp;<input name="onlineOrder.mobileModel" type="text" maxlength="20" id="onlineOrder.mobileModel" style="width:345px;"><span style="color:Red;">*</span>
                         &nbsp; （20字内）</td>
                 </tr>
                 <tr>
                     <td align="center" style="width: 13%; height: 32px">
                         手机颜色：</td>
                     <td align="left" colspan="3">
                         &nbsp;<input name="onlineOrder.mobileColor" type="text" maxlength="20" id="onlineOrder.mobileColor" style="width:345px;"><span style="color:Red;">*</span>
                         &nbsp; （20字内）</td>
                 </tr>
                 <tr>
                     <td align="center" style="width: 13%; height: 32px">
                         手机号码：</td>
                     <td align="left" colspan="3">
                         &nbsp;<input name="onlineOrder.mobileNumber1" type="text" maxlength="11" id="onlineOrder.mobileNumber1" style="width:110px;">
                         <input name="onlineOrder.mobileNumber2" type="text" maxlength="11" id="onlineOrder.mobileNumber2" style="width:110px;">
                         <input name="onlineOrder.mobileNumber3" type="text" maxlength="11" id="onlineOrder.mobileNumber3" style="width:110px;">&nbsp;<br>
                         &nbsp;<input name="onlineOrder.mobileNumber4" type="text" maxlength="11" id="onlineOrder.mobileNumber4" style="width:110px;">
                         <input name="onlineOrder.mobileNumber5" type="text" maxlength="11" id="onlineOrder.mobileNumber5" style="width:110px;">
                         <input name="onlineOrder.mobileNumber6" type="text" maxlength="11" id="onlineOrder.mobileNumber6" style="width:110px;"><span style="color:Red;">*</span>
                         (最多填写六个号码，至少填写一个号码，11位)</td>
                 </tr>
                 <tr>
                     <td align="center" style="width: 13%; height: 32px">
                         电脑、上网卡：</td>
                     <td align="left" colspan="3">
                         <input name="onlineOrder.pc" type="text" maxlength="10" id="onlineOrder.pc" style="width:345px;">
                         (电脑台数，无线网卡个数，没有可不填，10字内)</td>
                 </tr>
                 <tr>
                     <td align="center" style="width: 13%; height: 32px;">
                         备注：</td>
                     <td align="left" colspan="3">
                         &nbsp;<textarea name="onlineOrder.remark" rows="2" cols="20" id="onlineOrder.remark" style="height:60px;width:450px;"></textarea>
                        (50字内，可不填)）</td>
                 </tr>
                 <tr>
                     <td align="center" colspan="4" style="height: 28px">
                     </td>
                 </tr>
                 <tr>
                     <td align="center" colspan="4">
                         <input type="submit" name="Button1" value="提交订份" id="Button1" class="tijiaobtn">

                     </td>
                 </tr>
                 </tbody></table></form>
             <span id="Label3" style="color:Red;font-size:11pt;font-weight:bold;"></span><div>
			
         </div>

         </td>
     </tr>
     </tbody></table>

</body>
</html>