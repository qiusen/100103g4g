<%@ page contentType="text/html;charset=UTF-8" %><%@ include file="/jsp/common/taglibs.jsp"%><div id="navbar">
		<ul class="navlist">
			<li style="width: 2px;"><a href="#"></a></li>

			<li><a href="index.html">首页</a></li>

			<li><a href="#">资料信息</a>
				<ul>
					<li><a href="#" target="_self">新闻公告</a></li>
				</ul></li>

			<li><a href="#">会员管理</a>
				<ul>
					<li><a href="userlogin.html" target="_self">市场团队</a></li>
					<!--登陆进去后进入：usermanage.html-->
				</ul></li>

			<li><a href="#">个人资料</a>
				<ul>
					<li><a href="userlogin.html" target="_self">个人信息</a></li>
					<!--登陆进去后进入：userinfo.html-->
					<li><a href="userlogin.html" target="_self">修改密码</a></li>
					<!--登陆进去后进入：updatePass.html-->
				</ul></li>

			<li><a href="${base }/login!logOff.${actionExt}">退出系统</a></li>
		</ul>
	</div>
	<div class="subnav">
		<span id="sub_0" style="display: block">
		<style type="text/css">

BODY {
	TEXT-ALIGN: center; WIDTH: 100%; HEIGHT: 100%; COLOR: #333; FONT-SIZE: 12px
}

.areareel {
	POSITION: absolute; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 550px; PADDING-RIGHT: 0px; HEIGHT: 30px; TOP: -5px; PADDING-TOP: 0px; LEFT: 300px
}/*WIDTH: 480px; */
.areareel TABLE {
	BORDER-COLLAPSE: collapse; COLOR: #b6b6b6; FONT-SIZE: 12px
}
.area-text {
	PADDING-TOP: 2px
}
.areareel IMG {
	CURSOR: pointer
}
.ttt {
	TEXT-ALIGN: left; LINE-HEIGHT: 30px; WIDTH: 100%; BACKGROUND: url(http://image.10010.com/images/navsub_bg.jpg) repeat-x left top; HEIGHT: 30px; OVERFLOW: hidden
}
</style>
				<div class="ttt">
<font color="#333333">
<script>
today=new Date();
var day;
var date;
var hello;
hour=today.getHours()
if(hour < 6)hello='凌晨好!尊敬的用户!&nbsp;'
else if(hour < 9)hello='早上好!尊敬的用户!&nbsp;'
else if(hour < 12)hello='上午好!尊敬的用户!&nbsp;'
else if(hour < 14)hello='中午好!尊敬的用户!&nbsp;'
else if(hour < 17)hello='下午好!尊敬的用户!&nbsp;'
else if(hour < 19)hello='傍晚好!尊敬的用户!&nbsp;'
else if(hour < 22)hello='晚上好!尊敬的用户!&nbsp;'
else {hello='晚上好!&nbsp;'}
day=today.getDay()
if(day==0)day='&nbsp;星期日'
else if(day==1)day='&nbsp;星期一'
else if(day==2)day='&nbsp;星期二'
else if(day==3)day='&nbsp;星期三'
else if(day==4)day='&nbsp;星期四'
else if(day==5)day='&nbsp;星期五'
else if(day==6)day='&nbsp;星期六'
date=(today.getFullYear())+'年'+(today.getMonth()+1)+'月'+today.getDate()+'日';
document.write("<font color=#000000>" +hello+"</font>");
document.write('今天是&nbsp;')
document.write(date);
document.write(day);
</script>
</font>

<!-- <font color="#000000">上午好!尊敬的用户!&nbsp;</font>今天是&nbsp;2015年1月10日&nbsp;星期六</font>
 -->

<div class="areareel" style="left: 300px; top: -1px">

<!--
<marquee onmouseout="start()" onmouseover="stop()" scrollamount="3" width="100%"><font color="red"><span id="Label2" style="font-weight:bold;">一、即日起陆续发放14年11月11日开始注册的会员的手机和卡品，请各团队抓紧时间将身份证资料统计至客服处。二、4G396套餐是系统做好的优惠。每月包含2000分钟通话和6G流量，两年不用交费。</span></font></marquee>
-->

xxxxxxxxxxxxxxxxx<marquee scrollamount="3" width="100%"><font color="red"><span id="Label2" style="font-weight:bold;">一、即日起陆续发放14年11月11日开始。</span></font></marquee>GGGGGGGG

 </div>
</div>
				</span>
			</div>