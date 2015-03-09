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
<title>信息管理系统-两区业绩</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
	<tbody>
		<tr>
			<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
				class="font_navigate">首页</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">个人资料</span> <span class="font_navigate">&gt;</span><span
						class="font_navigate">两区业绩</span></td>
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
			<td class="newZwTitle">两区业绩</td>
			<td class="newMoreBg">
			</td>
		</tr>
		<tr>
			<td colspan="2" height="8"></td>
		</tr>
		<tr>
		<td colspan="2" align="center">
                <table class="table" cellspacing="0" cellpadding="3" border="0" id="GridView1" style="border-color:RoyalBlue;width:100%;border-collapse:collapse;">
                        <thead>
                            <tr align="center" style="color:#000001;background-color:#F9E9D9;font-weight:bold;height:23px;">
                                <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_l')" style="color:#000001;">（A区累计</a></th>
                                <th scope="col"><a href="javascript:__doPostBack('GridView1','Sort$user_r')" style="color:#000001;">B区累计）</a></th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr class="gvRowStyle" align="center" style="color:#4A3C8C;background-color:WhiteSmoke;border-color:DarkGray;border-width:0px;border-style:Solid;height:20px;">
                              <td style="color:Black;">${sessionScope.member.ac }</td>
                               <td style="color:Black;">${sessionScope.member.bc }</td>
                            </tr>
                        </tbody>
                    </table>

               </td>
       </tr>
       <tr>
           <td colspan="2" height="11"></td>
       </tr>
       </tbody>
       </table>
</body>
</html>