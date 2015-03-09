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
	Form: function(formElement, options) {
		this.formElement = formElement;
		this.options = options;

		this.init();
	}
});


qiaogu.form.Form.defaultOptions = {
	ableObject: 'input, textarea, select, button',
	resetObject: null,
	actionMap: {},
	isAjaxSubmit: function(element) {
		var ele = element || this.formElement;
		return $(ele).filter('.Ajax').size()
				|| $(ele).filter('[action^=ajax-]').size();
	},
	onReturn: function() {}
};
qiaogu.form.Form.formsOnPage = [];
qiaogu.form.Form.forms = {};
qiaogu.form.Form.findForms = function(container) {
	$('form', container || document).each(function() {
		if (this.formObject) {
			return;
		}
		var f = new qiaogu.form.Form(this, $.extend({}, qiaogu.form.Form.defaultOptions));
		qiaogu.form.Form.formsOnPage.push(f);
		qiaogu.form.Form.forms[$(this).attr('id')] = f;
		this.formObject = f;
//		$('input[type=text]:last', this).keyup(function(evt) {
//			if (evt.keyCode == 13) {
//				f.submit(this);
//				this.blur();
//				return false;
//			}
//		});
	});	
};
qiaogu.form.Form.custom = function(options) {
	if (!options) {
		return;
	}
	$(qiaogu.form.Form.formsOnPage).each(function() {
		for (var expr in options) {	
			if (!expr) {
				continue;				
			}
			if ($(this.formElement).filter(expr).size() > 0) {
				options[expr].box == 1 && (options[expr].box = options.box);
				this.custom(options[expr]);
			}
		}
	});
};
qiaogu.form.Form.getForm = function(expr) {
	$(qiaogu.form.Form.formsOnPage).filter(expr);
};
qiaogu.form.Form.getCustomInfo = function(element, form) {
	var customInfo = null;
	$.each(form.options, function(expr, value) {
		if ($(element).filter(expr).size() > 0) {
			customInfo = value;
			return false;
		}
		return true;
	});
	return customInfo;
};


qiaogu.form.Form.prototype.custom = function(options) {
	$.extend(this.options, options);
	
	var self = this;
	$.each(this.options, function(expr, value) {
		value = value || {};
		if (value.hasOwnProperty('submit')) {	
			var ele = $(expr, this.formElement);
			if (ele.filter('.Submit').size() && !value.submit) {
				//remove submit handler				
				self.removeSubmitHandler(ele);
			} else if (value.submit) {
				//add submit handler;
				self.installSubmitHandler(ele);
			}
		}
		if (value.hasOwnProperty('submitOnChange')) {	
			var ele = $(expr, this.formElement);
			if (ele.filter('.SubmitOnChange').size() && !value.submitOnChange) {
				//remove submit handler				
				self.removeSubmitHandler(ele, 'change');
			} else if (value.submitOnChange) {
				//add submit handler;
				self.installSubmitHandler(ele, 'change');
			}
		}
		if (value.hasOwnProperty('ajax')) {
			var ele = $(expr, this.formElement);
			ele[0].isAjax = $.isFunction(value.ajax) ? value.ajax() : value.ajax;
		}
	});
};
qiaogu.form.Form.prototype.able = function(en, expr) {
	$(expr || this.options.ableObject, this.formElement).attr('disabled', en ? '' : 'disabled');
};
qiaogu.form.Form.prototype.reset = function() {
	if (this.options.resetObject) {
		for (var expr in this.options.resetObject) {
			this.val(expr, this.options.resetObject[expr]);
		}
	} else {
		this.formElement.reset();
	}
};
qiaogu.form.Form.prototype.val = function(expr, value) {
	if (!value) {
		return $(expr, this.formElement).val();
	} else {
		var p = $(expr, this.formElement);
		if (p.tagName.toLowerCase() == 'input') {
			p.val(value);
		} else if (p.tagName.toLowerCase() = 'textarea') {
			p.text(value);
		}
	}
};
qiaogu.form.Form.prototype.validate = function() {
	var ret = null;
	var func = function() {
		if (!this.validateHandler || $(this).attr("disableValidator")) {
			return true;
		}
		if (!this.validateHandler()) {
			!ret && (ret = this);
		}
		return true;
	}
	$('input, textarea, select', this.formElement).filter(':visible').each(func);
	$('input, textarea, select', this.formElement).filter('.KETextArea').each(func);
	if (ret) {
		//ret.focus();
		try {
			//ret.select();
		} catch (ee) {}	
	}
	return !ret && (!this.options.userFormValidate || this.options.userFormValidate());
};
qiaogu.form.Form.prototype.getMethod = function(element) {
	var customInfo = qiaogu.form.Form.getCustomInfo(element, this);
	customInfo = customInfo || {};
	return customInfo.method || ($(this.formElement).attr('method') || 'post');
};
qiaogu.form.Form.prototype.getAction = function(element) {
	var customInfo = qiaogu.form.Form.getCustomInfo(element, this);
	customInfo = customInfo || {};
	return customInfo.action || ($(this.formElement).attr('action') || 'http://www.qiaogu.com');
};
//this element can been clicked once, such as purchase, order button
qiaogu.form.Form.prototype.checkOnce = function(element) {
	this.lastButton = $(element);
	$(element).hide();
	this.loading = $('<span><img src="/admin/images/loading.gif" />内容正在提交，请稍候。</span>');
	$(element).after(this.loading);
	var self = this;
	this.options.cancelLoadingHintFunc = function(success) {
		if (self.options.cancelLoadingHint) {
			if (self.options.keepLoading && success) {
				
			} else {
				self.loading.remove();
				$(element).show();
				self.options.cancelLoadingHint = false;
			}
		}
		if (self.options.oldOnReturn) {
			self.options.onReturn = self.options.oldOnReturn;
		}
		if (self.options.oldProcessReturn) {
			self.options.processReturn = self.options.oldProcessReturn;
		}
	};
	if (window.qg && this.options.onReturn) {
		this.options.oldOnReturn = this.options.onReturn;
		this.options.cancelLoadingHint = true;
		this.options.onReturn = function(result, box) {
			self.options.oldOnReturn(result, box);
			self.options.cancelLoadingHintFunc(self.options.keepLoading);
		}
	} else if (this.options.processReturn) {
		this.options.oldProcessReturn = this.options.processReturn;
		var self = this;
		this.options.cancelLoadingHint = true;
		this.options.processReturn = function(result, box) {
			self.options.oldProcessReturn(result, box);
			self.options.cancelLoadingHintFunc(self.options.keepLoading);
		}
	}
//	if (this.options.onClose) {
//		this.options.oldOnClose = this.options.onClose;
//		this.options.cancelLoadingHint = true;
//		var self = this;
//		this.options.onClose = function() {
//			self.loading.remove();
//			$(element).show();
//			self.options.oldOnClose();
//			self.options.onClose = self.options.oldOnClose();
//			self.options.cancelLoadingHint = false;
//		};
//	} else {
//		this.options.cancelLoadingHint = true;
//		var self = this;
//		this.options.onClose = function() {
//			self.loading.remove();
//			$(element).show();
//			self.options.cancelLoadingHint = false;
//		};
//	}
}
qiaogu.form.Form.prototype.submit = function(element, byOtherElement, cancelBeforeSubmit) {
	var self = this;
	if (this.validate()) {
		element || (element = this.formElement);
		
		if (element && (element.isAjax || $(element).is('.Ajax'))) {//ajax progress bar
			if (!cancelBeforeSubmit && this.options.beforeSubmit) {
				if (!this.options.beforeSubmit()) {
					return;
				}
			}
			this.checkOnce(byOtherElement || element);
			if (this.options.onReturn && window.qg && qg.ajaxRequest) {
				this.options.fromForm = this;
				qg.ajaxRequest.wait(this.getAction(element), $(this.formElement).serializeArray(), this.options);
			} else {
				$[this.getMethod(element)](this.getAction(element), $(this.formElement).serializeArray(), function(d) {
					self.options.processReturn(d, self);
				});
			}
		} else if (element && $(element).is('.CrossDomain')) {
			this.checkOnce(byOtherElement || element);
			this.options.crossDomain();
		} else {
			if (!cancelBeforeSubmit && this.options.beforeSubmit) {
				if (!this.options.beforeSubmit()) {
					return;
				}
			}
			this.formElement.method = this.getMethod(element);
			this.formElement.action = this.getAction(element);
			this.checkOnce(byOtherElement || element);
			this.formElement.submit();
		}
	}
};
qiaogu.form.Form.prototype.init = function() {
	if (qiaogu.form.autoCallInstallSubmitHandlers) {
		this.installSubmitHandlers();
	}
	if (qiaogu.form.autoCallInstallValidateHandlers) {
		this.installValidateHandlers();
	}
};
qiaogu.form.Form.prototype.installSubmitHandler = function(element, evtName) {
	var self = this;
	evtName = evtName || 'click';
	$(element).unbind(evtName, element.submitHandler);
	element.submitHandler = function() {
		self.submit(element);
	};	
	$(element)[evtName](element.submitHandler);
	element.isAjax = this.options.isAjaxSubmit(element);
	
	element.unloadSubmitHandler = function() {
		$(element).unbind(evtName, element.submitHandler);
	};
	$(this.formElement.ownerDocument).unload(element.unloadSubmitHandler);
};
qiaogu.form.Form.prototype.removeSubmitHandler = function(element, evtName) {
	evtName = evtName || 'click';
	$(element).unbind(evtName, element.submitHandler);
	$(this.formElement.ownerDocument).unbind('unload', element.submitHandler);
};
qiaogu.form.Form.prototype.installSubmitHandlers = function() {
	var self = this;
	$('.Submit', this.formElement).each(function() {
		self.installSubmitHandler(this);
	});
	$('.SubmitOnChange', this.formElement).each(function() {
		self.installSubmitHandler(this, 'change');
	});	
};
qiaogu.form.Form.prototype.installValidateHandlers = function() {
	var selfForm = this;
	$('input, textarea, select', this.formElement).each(function() {
		if (this.type == 'button') {
			return;
		}
		if (!$(this).filter('.Submit, .SubmitOnChange').size()) {
			$(this).unbind('blur', this.validateHandler);
		}
		this.validateHandler = function(evt) {
			var self = this;
			$.each(selfForm.options, function(expr, value) {
				if ($(self).filter(expr).size() > 0) {
					if (value.beforeValidate) {
						value.beforeValidate(evt);
					}
				}
			});
								
			//if a valid regex is defined, first check it, if not ok, then go down,
			var valid = false;
			var customInfo = qiaogu.form.Form.getCustomInfo(this, selfForm);			
			if (customInfo && customInfo.validRegex) {
				valid = (new qiaogu.form.Validator(customInfo.validRegex)).validate(this, selfForm);
			}
			
			var hasValidatorWithSubValidators = false;
			if (!valid) {
				valid = true;	
				var groupValidator = null;
				var groupItems = [self, selfForm];
				if($(this).attr('class')){
					var ss = $(this).attr('class').split(/\s+/);
					$(ss).each(function() {
						if (/\S/.test(this)) {
							if (groupValidator) {
								if (qiaogu.form.Group.prototype.End_Of_Group == this) {
									valid = groupValidator.validate.apply(groupValidator, groupItems);
									groupValidator = null;
									groupItems.length = 2;	
								} else {
									//$('' + this).each(function() {
									groupItems.push(this);	
									//});
								}
							} else {
								var validator = qiaogu.form.Validator.getValidator(this);
								if (validator) {
									if (validator.isGroup) {
										groupValidator = validator;
									} else {
										if (validator.subValidators) {
											hasValidatorWithSubValidators = true;
										}
										valid = validator.validate(self, selfForm);	
										//alert(this + '\n' + validator.msgs.error + ':' + ret);
									}
								}	
							}
						}
						return valid;
					});
					
				}
			}
			//if value is null, and is not Required, then skip the left check.
			//or ...				   not GRequired, ...
			//but if class contain Validator which conatins subValidators, cant left this time and it decide the result
			if (!valid && /^\s*$/.test($(this).val()) 
					&& !hasValidatorWithSubValidators 
					&& !$(self).hasClass('Required') 
					&& !$(self).hasClass('GRequired')) {
				
				var ele = $(this).nextAll('.validateMsg');
				if (ele.size()) {
					ele.text('');
					ele.removeClass('vtip vsuccess verror');
				}
				valid = true;
			}
			if (valid) {
				customInfo && (customInfo.onValid || function() {})(!!evt);
			}
			return valid;
		};
		if (!$(this).filter('.Submit, .SubmitOnChange').size()) {
			$(this).blur(this.validateHandler);
		}
		$(this).unbind('focus', this.focusHandler);
		this.focusHandler = function() {
			qiaogu.form.Validator.restoreTip(this);	
		};
		$(this).focus(this.focusHandler);

	});
	$(this.formElement.ownerDocument).unload(function() {
		$('input, textarea, select', this.formElement).each(function() {
			if (!$(this).filter('.Submit, .SubmitOnChange').size()) {
				$(this).unbind('change', this.validateHandler);	
			}
			$(this).unbind('focus', this.focusHandler);
		});	
	});
};
qiaogu.form.Form.prototype.disableValidator = function(eles) {
	$(eles).each(function() {
		$(this).unbind('blur', this.validateHandler);
		$(this).unbind('focus', this.focusHandler);
		$(this).attr('disableValidator', 'true');
	});
}
qiaogu.form.Form.prototype.restoreValidator = function(eles) {
	$(eles).each(function() {
		if (!$(this).filter('.Submit, .SubmitOnChange').size()) {
			$(this).unbind('blur', this.validateHandler);
			$(this).blur(this.validateHandler);
			$(this).focus(this.focusHandler);
			$(this).removeAttr('disableValidator');
		}
	});
}

qiaogu.form.Form.prototype.toString = function() {//for debug
	var s = '';
	$('input, textarea, select', this.formElement).each(function() {
		s += '\n';
		var ss = [];
		ss.push('tagname=' + this.tagName);
		ss.push('id=' + this.id);
		ss.push('name=' + this.name);
		ss.push('type=' + this.type);
		ss.push('value=' + $(this).val());
		ss.push('disabled=' + $(this).attr('disabled'));
		if ($(this).attr('checked')) {
			ss.push('checked');
		}
		$('option:selected', this).each(function() {
			ss.push('select[' + this.value + ']=' + $(this).text());
		});
		
		s += ss.join(', ');
	});
	return s;
};

if (qiaogu.form.autoCallFindForms) {
	qiaogu.form.Form.findForms();
}