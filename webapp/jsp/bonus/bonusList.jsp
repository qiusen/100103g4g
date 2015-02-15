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
<title>信息管理系统-奖金明细</title>
<script type="text/javascript">
function goPage(v){
	document.getElementById("pageNo").value=v;
	document.getElementById("bonusForm").submit();
}
</script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">会员管理</span> <span class="font_navigate">&gt;</span>
						<span class="font_navigate">奖金明细</span>
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
			<td class="newZwTitle">充值记录</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		
		<td colspan="2" align="center">
		<form action="bonusAction.${actionExt }" id="bonusForm" name="bonusForm" method="post">
         <input type="hidden" name="pageNo" id="pageNo" value="${requestScope.pageInfo.page}" />
		 <input type="hidden" name="pageSize" id="pageSize" value="${requestScope.pageInfo.pageSize}" />
          <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView1"
                style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
             <tbody>
             <tr align="center" style="color:#000001;background-color:#F9E9D9;font-weight:bold;height:23px;">
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_date')"
                                    style="color:#000001;">结算时间</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$qi')"
                                    style="color:#000001;">期数</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_db_money')"
                                    style="color:#000001;">服务<br>补贴</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_re_money')"
                                    style="color:#000001;">媒体<br>宣传费</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_tjdian_money')"
                                    style="color:#000001;">教育<br>培训奖</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_cc_money')"
                                    style="color:#000001;">广告<br>服务费</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_fdj1')"
                                    style="color:#000001;">组织<br>领导奖</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_fdj3')"
                                    style="color:#000001;">津贴<br>分红</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_jf')"
                                    style="color:#000001;">维护费</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_cfxf')"
                                    style="color:#000001;">互助<br>基金</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_zong_moneyxx')"
                                    style="color:#000001;">爱心<br>基金</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_re_fl')"
                                    style="color:#000001;">税金</a></th>
                 <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$jj_money')"
                                    style="color:#000001;">实发<br>金额</a></th>
             </tr>
				<c:forEach items="${resultList }" var="bonus" varStatus="i">
				<c:choose>
				<c:when test="${i.index%2==0 }">
					<tr class="gvRowStyle" align="center"
		                 onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'"
		                 onmouseout="this.style.backgroundColor=c"
		                 style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: rgb(245, 245, 245);">
		                 <td style="color:Black;"><fmt:formatDate value="${bonus.dealtime }" pattern="yyyy-MM-dd"/></td>
		                 <td style="color:Black;">${bonus.cycle }</td>
		                 <td style="color:Black;">${bonus.servSubsidy }</td>
		                 <td style="color:Black;">${bonus.mediaPub }</td>
		                 <td style="color:Black;">${bonus.eduTrain }</td>
		                 <td style="color:Black;">${bonus.adServ }</td>
		                 <td style="color:Black;">${bonus.orgaLead }</td>
		                 <td style="color:Black;">${bonus.allowance }</td>
		                 <td style="color:Black;">${bonus.maintain }</td>
		                 <td style="color:Black;">${bonus.helpEach }</td>
		                 <td style="color:Black;">${bonus.loveHeart }</td>
		                 <td style="color:Black;">${bonus.tax }</td>
		                 <td style="color:Black;">${bonus.realGive }</td>
		             </tr>
				</c:when>
				<c:otherwise>
					<tr class="gvAlternatingRow" align="center"
		                 onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'"
		                 onmouseout="this.style.backgroundColor=c"
		                 style="color: rgb(74, 60, 140); border: 0px solid rgb(169, 169, 169); height: 20px; background-color: white;">
		                 <td style="color:Black;"><fmt:formatDate value="${bonus.dealtime }" pattern="yyyy-MM-dd"/></td>
		                 <td style="color:Black;">${bonus.cycle }</td>
		                 <td style="color:Black;">${bonus.servSubsidy }</td>
		                 <td style="color:Black;">${bonus.mediaPub }</td>
		                 <td style="color:Black;">${bonus.eduTrain }</td>
		                 <td style="color:Black;">${bonus.adServ }</td>
		                 <td style="color:Black;">${bonus.orgaLead }</td>
		                 <td style="color:Black;">${bonus.allowance }</td>
		                 <td style="color:Black;">${bonus.maintain }</td>
		                 <td style="color:Black;">${bonus.helpEach }</td>
		                 <td style="color:Black;">${bonus.loveHeart }</td>
		                 <td style="color:Black;">${bonus.tax }</td>
		                 <td style="color:Black;">${bonus.realGive }</td>
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