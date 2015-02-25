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
<title>信息管理系统-市场团队</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">管理会员</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">市场团队</span></td>
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
			<td class="newZwTitle">市场团队</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		<td colspan="2" class="newGjmyGyUll" style="padding:10px">
<form action="memberAction!usermanage.${actionExt }" method="post">
       <table cellspacing="0" cellpadding="0" border="0">
       <tbody>
       <tr>
           <td valign="top" height="50" align="left" colspan="15">
               <table cellspacing="0" cellpadding="0" border="0" height="30" style="width: 740px">
                   <tbody><tr>
                       <td style="width: 45px">
                           查询:
                       </td>
                       <td style="width: 100px">
                           <input type="text" style="width:100px;" id="code" name="code"></td>
                       <td style="width: 125px">
                           <input type="submit" class="tijiaobtn2" id="Button1" value="查询" name="Button1"></td>
                       <td align="center">
                           <span style="display:inline-block;background-color:#80FF80;height:16px;width:16px;" id="Label61"></span>：浅绿表示已审核</td>
                       <td align="center">
                           <span style="display:inline-block;background-color:#FF8080;height:16px;width:16px;" id="Label62"></span>：浅红表示未审核</td>
                       <td align="center" style="width: 143px">
                           <span style="display:inline-block;background-color:#FFFF80;height:16px;width:16px;" id="Label63"></span>：浅黄表示未注册</td>
                   </tr>
                   </tbody>
               </table>
           </td>
       </tr>
       <tr>
           <td align="center" style="height: 20px" colspan="15">
           <c:choose>
           <c:when test="${member1!=null }">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label1"><a href="memberAction!usermanage.${actionExt }?code=${member1.code }">${member1.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label16">${member1.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image1"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label31">${member1.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label46"><font color="black"><fmt:formatDate value="${member1.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody>
               </table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
               
           </td>
       </tr>
       <tr>
           <td align="center" colspan="15">
               <img src="../images/000.gif">
           </td>
       </tr>
       <tr>
           <td align="center" colspan="7">
           <c:choose>
           <c:when test="${member1!=null && member1.am!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody>
                   <tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3"><span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label2"><a href="memberAction!usermanage.${actionExt }?code=${member1.am.code }">${member1.am.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label17">${member1.am.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image2"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label32">${member1.am.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label47"><font color="black"><fmt:formatDate value="${member1.am.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
               
           </td>
           <td style="background-color: #ccccff">
           </td>
           <td align="center" colspan="7">
           <c:choose>
           <c:when test="${member1!=null && member1.bm!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.bm.code }">${member1.bm.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.bm.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.bm.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.bm.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
               
           </td>
       </tr>
       <tr>
           <td align="center" colspan="15">
               <img src="../images/111.gif"></td>
       </tr>
       <tr>
           <td align="center" style="height: 15px" colspan="3">
           
               <c:choose>
           <c:when test="${member1!=null && member1.am!=null && member1.am.am!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.am.am.code }">${member1.am.am.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.am.am.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.am.am.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.am.am.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
           </td>
           <td style="width: 100px; height: 15px">
           </td>
           <td align="center" style="height: 15px" colspan="3">
               <c:choose>
           <c:when test="${member1!=null && member1.am!=null && member1.am.bm!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.am.bm.code }">${member1.am.bm.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.am.bm.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.am.bm.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.am.bm.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
           </td>
           <td style="background-color: #ccccff">
           </td>
           <td align="center" style="height: 15px" colspan="3">
               <c:choose>
           <c:when test="${member1!=null && member1.bm!=null && member1.bm.am!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.bm.am.code }">${member1.bm.am.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.bm.am.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.bm.am.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.bm.am.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
           </td>
           <td style="width: 100px; height: 15px">
           </td>
           <td align="center" style="height: 15px" colspan="3">
               <c:choose>
           <c:when test="${member1!=null && member1.bm!=null && member1.bm.bm!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.bm.bm.code }">${member1.bm.bm.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.bm.bm.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.bm.bm.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.bm.bm.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
           </td>
       </tr>
       <tr>
           <td align="center" colspan="15">
               <img src="../images/222.gif"></td>
       </tr>
       <tr>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.am!=null && member1.am.am!=null && member1.am.am.am!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.am.am.am.code }">${member1.am.am.am.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.am.am.am.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.am.am.am.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.am.am.am.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       <td style="width: 100px">
       </td>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.am!=null && member1.am.am!=null && member1.am.am.bm!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.am.am.bm.code }">${member1.am.am.bm.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.am.am.bm.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.am.am.bm.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.am.am.bm.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       <td style="width: 100px">
       </td>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.am!=null && member1.am.bm!=null && member1.am.bm.am!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.am.bm.am.code }">${member1.am.bm.am.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.am.bm.am.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.am.bm.am.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.am.bm.am.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       <td style="width: 100px">
       </td>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.am!=null && member1.am.bm!=null && member1.am.bm.bm!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.am.bm.bm.code }">${member1.am.bm.bm.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.am.bm.bm.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.am.bm.bm.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.am.bm.bm.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       <td style="background-color: #ccccff">
       </td>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.bm!=null && member1.bm.am!=null && member1.bm.am.am!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.bm.am.am.code }">${member1.bm.am.am.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.bm.am.am.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.bm.am.am.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.bm.am.am.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       <td style="width: 100px">
       </td>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.bm!=null && member1.bm.am!=null && member1.bm.am.bm!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.bm.am.bm.code }">${member1.bm.am.bm.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.bm.am.bm.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.bm.am.bm.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.bm.am.bm.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       <td style="width: 100px">
       </td>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.bm!=null && member1.bm.bm!=null && member1.bm.bm.am!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.bm.bm.am.code }">${member1.bm.bm.am.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.bm.bm.am.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.bm.bm.am.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.bm.bm.am.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       <td style="width: 100px">
       </td>
       <td align="center" style="width: 100px">
           <c:choose>
           <c:when test="${member1!=null && member1.bm!=null && member1.bm.bm!=null && member1.bm.bm.bm!=null}">
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
                   <tbody><tr>
                       <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                           <span style="display:inline-block;color:Red;background-color:#80FF80;text-decoration:underline;height:100%;width:100%;" id="Label3"><a href="memberAction!usermanage.${actionExt }?code=${member1.bm.bm.bm.code }">${member1.bm.bm.bm.code }</a></span></td>
                   </tr>
                   <tr>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           A</td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                       </td>
                       <td align="center" style="width: 100px; background-color: #99ccff">
                           B</td>
                   </tr>
                   <tr>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label18">${member1.bm.bm.bm.ac }</span></td>
                       <td align="center" style="background-color: #ccccff">
                           <img style="border-width:0px;" src="../images/kp.gif" id="Image3"></td>
                       <td align="center" style="background-color: #ccccff">
                           <span id="Label33">${member1.bm.bm.bm.bc }</span></td>
                   </tr>
                   <tr>
                       <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                           <span id="Label48"><font color="black"><fmt:formatDate value="${member1.bm.bm.bm.createtime }" pattern="yyyy-MM-dd"/></font></span></td>
                   </tr>
                   </tbody></table>
           </c:when>
           <c:otherwise>
           <table cellspacing="0" cellpadding="0" bordercolor="#b5daff" border="1" width="85" style="border-right: #66ff33 1px solid; border-top: #66ff33 1px solid;
                                                border-left: #66ff33 1px solid; border-bottom: #66ff33 1px solid; height: 20px" bordercolorlight="white" bordercolordark="#ffffff">
               <tbody><tr>
                   <td align="center" style="height: 19px; background-color: ghostwhite" colspan="3">
                       <span style="display:inline-block;height:100%;width:100%;" id="Label14"></span></td>
               </tr>
               <tr>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       A</td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                   </td>
                   <td align="center" style="width: 100px; background-color: #99ccff">
                       B</td>
               </tr>
               <tr>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label29"></span></td>
                   <td align="center" style="background-color: #ccccff">
                       <img style="border-width:0px;" src="../images/kk.gif" id="Image14"></td>
                   <td align="center" style="background-color: #ccccff">
                       <span id="Label44"></span></td>
               </tr>
               <tr>
                   <td align="center" style="height: 19px; background-color: #99ccff" colspan="3">
                       <span id="Label59"></span></td>
               </tr>
               </tbody></table>
           </c:otherwise>
           </c:choose>
       </td>
       </tr>
       </tbody>
       </table>
</form>

       </td>
       </tr>
       <tr>
           <td colspan="2" height="11"></td>
       </tr>
       </tbody>
       </table>
</body>
</html>