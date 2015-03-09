<%@ page contentType="text/html;charset=UTF-8"%>
    <%@ include file="/jsp/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
		<!--<form action="memberAction!addSave.${actionExt }" id="memberForm" name="memberForm" method="post">-->
        <form id="memberForm" name="memberForm" method="post">
        <table class="zhucetab" width="588" border="0" cellpadding="0" cellspacing="0">
        <tbody>
        <tr>
        <td width="94">
        新会员编号：</td>
        <td width="191">
        <input name="member.code" maxlength="8" class="Required VString Word" id="member.code"
        style="color:Red;background-color:LightCyan;font-weight:bold;width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td width="303">
        编号只能采用字母或数字或字母与数字相结合 ；</td>
        </tr>
        <tr>
        <td>
        姓名：</td>
        <td>
        <input name="member.name" maxlength="15" class="Required VString Chinese" id="member.name" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        请输入您的真实姓名；</td>
        </tr>
        <tr>
        <td>手机：</td>
        <td><input name="member.mobile" id="member.mobile" class="Required VString VNumber CellPhone" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>请填写真实号码，以便有需要时通知您；</td>
        </tr>
        <tr>
        <td>
        服务中心编号：</td>
        <td><input name="member.servCode" maxlength="10" class="Required Word" onchange="javascript:setTimeout('__doPostBack(\'dian\',\'\')', 0)"
        onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="member.servCode" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        <span id="Label1" style="color:Red;font-weight:bold;"></span></td>
        </tr>
        <tr>
        <td>推荐人编号：</td>
        <td><input name="member.recoCode" maxlength="10" class="Required" onchange="javascript:setTimeout('__doPostBack(\'user_tj_id\',\'\')', 0)"
        onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="member.recoCode" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        <span id="Label2" style="color:Red;font-weight:bold;"></span></td>
        </tr>
        <tr>
        <td>
        管理人编号：</td>
        <td>
        <input name="member.managerCode" maxlength="10" class="Required" onchange="javascript:setTimeout('__doPostBack(\'user_up_id\',\'\')', 0)"
        onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="user_up_id" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        <span id="Label3" style="color:Red;font-weight:bold;"></span></td>
        </tr>
        <tr>
        <td>
        位置：</td>
        <td>
        <table id="user_where" style="border-style:None;width:167px;" border="0">
        <tbody><tr>
        <td><input id="member.area" name="member.area" value="A" checked="checked" type="radio"><label for="user_where_0">A区</label></td>
        <td><input id="member.area" name="member.area" value="B" type="radio"><label for="user_where_1">B区</label></td>
        </tr>
        </tbody>
        </table>
        </td>
        <td>
        </td>
        </tr>
        <tr>
        <td>
        身份证号：</td>
        <td><input name="member.inden" maxlength="18" id="member.inden" class="Required" style="width:160px;" type="text">
        &nbsp;&nbsp;&nbsp;</td>
        <td>请输入您的身份证编号；</td>
        </tr>
        <tr>
        <td>
        开户银行：</td>
        <td><select name="member.bank" id="member.bank" class="Required" style="width:165px;">
        <option value="1">中国农业银行</option>
        <option value="2">中国工商银行</option>
	<option value="3">中国建设银行</option>
        <option value="4">中国银行</option>
        <option value="5">中国招商银行</option>

        </select>
        &nbsp;&nbsp;<span>*</span></td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td>
        开户地址：</td>
        <td>
        <input name="member.bankAddr" id="member.bankAddr" class="Required" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        请输入您开户银行所在地，如：香港 九龙；</td>
        </tr>
        <tr>
        <td>
        银行户名：</td>
        <td>
        <input name="member.bankName" id="member.bankName" class="Required" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        请输入银行卡开户人的姓名；</td>
        </tr>
        <tr>
        <td>
        银行账号：</td>
        <td>
        <input name="member.bankAcco" id="member.bankAcco" class="Required" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        请输入银行卡账号；</td>
        </tr>
        <tr>
        <td>
        一级密码：</td>
        <td>
        <input name="member.passwd1" maxlength="15" id="member.passwd1" class="Required" style="width:160px;" type="password">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        </td>
        </tr>
        <tr>
        <td>
        确认一级密码：</td>
        <td>
        <input name="repasswd1" maxlength="15" id="repasswd1" class="Required" style="width:160px;" type="password">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        一级密码两次要一致；</td>
        </tr>
        <tr>
        <td>
        二级密码：</td>
        <td>
        <input name="member.passwd2" maxlength="15" id="member.passwd2" class="Required" style="width:160px;" type="password">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        </td>
        </tr>
        <tr>
        <td>
        确认二级密码：</td>
        <td>
        <input name="repasswd2" maxlength="15" id="repasswd2" class="Required" style="width:160px;" type="password">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        二级密码两次要一致；</td>
        </tr>
        <tr>
        <td>
        三级密码：</td>
        <td>
        <input name="member.passwd3" maxlength="15" id="member.passwd3" class="Required"style="width:160px;" type="password">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        </td>
        </tr>
        <tr>
        <td>
        确认三级密码：</td>
        <td>
        <input name="repasswd3" maxlength="15" id="repasswd3" class="Required" style="width:160px;" type="password">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        三级密码两次要一致；</td>
        </tr>
        <tr>
        <td>
        第二联系方式：</td>
        <td>
        <input name="member.mobile2" id="member.mobile2" class="Required" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        请输入其他能联系到您的电话号码或手机号码；</td>
        </tr>
        <tr>
        <td>
        QQ：</td>
        <td>
        <input name="member.qq" id="member.qq" class="Required" style="width:160px;" type="text">
        &nbsp;&nbsp;<span>*</span></td>
        <td>
        请输入您的qq号码；</td>
        </tr>
        <tr>
        <td>
        邮编：</td>
        <td>
        <input name="member.postCode" id="member.postCode" style="width:160px;" type="text"><span></span></td>
        <td>
        请输入您所在地的邮政编码；</td>
        </tr>
        <tr>
        <td>
        地址：</td>
        <td>
        <input name="member.addr" id="member.addr" style="width:160px;" type="text">
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
        </tbody>
        </table>
		<!-- <table class="zhucetab" width="588" border="0" cellpadding="0" cellspacing="0">
       <tbody>
       <tr>
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
       </tbody>
     </table>-->

         <p class="tijiaop">
           <input type="button" name="Button1" value="提交注册信息" id="Button1" class="tijiaobtn Submit">
         </p>

       <br>
       <br>
	  </form>

	 </td>
	</tr>
	</tbody>
</table>

<script src="${base}/js/jquery-1.7.1.js"></script>
<script src="${base}/js/formvalidator/qiaogu.form.Validator.js"></script>
<script src="${base}/js/formvalidator/qiaogu.form.Form.js"></script>
<script>
    qiaogu.form.Form.custom({
    '#memberForm': {//需验证的表单的ID
        'input[name="member.code"]': {
         minLength: 2,
        maxLength: 8,
        'VString-minLengthErrorMsg': '新会员编号长度不能低于2个字符',
        'VString-maxLengthErrorMsg': '新会员编号长度不能超过8个字符'
        },
        'input[name="member.name"]': {
        minLength: 4,
        maxLength: 16,
        'VString-minLengthErrorMsg': '真实姓名不能少于2个汉字字符',
        'VString-maxLengthErrorMsg': '真实姓名不能超过8个汉字字符'
        },
        'input[name="member.mobile"]': {
        minLength: 11,
        maxLength: 15,
        'VString-minLengthErrorMsg': '手机号码不能低于11个字符',
        'VString-maxLengthErrorMsg': '手机号码不能超过15个字符'
        },

        'input[name=“member.recoCode”]': {//推荐人编号
        minLength: 2,
        maxLength: 8,
        'VString-minLengthErrorMsg': '推荐人编号不能低于2个字符',
        'VString-maxLengthErrorMsg': '推荐人编号不能超过8个字符'
        },
        'input[name="member.managerCode"]': {//管理人编号
        //minLength: 0,
        maxLength: 8,
        'VString-maxLengthErrorMsg': '管理人编号不能超过8个字符'
        },

        'input[name="member.inden"]': {//身份证号
        minLength: 15,
        maxLength: 18,
        'VString-minLengthErrorMsg': '身份证编码不能低于15个字符',
        'VString-maxLengthErrorMsg': '身份证编码不能超过18个字符'
        },
        'input[name="member.bank"]': {//开户银行
        minLength: 4,
        maxLength: 16,
        'VString-minLengthErrorMsg': '开户银行不能低于12个字符',
        'VString-maxLengthErrorMsg': '开户银行不能超过16个字符'
        },
        /* 'input[name="member.bankAddr"]': {//开户地址
        maxLength: 15,
        'VString-maxLengthErrorMsg': '开户地址不能超过15个字符'
        },*/
        'input[name="ember.bankName"]': {//银行户名
        minLength: 7,
        maxLength: 15,
        'VString-minLengthErrorMsg': '银行户名不能低于7个字符',
        'VString-maxLengthErrorMsg': '银行户名不能超过15个字符'
        },
        'textarea[name="member.bankAcco"]': {// 银行账号
        maxLength: 18,
        'VString-maxLengthErrorMsg': '银行账号不能超过18个字符'
        },

        'textarea[name="member.passwd1"]': {//一级密码
        maxLength: 200,
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },

        'textarea[name="repasswd1"]': {// 确认一级密码
        maxLength: 200,
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },

        'textarea[name="member.passwd2"]': {// 二级密码
        maxLength: 200,
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },

        'textarea[name="repasswd2"]': {// 确认二级密码
        maxLength: 200,
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },

        'textarea[name="member.passwd3"]': {// 三级密码
        maxLength: 200,
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },

        'textarea[name="repasswd3"]': {// 确认三级密码
        maxLength: 200,
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },


        'textarea[name="member.mobile2"]': {// 第二联系方式
        maxLength: 200,
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },


        'textarea[name="member.qq"]': {// QQ
         maxLength: 20,
        'Required':'QQ号码不能为空',
        'VString-maxLengthErrorMsg': '不能超过20个字符'
        },


        'textarea[name="member.postCode"]': {// 邮编
        maxLength: 200,
        'Required':'服务名称不能为空',
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },


        'textarea[name="member.addr"]': {// 地址
        maxLength: 200,
        'Required':'服务名称不能为空',
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },


        'textarea[name="member.remark"]': {// 备注
        maxLength: 200,
        'Required':'服务名称不能为空',
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },


        'textarea[name="repasswd3"]': {// 确认三级密码
        maxLength: 200,
        'Required':'服务名称不能为空',
        'VString-maxLengthErrorMsg': '不能超过200个字符'
        },

        userFormValidate:function(){
            alert($("input[name='member.passwd1']").val())
            if($("input[name='member.passwd1']").val()!=$("input[name='repasswd1']").val()){
            alert("一级密码两次输入不一致！")
            return false;
            }
            if($("input[name='member.passwd2']").val()!=$("input[name='repasswd2']").val()){
            alert("二级密码两次输入不一致！")
            return false;
            }
            if($("input[name='member.passwd3']").val()!=$("input[name='repasswd3']").val()){
            alert("三级密码两次输入不一致！")
            return false;
            }
            $("#memberForm").attr("action","memberAction!addSave.do").submit();
        }
  }
});
    </script>
</body>
</html>
