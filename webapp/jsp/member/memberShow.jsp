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
<title>信息管理系统-注册会员</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">个人资料</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">个人信息</span></td>
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
			<td class="newZwTitle">个人信息</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
			<td colspan="2" class="newGjmyGyUll" >
			<table class="zhucetab" border="0" cellpadding="0" cellspacing="0" width="588">
           <tbody>
           <tr>
               <td width="94">
                   编号：
               </td>
               <td width="191">
                   <input name="user_id" value="${sessionScope.member.code }" readonly="readonly" id="user_id"
                          style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td width="303">
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   姓名：
               </td>
               <td>
                   <input name="user_name" value="${sessionScope.member.name }" readonly="readonly" id="user_name"
                          style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>
                   &nbsp;<span id="RequiredFieldValidator1" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>手机：</td>
               <td><input name="user_sj" value="${sessionScope.member.mobile }" readonly="readonly" id="user_sj"
                          style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>
                   &nbsp;<span id="RequiredFieldValidator5" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>
                   服务中心编号：
               </td>
               <td><input name="user_dian" value="${sessionScope.member.servCode }" readonly="readonly" id="user_dian"
                          style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>&nbsp;<span id="RequiredFieldValidator7" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>推荐人编号：</td>
               <td><input name="user_tj_id" value="${sessionScope.member.recoCode }" maxlength="15" readonly="readonly"
                          id="user_tj_id" style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>&nbsp;<span id="RequiredFieldValidator6" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>
                   管理人编号：
               </td>
               <td>
                   <input name="user_up_id" value="${sessionScope.member.managerCode }" maxlength="15" readonly="readonly"
                          onchange="javascript:setTimeout('__doPostBack(\'user_up_id\',\'\')', 0)"
                          onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
                          id="user_up_id" style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span>
               </td>
               <td><span id="RequiredFieldValidator11" style="color:Red;visibility:hidden;">不能为空</span></td>
           </tr>

           <tr>
               <td>
                   位置：
               </td>
               <td>
                   <table id="user_where" disabled="disabled" style="width:166px;" border="0">
                       <tbody>
                       <tr>
                           <td><span disabled="disabled"><input id="user_where_0" name="user_where"
                                                                value="0" <c:if test="${sessionScope.member.area=='A' }">checked="checked"</c:if>
                                                                disabled="disabled"
                                                                type="radio"><label
                                   for="user_where_0">A区</label></span></td>
                           <td><span disabled="disabled"><input id="user_where_1" name="user_where"
                                                                value="1" disabled="disabled" <c:if test="${sessionScope.member.area=='B' }">checked="checked"</c:if>
                                                                type="radio"><label
                                   for="user_where_1">B区</label></span></td>
                       </tr>
                       </tbody>
                   </table>
               </td>
               <td>
               </td>
           </tr>
           <tr>
               <td>
                   身份证号：
               </td>
               <td><input name="user_cid" value="${sessionScope.member.inden }" readonly="readonly"
                          id="user_cid" style="width:160px;" type="text">
                   &nbsp;&nbsp;&nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   开户银行：
               </td>
               <td>
               <c:if test="${sessionScope.member.bank==1 }"><input name="user_bank" value="中国农业银行" readonly="readonly" id="user_bank"
                          style="width:160px;" type="text"></c:if>
               <c:if test="${sessionScope.member.bank==2 }"><input name="user_bank" value="中国工商银行" readonly="readonly" id="user_bank"
                          style="width:160px;" type="text"></c:if>
                   &nbsp;&nbsp;<span>*</span></td>
               <td>&nbsp;<span id="RequiredFieldValidator2" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>
                   开户地址：
               </td>
               <td>
                   <input name="user_bank_address" value="${sessionScope.member.bankAddr }" readonly="readonly"
                          id="user_bank_address" style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>
                   &nbsp;<span id="RequiredFieldValidator8" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>
                   银行户名：
               </td>
               <td>
                   <input name="user_bank_name" value="${sessionScope.member.bankName }" readonly="readonly" id="user_bank_name"
                          style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>
                   &nbsp;<span id="RequiredFieldValidator3" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>
                   银行账号：
               </td>
               <td>
                   <input name="user_bank_id" value="${sessionScope.member.bankAcco }" readonly="readonly"
                          id="user_bank_id" style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>
                   &nbsp;<span id="RequiredFieldValidator4" style="color:Red;visibility:hidden;">不能为空</span>
               </td>
           </tr>
           <tr>
               <td>
                   第二联系方式：
               </td>
               <td>
                   <input name="user_tel" value="${sessionScope.member.mobile2 }" readonly="readonly" id="user_tel"
                          style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span> &nbsp; &nbsp;</td>
               <td>
                                        <span id="RequiredFieldValidator9"
                                              style="color:Red;visibility:hidden;">不能为空</span></td>
           </tr>
           <tr>
               <td>
                   QQ：
               </td>
               <td>
                   <input name="user_qq" value="${sessionScope.member.qq }" readonly="readonly" id="user_qq"
                          style="width:160px;" type="text">
                   &nbsp;&nbsp;<span>*</span></td>
               <td>
                                        <span id="RequiredFieldValidator10"
                                              style="color:Red;visibility:hidden;">不能为空</span></td>
           </tr>
           <tr>
               <td>
                   邮编：
               </td>
               <td>
                   <input name="user_post" value="${sessionScope.member.postCode }" readonly="readonly" id="user_post"
                          style="width:160px;" type="text"><span></span></td>
               <td>
               </td>
           </tr>
           <tr>
               <td>
                   地址：
               </td>
               <td>
                   <input name="user_address" readonly="readonly" value="${sessionScope.member.addr }"
                          style="width:160px;" type="text">
               </td>
               <td>
               </td>
           </tr>
           <tr>
               <td valign="middle" height="23">备注：</td>
               <td class="area" colspan="2" valign="middle">
                   <textarea name="infor" rows="2" cols="20" readonly="readonly" id="infor"
                             style="height:60px;width:360px;">${sessionScope.member.remark }</textarea>
               </td>
           </tr>
           </tbody>
       </table>
       <p class="tijiaop">
       </p>
       <br>
       <br>
       </td>
       </tr>
       <tr>
           <td colspan="2" height="11"></td>
       </tr>
       </tbody>
       </table>
       
       
</body>
</html>