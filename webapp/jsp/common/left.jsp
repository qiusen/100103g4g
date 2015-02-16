<%@ page contentType="text/html;charset=UTF-8"%><%@ include
	file="/jsp/common/taglibs.jsp"%><div>
	<table align="left" background="${base}/images/bg1.gif" border="0"
		cellpadding="0" cellspacing="0" width="181" height="521">
		<tbody>
			<tr>
				<td><img src="${base}/images/titleB.gif" width="181" height="9"></td>
			</tr>
			<tr>
				<td>
					<!--logo开始-->
					<table border="0" cellpadding="0" cellspacing="0" width="181">
						<tbody>
							<tr>
								<td colspan="2" align="center" height="26">
									<table class="table_1">
										<tbody>
											<tr>
												<td><img alt="收件箱"
														src="${base }/images/ml2.gif" width="80px" height="30px"><b><font
															size="4pt">收件箱</font></b></td>
											</tr>
										</tbody>
									</table>


									<div class="leftDh">
										<ul>

											<li>会员姓名:<span id="Label2"
												style="color: Black; font-weight: bold;">${sessionScope.member.name}</span>
											</li>
											<li>会员编号:<span id="Label1"
												style="color: Black; font-weight: bold;">${sessionScope.member.code}</span>
											</li>
											<li>报 单 币:<span id="Label4"
												style="color: Black; font-weight: bold;">${sessionScope.member.taxCoin}</span>
											</li>
											<li>现 金 币:<span id="Label3"
												style="color: Black; font-weight: bold;">${sessionScope.member.cashCoin}</span>
											</li>
											<li>电 商 币:<span id="Label6"
												style="color: Black; font-weight: bold;">${sessionScope.member.shopCoin}</span>
											</li>
											<li>晋升级别:<span id="Label7"
												style="color: Black; font-weight: bold;">
											<c:choose>
											<c:when test="${sessionScope.member.level!=null}">${sessionScope.member.level}</c:when>
											<c:otherwise>--------</c:otherwise>
											</c:choose>
												</span>
											</li>
										</ul>
									</div> <br> <a
									href="${base }/login!logOff.${actionExt}"
									><img src="${base }/images/aqtc.jpg"></a>
								</td>
							</tr>
							<!--
                        <tr>
                          <td width="11"></td>
           <td width="170" height="26"><a href="/lt/plugin/portal/arealevel/queryCityInfo.do?id=&arno=00010023"><img src="../..images/newAdd_back.jpg" alt="·?????????" width="81" height="23" border="0" /></a></td>
                        </tr> -->

						</tbody>
					</table> <!--logo结束-->
				</td>
			</tr>
			<tr>
				<td height="3"></td>
			</tr>
			<tr>
				<td>


					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td align="center"><img src="${base }/images/kejian.jpg"
									alt="" longdesc="#" border="0" width="160" height="71"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td align="center"><img src="${base }/images/shipin.jpg"
									alt="" longdesc="#" border="0" width="160" height="71"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td align="center"><img src="${base }/images/yingxiao.jpg"
									alt="" longdesc="#" border="0" width="160" height="71"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>