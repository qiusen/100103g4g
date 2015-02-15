<%@ page contentType="text/html;charset=UTF-8" %><%@ include file="/jsp/common/taglibs.jsp"%><div id="navbar">
		<ul class="navlist">
			<li style="width: 2px;"><a href="#"></a></li>

			<li><a href="${base }/index.${actionExt }" target="mainFrame">首页</a></li>

			<li><a href="#">资料信息</a>
				<ul>
					<li><a href="${base }/common/noticeAction.${actionExt }" target="mainFrame">新闻公告</a></li>
					<li><a href="${base }/op/commentAction!add.${actionExt }" target="mainFrame">我要留言</a></li>
					<li><a href="${base }/op/commentAction.${actionExt }" target="mainFrame">查看留言</a></li>
				</ul>
			</li>
			<li><a href="#">产品中心</a>
				<ul>
					<li><a href="${base }/common/buyExplainAction.${actionExt }" target="mainFrame">购买说明</a></li>
					<li><a href="${base }/op/onlineOrderAction.${actionExt }" target="mainFrame">订购中心</a></li>
					<!--登陆进去后进入：usermanage.html-->
				</ul></li>
			<li><a href="#">会员管理</a>
				<ul>
					<li><a href="userlogin.html" target="_self">市场团队</a></li>
					<li><a href="${base }/op/memberAction!add.${actionExt }" target="mainFrame">注册会员</a></li>
					<li><a href="${base }/op/memberAction.${actionExt }?status=0" target="mainFrame">未审会员</a></li>
					<li><a href="${base }/op/memberAction.${actionExt }?status=1" target="mainFrame">已审会员</a></li>
					<!--登陆进去后进入：usermanage.html-->
				</ul></li>
			<li><a href="#">奖金业绩</a>
				<ul>
					<li><a href="${base }/op/bonusAction.${actionExt }" target="mainFrame">奖金明细</a></li>
					<li><a href="userlogin.html" target="_self">电商币名细</a></li>
					<li><a href="userlogin.html" target="_self">申请提现</a></li>
					<li><a href="userlogin.html" target="_self">转报单币</a></li>
					<li><a href="userlogin.html" target="_self">现金币转报单币</a></li>
					<!--登陆进去后进入：usermanage.html-->
				</ul></li>

			<li><a href="#">个人资料</a>
				<ul>
					<li><a href="${base }/op/memberAction!show.${actionExt }" target="mainFrame">个人信息</a></li>
					<!--登陆进去后进入：userinfo.html-->
					<li><a href="${base }/op/memberAction!changePasswd.${actionExt }" target="mainFrame">修改密码</a></li>
					<!--登陆进去后进入：updatePass.html-->
					<li><a href="${base }/op/memberAction!sale.${actionExt }" target="mainFrame">销售业绩</a></li>
					<li><a href="${base }/op/memberAction!area.${actionExt }" target="mainFrame">两区业绩</a></li>
					<li><a href="${base }/op/depositAction.${actionExt }" target="mainFrame">充值记录</a></li>
				</ul></li>

			<li><a href="${base }/login!logOff.${actionExt}">退出系统</a></li>
		</ul>
	</div>
	<div class="subnav">
	<span id="sub_0" style="display:block">
				<div class="ttt" style="height:30px;">
                    <div style="width:320px;float:left;">
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
                    </div>
                    <!-- <font color="#000000">上午好!尊敬的用户!&nbsp;</font>今天是&nbsp;2015年1月10日&nbsp;星期六</font>
                      -->
                    <style type="text/css">
                        #gongao{
                            width:550px; height:30px; float:right; overflow:hidden; line-height:30px; font-size:13px;font-family:'宋体';color:red;font-weight:bold;
                        }
                        #gongao #scroll_begin, #gongao #scroll_end{display:inline}
                    </style>

                    <div id="gongao">
                        <div style="width:540px;height:30px;margin:0 auto; white-space:nowrap;overflow:hidden;" id="scroll_div" class="scroll_div">
                            <div id="scroll_begin">
                                 ${sessionScope.scrollNotice.content }
                                <!-- {:C('SITE_GONGGAO')}-->
                            </div>
                            <div id="scroll_end"></div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        (function ScrollImgLeft(){
                            var speed=50;
                            var scroll_begin = document.getElementById("scroll_begin");
                            var scroll_end = document.getElementById("scroll_end");
                            var scroll_div = document.getElementById("scroll_div");
                            scroll_end.innerHTML=scroll_begin.innerHTML;
                            function Marquee(){
                                if(scroll_end.offsetWidth-scroll_div.scrollLeft<=0)
                                    scroll_div.scrollLeft-=scroll_begin.offsetWidth;
                                else
                                    scroll_div.scrollLeft++;
                            }
                            var MyMar=setInterval(Marquee,speed);
                            scroll_div.onmouseover=function() {clearInterval(MyMar);}
                            scroll_div.onmouseout=function() {MyMar=setInterval(Marquee,speed);}
                        })();
                    </script>
                </div>
          </span>
	</div>