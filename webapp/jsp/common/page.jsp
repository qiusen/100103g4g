<%@ page contentType="text/html;charset=UTF-8" %><%@ include file="/jsp/common/taglibs.jsp"%>
<c:if test="${pageInfo.totalPage>1}">
<fmt:formatNumber value="${(pageInfo.page/8) - 0.55}" pattern="#0" var="tmpIndex"></fmt:formatNumber>
<c:set value="${(tmpIndex * 8) + 1}" var="pageBegin" scope="page"/>
<c:if test="${pageBegin <= 0}">
<c:set value="1" var="pageBegin" scope="page"/>
</c:if>
<c:set value="${pageInfo.totalPage}" var="pageEnd" scope="page"/>
<c:if test="${pageInfo.totalPage > (tmpIndex + 1) * 8}">
	<c:set value="${(tmpIndex + 1) * 8}" var="pageEnd" scope="page"/>
</c:if>

<tr align="right" style="color:#330099;background-color:WhiteSmoke;">
    <td colspan="3">
        <table style="font-size: 12px;" width="100%">
            <tbody>
            <tr>
                <td style="text-align: right">
                    第<span id="GridView1_ctl15_lblPageIndex" style="color:Red;">${pageInfo.page}</span>页
                    /共<span id="GridView1_ctl15_lblPageCount">${pageInfo.totalPage}</span>页
                    &nbsp;
                    <c:if test="${pageInfo.page!=1 && pageInfo.page!=0}">
					<a id="GridView1_ctl15_btnFirst" href="#" onclick="JavaScript:goPage('1');">&nbsp;首&nbsp;&nbsp;页&nbsp;</a>
                    <a href="#" onclick="JavaScript:goPage('${pageInfo.previousPage}');">${pageScope.page}上一页</a>
					</c:if>
                    <c:if test="${pageInfo.page!=pageInfo.totalPage }">
					<a href="#" onclick="JavaScript:goPage('${pageInfo.nextPage}');">下一页</a>
					<a id="GridView1_ctl15_btnLast" href="#" onclick="JavaScript:goPage('${pageInfo.totalPage}');">&nbsp;尾&nbsp;&nbsp;页&nbsp;</a>
					</c:if>
                    <input name="tp" type="text" value="${pageInfo.page}" id="tp" style="width:30px;">
                    <a id="GridView1_ctl15_btnGo" href="#" onclick="JavaScript:goPage(document.getElementById('tp').value);">&nbsp;转&nbsp;&nbsp;到&nbsp;</a>
                </td>
            </tr>
            </tbody>
        </table>
    </td>
</tr>

 </c:if>