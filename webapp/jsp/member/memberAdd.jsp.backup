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
						class="font_navigate">会员管理</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">注册会员</span></td>
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
			<td class="newZwTitle">注册会员</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
			<td colspan="2" class="newGjmyGyUll" >
				<form action="memberAction!addSave.${actionExt }" id="memberForm" name="memberForm" method="post">
					<table class="zhucetab" width="588" border="0" cellpadding="0" cellspacing="0">
       <tbody><tr>
           <td width="94">
               新会员编号：</td>
           <td width="191">
               <input name="member.code" type="text" maxlength="8" id="member.code" style="color:Red;background-color:LightCyan;font-weight:bold;width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td width="303">
               编号只能采用字母或数字或字母与数字相结合 ；</td>
       </tr>
       <tr>
           <td>
               姓名：</td>
           <td>
               <input name="member.name" type="text" maxlength="15" id="member.name" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               请输入您的真实姓名；</td>
       </tr>
       <tr>
           <td>手机：</td>
           <td><input name="member.mobile" type="text" id="member.mobile" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>请填写真实号码，以便有需要时通知您；</td>
       </tr>
       <tr>
           <td>
               服务中心编号：</td>
           <td><input name="member.servCode" type="text" maxlength="10" onchange="javascript:setTimeout('__doPostBack(\'dian\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="member.servCode" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               <span id="Label1" style="color:Red;font-weight:bold;"></span></td>
       </tr>
       <tr>
           <td>推荐人编号：</td>
           <td><input name="member.recoCode" type="text" maxlength="10" onchange="javascript:setTimeout('__doPostBack(\'user_tj_id\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="member.recoCode" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               <span id="Label2" style="color:Red;font-weight:bold;"></span></td>
       </tr>
       <tr>
           <td>
               管理人编号：</td>
           <td>
               <input name="member.managerCode" type="text" maxlength="10" onchange="javascript:setTimeout('__doPostBack(\'user_up_id\',\'\')', 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="user_up_id" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               <span id="Label3" style="color:Red;font-weight:bold;"></span></td>
       </tr>
       <tr>
           <td>
               位置：</td>
           <td>
               <table id="user_where" border="0" style="border-style:None;width:167px;">
                   <tbody><tr>
                       <td><input id="member.area" type="radio" name="member.area" value="A" checked="checked"><label for="user_where_0">A区</label></td><td><input id="member.area" type="radio" name="member.area" value="B"><label for="user_where_1">B区</label></td>
                   </tr>
                   </tbody></table>
           </td>
           <td>
           </td>
       </tr>
       <tr>
           <td>
               身份证号：</td>
           <td><input name="member.inden" type="text" maxlength="18" id="member.inden" style="width:160px;">
               &nbsp;&nbsp;&nbsp;</td>
           <td>请输入您的身份证编号；</td>
       </tr>
       <tr>
           <td>
               开户银行：</td>
           <td><select name="member.bank" id="member.bank" style="width:165px;">
               <option value="1">中国农业银行</option>
               <option value="2">中国工商银行</option>

           </select>
               &nbsp;&nbsp;<span>*</span></td>
           <td>&nbsp;</td>
       </tr>
       <tr>
           <td>
               开户地址：</td>
           <td>
               <input name="member.bankAddr" type="text" id="member.bankAddr" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               请输入您开户银行所在地，如：香港 九龙；</td>
       </tr>
       <tr>
           <td>
               银行户名：</td>
           <td>
               <input name="member.bankName" type="text" id="member.bankName" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               请输入银行卡开户人的姓名；</td>
       </tr>
       <tr>
           <td>
               银行账号：</td>
           <td>
               <input name="member.bankAcco" type="text" id="member.bankAcco" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               请输入银行卡账号；</td>
       </tr>
       <tr>
           <td>
               一级密码：</td>
           <td>
               <input name="member.passwd1" type="password" maxlength="15" id="member.passwd1" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
           </td>
       </tr>
       <tr>
           <td>
               确认一级密码：</td>
           <td>
               <input name="repasswd1" type="password" maxlength="15" id="repasswd1" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               一级密码两次要一致；</td>
       </tr>
       <tr>
           <td>
               二级密码：</td>
           <td>
               <input name="member.passwd2" type="password" maxlength="15" id="member.passwd2" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
           </td>
       </tr>
       <tr>
           <td>
               确认二级密码：</td>
           <td>
               <input name="repasswd2" type="password" maxlength="15" id="repasswd2" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               二级密码两次要一致；</td>
       </tr>
       <tr>
           <td>
               三级密码：</td>
           <td>
               <input name="member.passwd3" type="password" maxlength="15" id="member.passwd3" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
           </td>
       </tr>
       <tr>
           <td>
               确认三级密码：</td>
           <td>
               <input name="repasswd3" type="password" maxlength="15" id="repasswd3" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               三级密码两次要一致；</td>
       </tr>
       <tr>
           <td>
               第二联系方式：</td>
           <td>
               <input name="member.mobile2" type="text" id="member.mobile2" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               请输入其他能联系到您的电话号码或手机号码；</td>
       </tr>
       <tr>
           <td>
               QQ：</td>
           <td>
               <input name="member.qq" type="text" id="member.qq" style="width:160px;">
               &nbsp;&nbsp;<span>*</span></td>
           <td>
               请输入您的qq号码；</td>
       </tr>
       <tr>
           <td>
               邮编：</td>
           <td>
               <input name="member.postCode" type="text" id="member.postCode" style="width:160px;"><span></span></td>
           <td>
               请输入您所在地的邮政编码；</td>
       </tr>
       <tr>
           <td>
               地址：</td>
           <td>
               <input name="member.addr" type="text" id="member.addr" style="width:160px;">
           </td>
           <td>
               请输入您的联系地址；</td>
       </tr>
       <tr>
           <td height="23" valign="middle">备注：</td>
           <td class="area" colspan="2" valign="middle">
               <textarea name="member.remark" rows="2" cols="20" id="member.remark" style="height:76px;width:360px;"></textarea>
           </td>
       </tr>
       </tbody></table>

       <p class="tijiaop"> <input type="submit" name="Button1" value="提交注册信息" id="Button1" class="tijiaobtn"></p>
       <br>
       <br>
					</form>

			</td>
		</tr>
	</tbody>
</table>
</body>
</html>