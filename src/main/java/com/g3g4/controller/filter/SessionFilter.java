package com.g3g4.controller.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.g3g4.common.Property;
import com.g3g4.model.Member;



/**
 * web.xml中使用的SESSION过滤器，目前只判断Action。
 * 
 * @author qiusen
 *
 */
public class SessionFilter implements Filter {

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest,
	 *      javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String nameSpaceStr = getRequestActionNameSpace((HttpServletRequest)request);
		System.out.println("nameSpaceStr==" + nameSpaceStr);
		if (nameSpaceStr.equalsIgnoreCase("") || nameSpaceStr.equalsIgnoreCase("/")) {
			chain.doFilter(request, response);
		}else{
			Member member = (Member) ((HttpServletRequest)request).getSession().getAttribute("member");
			if (member != null) {
				
				//判断权限，放过/user下所有权限
				if(nameSpaceStr.equalsIgnoreCase("/common")){
					chain.doFilter(request, response);
				}else if(nameSpaceStr.equalsIgnoreCase("/op")){
					String passwd2 = (String) ((HttpServletRequest)request).getSession().getAttribute("passwd2");
					if(passwd2!=null && passwd2.trim().length()>0){
						chain.doFilter(request, response);
					}else{
						//chain.doFilter(request, response);
						httpResponse.sendRedirect(Property.BASE + "/jsp/passwd2.jsp?forwardUrl="+httpRequest.getRequestURL().toString());
					}
				}else{
					httpResponse.sendRedirect(Property.BASE + "/jsp/common/noRights.jsp");
				}
				
			}else{
				httpResponse.sendRedirect(Property.BASE + "/jsp/common/noSession.jsp");
			}
		}
		
	}
	
	
	/**
	 * 判断权限
	 * @param request
	 * @param member
	 * @param nameSpaceStr
	 * @return
	 */
	private boolean hasRights(HttpServletRequest request, Member member, String nameSpaceStr) {
		boolean hasRights = false;
		
//		if (nameSpaceStr.equalsIgnoreCase("") || nameSpaceStr.equalsIgnoreCase("/") || nameSpaceStr.equalsIgnoreCase("/public/common")) {
//			hasRights = true;
//		} else {
//			if (member != null && member.getRightsMap()!=null) {
//				if (member.getRightsMap().containsKey(nameSpaceStr)) {
//					hasRights = true;
//				}
//			} else {
//				request.getSession().invalidate();
//			}
//		}

		return hasRights;
	}


	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	public void init(FilterConfig arg0) throws ServletException {
		
	}

	/**
	 * 获得应用的地址，例如：http://127.0.0.1:8080/sns
	 * 
	 * @param request
	 *            HttpServletRequest
	 * @return 应用的URL访问地址
	 */
//	private String getRootPath(HttpServletRequest request) {
//		String path = request.getContextPath();
//		String basePath = request.getScheme() + "://" + request.getServerName();
//
//		if (request.getServerPort() != 80) {
//			basePath += ":" + request.getServerPort() + path;
//		} else {
//			basePath += path;
//		}
//
//		return basePath;
//	}

	/**
	 * 获得请求的Action所在的名称空间，例如：/student/common
	 * 
	 * @param request
	 *            HttpServletRequest
	 * @return 请求的Action所在的名称空间
	 */
	private String getRequestActionNameSpace(HttpServletRequest request) {
		String absoluteUrl = request.getRequestURL().toString();
		String nameSpaceStr = absoluteUrl.substring(Property.BASE
				.length(), absoluteUrl.lastIndexOf("/"));

		return nameSpaceStr;
	}

}
