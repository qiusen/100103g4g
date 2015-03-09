if (!window.qiaogu) {
	window.qiaogu = {};
	window.qiaogu.form = {
		autoCallFindForms: 1,
		autoCallInstallSubmitHandlers: 1,	
		autoCallInstallValidateHandlers: 1	
	};
} else if (!window.qiaogu.form) {
	window.qiaogu.form = {
		autoCallFindForms: 1,
		autoCallInstallSubmitHandlers: 1,	
		autoCallInstallValidateHandlers: 1	
	};
}


$.extend(qiaogu.form, {
	Validator: function(regex, msgs) {
		if(regex instanceof Array){
			this.subValidators = regex;
		}else{
			this.regex = regex;
			this.msgs = msgs || {};
		}
	}
});

qiaogu.form.Validator.defaultMsgs = {
	successMsg: '',
	errorMsg: '输入错误'	
};
qiaogu.form.Validator.register = {	
Username: new qiaogu.form.Validator([
	                                     {regex:/(^$)|^\S*[^0-9 ]+\S*$/, errorMsg: '用户名格式不正确'},
	                                     {regex:/(^$)|^.{4,40}$/, errorMsg: '用户名长度不正确'}
	                                     ]),
AdminName: new qiaogu.form.Validator([  
                                      	{regex:/^[a-zA-Z]([^\s\u4e00-\u9fa5]*[0-9a-zA-Z])?$/, errorMsg: '用户名格式不正确'},
                                     	{regex:/(^$)|^.{6,16}$/, errorMsg: '用户名长度不正确'}
                                      	]),	                                     
Passwords: new qiaogu.form.Validator([
                                      {regex:/\S/, errorMsg: '密码不能为空'	},
                                      {regex:/\w+/, errorMsg: '密码格式不正确'},
                                      {regex:/^.{6,16}$/, errorMsg: '密码长度不正确'}
                                      ]),
SecurityEmail: new qiaogu.form.Validator([
                                       {regex:/\S/, errorMsg: 'E-mail不能为空'	},
                                       {regex:/^.{0,40}$/, errorMsg: 'E-mail输入长度不正确'},
                                       {regex:/^[_A-Za-z0-9-]([\._A-Za-z0-9-])*@([A-Za-z0-9-]+\.)+[A-Za-z]{2,3}$/, errorMsg: 'E-mail输入格式不正确'}
                                       ]),
Email: new qiaogu.form.Validator([
                                       {regex:/^.{0,40}$/, errorMsg: 'E-mail输入长度不正确'},
                                         {regex:/^([_A-Za-z0-9-]([\._A-Za-z0-9-])*@([A-Za-z0-9-]+\.)+[A-Za-z]{2,3})?$/, errorMsg: 'E-mail输入格式不正确'}
                                          ]),
Msn: new qiaogu.form.Validator([
                                    {regex:/^.{0,40}$/, errorMsg: 'MSN输入长度不正确'},
                                    {regex:/^(\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)?$/, errorMsg: 'MSN输入格式不正确'}
                                    ]),
RealName: new qiaogu.form.Validator([
                                     {regex:/^\s*[\u4e00-\u9fa5]*\s*$/, errorMsg: '真实姓名输入格式不正确'},
                                     {regex:/(^\s*$)|(^[\u4e00-\u9fa5]{2,4}$)/, errorMsg: '真实姓名输入长度不正确'}
                        ]),                    

//phoneCall: new qiaogu.form.Validator(/(^(\d{3,4}-)?\d{0,15})$/, {errorMsg:'电话号码格式输入不正确'}),
phoneCall: new qiaogu.form.Validator(/(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})/, {errorMsg:'电话号码格式输入不正确'}),
TelAreaCode: new qiaogu.form.Validator(/^\s*(\d{3,4})?\s*$/, {errorMsg:'固定电话区号输入格式不正确'}),         
TelNumber: new qiaogu.form.Validator(/^\s*(\d{7,8})?\s*$/, {errorMsg:'固定电话输入格式不正确'}),         
TelExt: new qiaogu.form.Validator(/^\s*(\d{1,5})?\s*$/, {errorMsg:'固定电话分机号输入格式不正确'}),         
CellPhone: new qiaogu.form.Validator(/(^$)|^\d{11}$/, {errorMsg:'手机号码输入格式不正确'}),
QQ: new qiaogu.form.Validator(/^\s*([0-9]{5,15}\s*)?\s*$/, {errorMsg:'QQ输入格式不正确'}),
newUserName: new qiaogu.form.Validator(/^[a-zA-Z]\w*$/, {errorMsg:'以英文字母开头、6-16位字母或数字组成'}),

//PassWord: new qiaogu.form.Validator(/^[A-Za-z0-9-_+*?#&%@]+$/, {errorMsg:'密码只能由字母、数字或者特殊字符组成'}),
PassWord: new qiaogu.form.Validator([
                                      {regex:/\S/, errorMsg: '密码不能为空'},
                                      {regex:/^[A-Za-z0-9-_+*?#&%@]+$/, errorMsg: '密码只能由字母、数字或者特殊字符组成'},
                                      {regex:/^.{6,16}$/, errorMsg: '密码长度为6-16位！'}
                                      ]),


ContactPerson: new qiaogu.form.Validator([
                                          {regex:/^[\u4e00-\u9fa5]*$/, errorMsg: '店铺联系人输入格式不正确'},
                                          {regex:/(^\s*$)|(^[\u4e00-\u9fa5]{2,4}$)/, errorMsg: '店铺联系人输入长度不正确'}
                                          ]),

'ID': new qiaogu.form.Validator(
		[
         {regex:/\S/, errorMsg: '身份证号不能为空'},
         {regex:/^((.{15})|(.{18}))$/, errorMsg: '身份证号输入长度不正确'},
         {regex:/^((\d{17}[\d|X|x])|(\d{15}))$/, errorMsg: '身份证号输入格式不正确'}
         ]
		),//身份证

OfficeName: new qiaogu.form.Validator([
                                           {regex:/\S/, errorMsg: '店铺名称不能为空'},
                                           {regex:/^.{10,30}$/, errorMsg: '店铺名称长度不正确'}
                                           ]),
EnterpriseName: new qiaogu.form.Validator([
                                       {regex:/\S/, errorMsg: '企业名称不能为空'},
	                                   {regex:/^.{10,60}$/, errorMsg: '企业名称输入长度不正确'},
	                                   {regex:/[0-9]|[\u4e00-\u9fa5]|[a-zA-Z]*/, errorMsg: '企业名称输入格式不正确'}
]),

MainBusiness:new qiaogu.form.Validator([
                                       {regex:/\S/, errorMsg: '主营业务不能为空'},
	                                   {regex:/^.{0 , 20 }$/, errorMsg: '主营业务输入长度不正确'}
]),

LegalPerson: new qiaogu.form.Validator([
                                          {regex:/\S/, errorMsg: '法人/负责人不能为空'},
                                          {regex:/^[\u4e00-\u9fa5]*$/, errorMsg: '法人/负责人输入格式不正确'},
                                          {regex:/^.{2,8}$/, errorMsg: '法人/负责人输入长度不正确'}
                                          ]),
ValidationCode: new qiaogu.form.Validator([
                                           {regex:/\S/, errorMsg: '验证码不能为空'},
                                           {regex:/^\d+$/, errorMsg: '验证码不正确'},
                                           {regex:/^.{4}$/, errorMsg: '长度必须等于4'}
                                           ]),
  
LicenseNum: new qiaogu.form.Validator([
                                          {regex:/\S/, errorMsg: '证件号码不能为空'},
                                          {regex:/^((.{15})|(.{13}))$/, errorMsg: '证件号码长度不正确'},
                                          {regex:/^\d*$/, errorMsg: '证件号码格式不正确'}
                                      ]),
OfficeDesc: new qiaogu.form.Validator([
                                       {regex:/\S/, errorMsg: '店铺描述不能为空'},
                                     {regex:/^.{1,15001}$/, errorMsg: '店铺描述长度不正确'}
                                     ]),
orderPwdPoolName: new qiaogu.form.Validator([
                                        {regex:/\S/, errorMsg: '券码池名称不能为空'},
                                    {regex:/^.{1,150}$/, errorMsg: '券码池名称长度不正确'}
                                    ]),
AdItemName: new qiaogu.form.Validator([
                                         {regex:/\S/, errorMsg: '广告项名称不能为空'},
                                    {regex:/^.{4,60}$/, errorMsg: '广告项名称长度不正确'}
                                    ]), 
CommercialContractNo: new qiaogu.form.Validator([
	                                                 {regex:/^[A-Za-z0-9]+$/, errorMsg: '推广合同是数字或字母的组合'},
	                                                 {regex:/^.{2,60}$/, errorMsg: '推广合同长度为2~60'}
                                                 ]), 
                                         
	Required: new qiaogu.form.Validator(/\S/, {
		errorMsg: '输入不能为空'
	}),
	Currency: new qiaogu.form.Validator(/^\d+(.\d{0,2})?$/, {
		errorMsg: '输入不能多于两位小数'
	}),
//	Word: new qiaogu.form.Validator(/\w*/, {
//		errorMsg: '格式不正确，只能输入字母，数字，汉字，下划线'
//	}),
    Word: new qiaogu.form.Validator(/^[A-Za-z0-9]+$/, {errorMsg:'只能是由字母、数字组成'}),
	Integer: new qiaogu.form.Validator(/^\d*$/, {
		errorMsg: '输入内容不是整数'	
	}),
	NonZero: new qiaogu.form.Validator(/^[1-9]\d*$/, {
		errorMsg: '输入内容不是大于零整数'	
	}),
	'Float': new qiaogu.form.Validator(/^\d+(.\d+)?$/, {
		errorMsg: '输入内容不是数字'
	}),
	'Chinese': new qiaogu.form.Validator(/^[\u0391-\uFFE5]+$/, {
		errorMsg: '只能输入是汉字'
	}),
	
	
	

	CName: new qiaogu.form.Validator(/^[\u4e00-\u9fa5]{2,4}$/, {}),
	EName: new qiaogu.form.Validator(/\w+[ ]\w+/ , {}),
	
	
	CEName: new qiaogu.form.Validator(/^[\u0391-\uFFE5A-Za-z]+$/, {
		errorMsg: '请输入汉字或者英文字母'
	}), //english, chinese name
	'Name': new qiaogu.form.Validator(/\w*/, {}),
	PostCode: new qiaogu.form.Validator(/^\d{6}$/ , {}),
	Price: new qiaogu.form.Validator(/^\d+(.\d{1,2})?$/, {}),
	URL: new qiaogu.form.Validator(/^http(s)?\:\/\/\w/, {}),
	IP: new qiaogu.form.Validator(/^\d+\.\d+\.\d+\.\d+$/, {}),
	License:new qiaogu.form.Validator(/^[0-9]{1,15}$/,{}),
	//
	Ll: new qiaogu.form.Validator(/^[a-z]*$/, {
		error: '输入格式不正确'	
	}),	//Lowercase letter
	Ul: new qiaogu.form.Validator(/^[A-Z]*$/, {}),	//Uppercase letter
	L: new qiaogu.form.Validator(/^[a-zA-Z]*$/, {}),	//Letter
	A: new qiaogu.form.Validator(/^[^x00-xff]*$/, {}),	//All letter: chinese, japanese, other europ etc
	C: new qiaogu.form.Validator(/^[\u4e00-\u9fa5]*$/, {}), //chinese
 	S: new qiaogu.form.Validator(/^[!@#$%^&*\[~`\]]*$/, {}),	//Symbol: $-_
 	
 	LC: new qiaogu.form.Validator(/^[！，。、：a-zA-Z\u4e00-\u9fa5]*$/, {}),
 	NLC: new qiaogu.form.Validator(/^[0-9a-zA-Z\u4e00-\u9fa5]*$/, {}),
	
	LlS: new qiaogu.form.Validator(/^[a-z!@#$%^&*\[~`\]]*$/, {}),
	UlS: new qiaogu.form.Validator(/^[A-Z!@#$%^&*\[~`\]]*$/, {}),
	LS: new qiaogu.form.Validator(/^[a-zA-Z!@#$%^&*\[~`\]]*$/, {}),
	AS: new qiaogu.form.Validator(/^[^x00-xff!@#$%^&*\[~`\]]*$/, {}),
	CS: new qiaogu.form.Validator(/^[u4e00-u9fa5!@#$%^&*\[~`\]]*$/, {}),
		
	NLl: new qiaogu.form.Validator(/^[0-9a-z]*$/, {}),
	NUl: new qiaogu.form.Validator(/^[0-9A-Z]*$/, {}),
	NL: new qiaogu.form.Validator(/^[0-9a-zA-Z]*$/, {}),
	NA: new qiaogu.form.Validator(/^[0-9x00-xff]*$/, {}),
	NC: new qiaogu.form.Validator(/^[0-9u4e00-u9fa5]*$/, {}),
	NS: new qiaogu.form.Validator(/^[0-9!@#$%^&*\[~`\]]*$/, {}),
	
	NLlS: new qiaogu.form.Validator(/^[0-9a-z!@#$%^&*\[~`\]]*$/, {}),
	NUlS: new qiaogu.form.Validator(/^[0-9A-Z!@#$%^&*\[~`\]]*$/, {}),
	NLS: new qiaogu.form.Validator(/^[0-9a-zA-Z!@#$%^&*\[~`\]]*$/, {}),
	NAS: new qiaogu.form.Validator(/^[0-9^x00-xff!@#$%^&*\[~`\]]*$/, {}),
	NCS: new qiaogu.form.Validator(/^[0-9u4e00-u9fa5!@#$%^&*\[~`\]]*$/, {}),
	
	//
	PN: new qiaogu.form.Validator(/^\d.*/, {}),
	PLl: new qiaogu.form.Validator(/^[a-z].*/, {}),
	PUl: new qiaogu.form.Validator(/^[A-Z].*/, {}),
	PL: new qiaogu.form.Validator(/^[a-zA-Z].*/, {}),
	PA: new qiaogu.form.Validator(/^[^x00-xff].*/, {}),
	PC: new qiaogu.form.Validator(/^[u4e00-u9fa5].*/, {}),
	P$: new qiaogu.form.Validator(/^\$.*/, {}),
	P_: new qiaogu.form.Validator(/^_.*/, {})
};
qiaogu.form.Validator.getValidator = function(expr) {
	var val = qiaogu.form.Validator.register[expr] || function() {
		try {
			var tmp = eval('(' + expr + ')');
		} catch (ee) {
			try {
				var tmp = eval('(qiaogu.form.' + expr + ')');	
			} catch(eee) {}
		}
		if (typeof(tmp) == 'function') {
			tmp = new tmp();
			qiaogu.form.Validator.register[expr] = tmp;
		}
		return tmp;	
	}();
	!!val && (val.name || (val.name = expr));
	return val;
};
qiaogu.form.Validator.showMessage = function(element, status, message) {
	var ele = $(element).nextAll('.validateMsg');
	if(!ele.size() && $(element).parents('.GroupValidate').size()){
		var parent = $(element).parents('.GroupValidate');
		ele = $('.validateMsg' , parent);
		if(!ele.size()){
			ele = $('<span class="validateMsg"></span>');
		}
		parent.append(ele);
	}else if (ele.size() == 0) {
		ele = $('.validateMsg', $(element).parents('form'));
		
		if (!ele.size() || ele.size() > 1 || ele.parents('.mbContent').size() == 0) {
			ele = $('<span class="validateMsg"></span>');
			$(element).parent().append(ele);
		} else if (status) {
			return;
		}
		ele[0].tip = '';
	} else {
		if (ele[0].tip == undefined) {
			ele[0].tip = ele.html();
		}
	}
	ele.text(message);
	ele.removeClass('vtip vsuccess verror');
	ele.addClass(status ? 'vsuccess' : 'verror');
};
qiaogu.form.Validator.getMessage = function(customInfo, validator, key, key1) {
	customInfo = customInfo || {};
	return customInfo[validator.name + '-' + key] || validator.msgs[key] || qiaogu.form.Validator.defaultMsgs[key]
			|| customInfo[validator.name + '-' + key1] || validator.msgs[key1] || qiaogu.form.Validator.defaultMsgs[key1] || '';
};
qiaogu.form.Validator.restoreTip = function(element) {
	var ele = $(element).nextAll('.validateMsg');
	ele.removeClass(' vsuccess verror');
	if(!ele.size() || !ele[0].tip){
		ele.size() && ele.text('');
		return ;
	} 
	ele.addClass('');
	//ele.addClass('vtip');
	//ele.size() && ele.text(ele[0].tip || '');
};


qiaogu.form.Validator.prototype.validate = function() {
	var ret = true;
	this.compound && (ret = this.validateCompound.apply(this, arguments));
	return ret && this.validateSelf.apply(this, arguments);
};
qiaogu.form.Validator.prototype.validateCompound = function() {
	var ret = true;
	var args = arguments;
	$(this.compound).each(function() {
		var v = qiaogu.form.Validator.getValidator(this);
		return ret = v.validate.apply(v, args);
	});
	return ret;
};
qiaogu.form.Validator.prototype.validateSelf = function(element, form, quiet) {
	var result =true;
	if(this.subValidators){
		$.each(this.subValidators,function(i,obj){	
			result = obj.regex.test($(element).val());
			if(!result){
				qiaogu.form.Validator.showMessage(element, result, obj.errorMsg  );
			}else {
				qiaogu.form.Validator.showMessage(element, result );
			}
			return result;
		});
	}else{
		var regex = this.regex;
		result = regex.test($(element).val());
		var customInfo = qiaogu.form.Form.getCustomInfo(element, form);	
		quiet || qiaogu.form.Validator.showMessage(element, result, result ? qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg') : qiaogu.form.Validator.getMessage(customInfo, this, 'errorMsg'));
	}
	return result;
};


qiaogu.form.VString = function() {
	qiaogu.form.Validator.apply(this, arguments);
};
qiaogu.form.VString.prototype = new qiaogu.form.Validator();
qiaogu.form.VString.prototype.constructor = qiaogu.form.VString;
qiaogu.form.VString.prototype.validateSelf = function(element, form) {
	var value = $(element).val();
	var customInfo = qiaogu.form.Form.getCustomInfo(element, form);
	if (!customInfo) {
		throw new Error('must custom its spec for this validator[qiaogu.form.VString]');
	}
	
	if (customInfo.trimIt) {
		value = $.trim(value);	
	}
	value = value.replace(/[^\x00-\xff]/g, 'aa').length;
	if (value == 0) {
		qiaogu.form.Validator.showMessage(element, true, qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg'));
		return true;	
	} else if (customInfo.minLength && value < customInfo.minLength) {
		qiaogu.form.Validator.showMessage(element, false, qiaogu.form.Validator.getMessage(customInfo, this, 'minLengthErrorMsg', 'errorMsg'));
		return false;
	} else if (customInfo.maxLength && value >= customInfo.maxLength) {
		qiaogu.form.Validator.showMessage(element, false, qiaogu.form.Validator.getMessage(customInfo, this, 'maxLengthErrorMsg', 'errorMsg'));
		return false;
	} else {
		qiaogu.form.Validator.showMessage(element, true, qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg'));
		return true;
	}
};


qiaogu.form.VNumber = function() {
	qiaogu.form.Validator.apply(this, arguments);
};
qiaogu.form.VNumber.prototype = new qiaogu.form.Validator();
qiaogu.form.VNumber.prototype.constructor = qiaogu.form.VNumber;
qiaogu.form.VNumber.prototype.compound = [
	'Float'
];
qiaogu.form.VNumber.prototype.validateSelf = function(element, form) {	
	var value = $(element).val();
	var customInfo = qiaogu.form.Form.getCustomInfo(element, form);
	if (!customInfo) {
		throw new Error('must custom its spec for this validator[qiaogu.form.VNumber]');
	}
	
	if (customInfo.trimIt) {
		value = value.trim();	
	}
	value = parseFloat(value);
	if (value < customInfo.minValue) {
		qiaogu.form.Validator.showMessage(element, false, qiaogu.form.Validator.getMessage(customInfo, this, 'minValueErrorMsg', 'errorMsg'));
		return false;
	} else if (value >= customInfo.maxValue) {
		qiaogu.form.Validator.showMessage(element, false, qiaogu.form.Validator.getMessage(customInfo, this, 'maxValueErrorMsg', 'errorMsg'));
		return false;
	} else {
		qiaogu.form.Validator.showMessage(element, true, qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg'));
		return true;
	}
};

qiaogu.form.AjaxCheck = function() {
	qiaogu.form.Validator.apply(this, arguments);
};
qiaogu.form.AjaxCheck.prototype = new qiaogu.form.Validator();
qiaogu.form.AjaxCheck.prototype.constructor = qiaogu.form.AjaxCheck;
qiaogu.form.AjaxCheck.prototype.validateSelf = function(element, form) {
	var result = true;
	if ($(element).val()) {
		try {
			var data = eval('({' + $(element).attr('name') + ': ' + $(element).val() + '})');
		} catch (ee) {}
		$.ajax({
			'url': this.checkUrl,
			type: 'get',
			cache: false,
			async: false,
			timeout: 20,
			data: data,
			success: function(d) {
				result = this.onAjaxSuccess(d);
			},
			error: function(d) {
				if (this.onAjaxFail) {
					result = this.onAjaxFail(d)
				}
			}
		});
	}
	var customInfo = qiaogu.form.Form.getCustomInfo(element, form);
	qiaogu.form.Validator.showMessage(element, result, result ? qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg') : qiaogu.form.Validator.getMessage(customInfo, this, 'errorMsg'));
	return result;
};


qiaogu.form.Group = function() {
	qiaogu.form.Validator.apply(this, arguments);
};
qiaogu.form.Group.prototype = new qiaogu.form.Validator();
qiaogu.form.Group.prototype.constructor = qiaogu.form.Group;
qiaogu.form.Group.prototype.isGroup = true;
qiaogu.form.Group.prototype.End_Of_Group = 'EOG';
qiaogu.form.Group.prototype.validateSelf = function(element, form) {
	var result = $(element).val() == $('' + arguments[2]).val();
	var customInfo = qiaogu.form.Form.getCustomInfo(element, form);
	qiaogu.form.Validator.showMessage(element, result, result ? qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg') : qiaogu.form.Validator.getMessage(customInfo, this, 'errorMsg'));
	return result;
};

qiaogu.form.VTel = function() {
	qiaogu.form.Validator.apply(this, arguments);
};
qiaogu.form.VTel.prototype = new qiaogu.form.Validator();
qiaogu.form.VTel.prototype.constructor = qiaogu.form.VTel;
qiaogu.form.VTel.prototype.validateSelf = function(element, form) {
	
	var areaCode;
	var number;
	var ext;
	
	var _element = $(element);
	if(_element.hasClass('GTelAreaCode')) {
		areaCode = _element;
		number = _element.nextAll('.GTelNumber');
		ext = _element.nextAll('.GTelExt');
	}else if(_element.hasClass('GTelNumber')) {
		areaCode = _element.prevAll('.GTelAreaCode');
		number = _element;
		ext = _element.nextAll('.GTelExt');
	}else if(_element.hasClass('GTelExt')) {
		areaCode = _element.prevAll('.GTelAreaCode');
		number = _element.prevAll('.GTelNumber');
		ext = _element;
	}
	if (!areaCode || !number || !ext){
		throw new Error('must has class VTel,GTelAreaCode,GTelNumber,GTelExt');
	}
	areaCode = $.trim(areaCode.val());
	number = $.trim(number.val());
	ext = $.trim(ext.val());

	var customInfo;
	if(!/^\s*(\d{3,4})?\s*$/.exec(areaCode)) {
		customInfo = {'VTel-errorMsg':'区号格式不正确'};
	} else if(!/^\s*(\d{7,8})?\s*$/.exec(number)) {
		customInfo = {'VTel-errorMsg':'固定电话号格式不正确'};
	} else if(!/^\s*(\d{1,5})?\s*$/.exec(ext)) {
		customInfo = {'VTel-errorMsg':'分机号格式不正确'};
	} else if(ext && (!areaCode || !number)){
		customInfo = {'VTel-errorMsg':'区号和固定电话号必填'};
	} else if(areaCode && !number) {
		customInfo = {'VTel-errorMsg':'固定电话号必填'};
	} else if(number && !areaCode) {
		customInfo = {'VTel-errorMsg':'区号必填'};
	}
	if(customInfo) {
		qiaogu.form.Validator.showMessage(element, false, qiaogu.form.Validator.getMessage(customInfo, this, 'errorMsg'));
		return false;
	}
	qiaogu.form.Validator.showMessage(element, true, qiaogu.form.Validator.getMessage(customInfo, this));
	return true;

};


qiaogu.form.Not = function() {
	qiaogu.form.Group.apply(this, arguments);
};
qiaogu.form.Not.prototype = new qiaogu.form.Group();
qiaogu.form.Not.prototype.constructor = qiaogu.form.Not;
qiaogu.form.Not.prototype.validateSelf = function(element, form) {
	var result = true;
	if ($($(element).val()).size()) {
		var args = arguments;
		$($(element).val()).each(function() {
			for (var i = 2; i < args.length; i++) {
				result = (Number(this) != Number(args[i]));
				if (!result) {
					break;
				}
			}
			return result;
		});
	} else {
		result = $(element).val() != arguments[2];	
	}
	var customInfo = qiaogu.form.Form.getCustomInfo(element, form);
	qiaogu.form.Validator.showMessage(element, result, result ? qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg') : qiaogu.form.Validator.getMessage(customInfo, this, 'errorMsg'));
	return result;
};

qiaogu.form.OR = function() {
	qiaogu.form.Group.apply(this, arguments);
};
qiaogu.form.OR.prototype = new qiaogu.form.Group();
qiaogu.form.OR.prototype.constructor = qiaogu.form.OR;
qiaogu.form.OR.prototype.validateSelf = function(element, form) {
	var result = false;
	for (var i = 2; i < arguments.length; i++) {
		var v = arguments[i];
		v = qiaogu.form.Validator.getValidator(v);
		if (v && v.validate.apply(v, arguments)) {
			result = true;
			break;
		}		
	}
	var customInfo = qiaogu.form.Form.getCustomInfo(element, form);
	qiaogu.form.Validator.showMessage(element, result, result ? qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg') : qiaogu.form.Validator.getMessage(customInfo, this, 'errorMsg'));
	return result;
};

qiaogu.form.GRequired = function() {
	qiaogu.form.Group.apply(this, arguments);
};
qiaogu.form.GRequired.prototype = new qiaogu.form.Group();
qiaogu.form.GRequired.prototype.constructor = qiaogu.form.GRequired;
qiaogu.form.GRequired.prototype.validateSelf = function(element, form) {
	var counter = 0;
	
	var _this = $('[name=' + $(element).attr('name') + ']');
	if( $(element).parents('.GroupValidate').size() ){
			_this =	$(element).parents('.GroupValidate').find('[name=' + $(element).attr('name') + ']');
	}
	
	_this.each(function() {
		if ($(this).attr('checked')) {
			counter++;	
		}
	});
	var from = arguments[2] || 1;
	var to = arguments[3] || (arguments[2] ? $('[name=' + $(element).attr('name') + ']').size() + 1 : 2);
	// result = (counter >= from && counter < to);
	var customInfo = qiaogu.form.Form.getCustomInfo(element, form);
	if(counter < parseInt(from)){
		qiaogu.form.Validator.showMessage(element, false, qiaogu.form.Validator.getMessage(customInfo, this, 'lessErrorMsg', 'errorMsg'));
		return false;
	}else if(counter < parseInt(to)){
		qiaogu.form.Validator.showMessage(element, true, qiaogu.form.Validator.getMessage(customInfo, this, 'successMsg'));
		return true;	
	}else{
		qiaogu.form.Validator.showMessage(element, false, qiaogu.form.Validator.getMessage(customInfo, this, 'moreErrorMsg', 'errorMsg'));
		return false;
	}
	
	 
};