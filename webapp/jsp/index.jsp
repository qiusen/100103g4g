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
<title>信息管理系统-首页</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="745">
		<tbody>
			<tr>
				<td class="newdqwz"><span class="font_navigate">您所在的位置：</span><span
					class="font_navigate">首页</span></td>
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
				<td class="newZwTitle">新闻公告</td>
				<td class="newMoreBg"><a
					href="${base }/common/noticeAction.${actionExt }"
					style="color: #ff3366"><strong>更多&gt;&gt;&gt;</strong></a>
				</td>
			</tr>
			<tr>
				<td colspan="2" height="8"></td>
			</tr>
			<tr>
				<td colspan="2" class="newGjmyGyUll" align="center">
					<div>
						<table class="table" id="GridView1"
							style="width: 100%; border-collapse: collapse;" border="0"
							cellpadding="3" cellspacing="0">
							<tbody>
								<c:forEach items="${noticeList }" var="notice" varStatus="i">
								<c:choose>
								<c:when test="${i.index%2==0 }">
									<tr class="gvRowStyle"
										style="color: #4A3C8C; background-color: WhiteSmoke; border-color: DarkGray; border-width: 0px; border-style: Solid; height: 20px;"
										align="center">
										<td style="width: 2%;"></td>
										<td align="left"><a
											href="${base }/common/noticeAction!view.${actionExt}?id=${notice.id }">${notice.title }</a>
										</td>
										<td style="color: Black; width: 120px;"><fmt:formatDate value="${notice.updatetime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
									</tr>
								</c:when>
								<c:otherwise>
									<tr class="gvAlternatingRow"
										style="color: #4A3C8C; background-color: White; border-color: DarkGray; border-width: 0px; border-style: Solid; height: 20px;"
										align="center">
										<td style="width: 2%;"></td>
										<td align="left"><a
											href="${base }/common/noticeAction!view.${actionExt}?id=${notice.id }">${notice.title }</a>
										</td>
										<td style="color: Black; width: 120px;"><fmt:formatDate value="${notice.updatetime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
									</tr>
								</c:otherwise>
								</c:choose>
									
								</c:forEach>
								<tr class="gvRowStyle"
									style="color: #4A3C8C; background-color: WhiteSmoke; border-color: DarkGray; border-width: 0px; border-style: Solid; height: 20px;"
									align="center">
									<td style="width: 2%;"></td>
									<td align="left"><a
										href="http://www.100103g4gvip.com/L877DF_9Ij5AS2G_4Eh2FB_sc_AKNEYB_0UzWfb_9iH7b1_P77BQM0FB_6B_o0wD3d_64hfoU_3E82Hf84_Kzr253_0UF98BAUP8A_op0e/user_list_1xwgg123.aspx?id=802856">再次强调关于4G营销体验中心的管理注意事项</a>
									</td>
									<td style="color: Black; width: 120px;">2015-1-5
										16:05:57</td>
								</tr>
								<tr class="gvAlternatingRow"
									style="color: #4A3C8C; background-color: White; border-color: DarkGray; border-width: 0px; border-style: Solid; height: 20px;"
									align="center">
									<td style="width: 2%;"></td>
									<td align="left"><a
										href="http://www.100103g4gvip.com/L877DF_9Ij5AS2G_4Eh2FB_sc_AKNEYB_0UzWfb_9iH7b1_P77BQM0FB_6B_o0wD3d_64hfoU_3E82Hf84_Kzr253_0UF98BAUP8A_op0e/user_list_1xwgg123.aspx?id=802852">重要通告</a>
									</td>
									<td style="color: Black; width: 120px;">2015-1-4
										15:24:04</td>
								</tr>
								<tr class="gvRowStyle"
									style="color: #4A3C8C; background-color: WhiteSmoke; border-color: DarkGray; border-width: 0px; border-style: Solid; height: 20px;"
									align="center">
									<td style="width: 2%;"></td>
									<td align="left"><a
										href="http://www.100103g4gvip.com/L877DF_9Ij5AS2G_4Eh2FB_sc_AKNEYB_0UzWfb_9iH7b1_P77BQM0FB_6B_o0wD3d_64hfoU_3E82Hf84_Kzr253_0UF98BAUP8A_op0e/user_list_1xwgg123.aspx?id=802851">关于元旦放假的通知</a>
									</td>
									<td style="color: Black; width: 120px;">2014-12-30
										16:56:18</td>
								</tr>
								<tr class="gvAlternatingRow"
									style="color: #4A3C8C; background-color: White; border-color: DarkGray; border-width: 0px; border-style: Solid; height: 20px;"
									align="center">
									<td style="width: 2%;"></td>
									<td align="left"><a
										href="http://www.100103g4gvip.com/L877DF_9Ij5AS2G_4Eh2FB_sc_AKNEYB_0UzWfb_9iH7b1_P77BQM0FB_6B_o0wD3d_64hfoU_3E82Hf84_Kzr253_0UF98BAUP8A_op0e/user_list_1xwgg123.aspx?id=802850">紧
											急 通 知</a></td>
									<td style="color: Black; width: 120px;">2014-12-30
										9:55:01</td>
								</tr>
								<tr class="gvRowStyle"
									style="color: #4A3C8C; background-color: WhiteSmoke; border-color: DarkGray; border-width: 0px; border-style: Solid; height: 20px;"
									align="center">
									<td style="width: 2%;"></td>
									<td align="left"><a
										href="http://www.100103g4gvip.com/L877DF_9Ij5AS2G_4Eh2FB_sc_AKNEYB_0UzWfb_9iH7b1_P77BQM0FB_6B_o0wD3d_64hfoU_3E82Hf84_Kzr253_0UF98BAUP8A_op0e/user_list_1xwgg123.aspx?id=802849">关于筹备成立4G商城线下服务体系的相关公告</a>
									</td>
									<td style="color: Black; width: 120px;">2014-12-27
										19:23:25</td>
								</tr>
							</tbody>
						</table>
					</div>

				</td>
			</tr>
		</tbody>
	</table>
	</body>
	</html>