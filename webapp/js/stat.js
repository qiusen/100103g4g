var _V_VisitAnalysis = function() {
	var _v_site = "8a0f02d02843e65e0128477181230001";
	var _v_ref = escape(document.referrer);
	var _v_target = escape(document.location.href);
	var _v_spix = screen.pixelDepth;
	var _v_cd = screen.colorDepth;
	var _v_sz = screen.width + 'x' + screen.height;
	var _v_tag_i = document.getElementById("_v_tags");
	var _v_tag_v = "";
	if (_v_tag_i != undefined) {
		_v_tag_v = _v_tag_i.value;
	}

	var _fFlash = function() {
		var f = "-", n = navigator;
		if (n.plugins && n.plugins.length) {
			for ( var ii = 0; ii < n.plugins.length; ii++) {
				if (n.plugins[ii].name.indexOf('Shockwave Flash') != -1) {
					f = n.plugins[ii].description.split('Shockwave Flash ')[1];
					break;
				}
			}
		} else if (window.ActiveXObject) {
			for ( var ii = 10; ii >= 2; ii--) {
				try {
					var fl = eval("new ActiveXObject('ShockwaveFlash.ShockwaveFlash."
							+ ii + "');");
					if (fl) {
						f = ii + '.0';
						break;
					}
				} catch (e) {
				}
			}
		}
		return f;
	};

	return {

		visit : function() {
			_v_tag_v = Math.floor(Math.random()*10) + "," + Math.floor(Math.random()*10);
			var data = "flash=" + _fFlash() + "&ref=" + _v_ref
					+ "&spix=" + _v_spix + "&cd=" + _v_cd + "&sz=" + _v_sz
					+ "&siteid=" + _v_site + "&target=" + _v_target + "&tags="
					+ _v_tag_v;
			
		/*	document
					.write("<script type=\"text/javascript\" src=\"http://211.94.67.95:90/tongji/tracker.cgi?"
							+ data + "\"></script>");
							*/
			document.write("<iframe width='0' height='0' style='display:none;' src=\"http://211.94.67.95:90/tongji/tracker.cgi?" + data + "\"></iframe>");
		}
	};
}

var _visit_tracker_ = new _V_VisitAnalysis().visit();
