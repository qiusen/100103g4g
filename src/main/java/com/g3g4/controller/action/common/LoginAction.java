package com.g3g4.controller.action.common;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Member;
import com.g3g4.model.ScrollNotice;
import com.g3g4.service.IMemberService;
import com.g3g4.service.INoticeService;
import com.g3g4.service.IScrollNoticeService;
import com.g3g4.util.MD5Util;

/**
 * 登录Action
 * 
 * @author qiusen
 *
 * 2012-2-8 下午04:26:17
 */
public class LoginAction extends BaseAction {
	
	private static final Log logger = LogFactory.getLog(LoginAction.class);

	private static final long serialVersionUID = 3243281533706763908L;
	
	private IMemberService memberService;
	
	private INoticeService noticeService;
	
	private IScrollNoticeService scrollNoticeService;

	public INoticeService getNoticeService() {
		return noticeService;
	}

	public void setNoticeService(INoticeService noticeService) {
		this.noticeService = noticeService;
	}

	public IMemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(IMemberService memberService) {
		this.memberService = memberService;
	}

	public IScrollNoticeService getScrollNoticeService() {
		return scrollNoticeService;
	}

	public void setScrollNoticeService(IScrollNoticeService scrollNoticeService) {
		this.scrollNoticeService = scrollNoticeService;
	}

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		String code = this.getRequest().getParameter("code");
		String password = this.getRequest().getParameter("password");
		String checkCode = this.getRequest().getParameter("checkCode");
		
		String sessionCheckCode = (String)this.getSession().getAttribute("checkCode");
		System.out.println("code:" + code +"===========password:" + password);
		System.out.println("checkCode:" + checkCode +"===========sessionCheckCode:" + sessionCheckCode);
		if(checkCode!=null && checkCode.equalsIgnoreCase(sessionCheckCode)){
			Member member = new Member();
			member.setCode(code);
			member.setPasswd1(MD5Util.stringToMD5(password));
			Member memberVO = memberService.login(member);
			if(memberVO!=null){
				//若帐号被冻结  登录失败
				if(memberVO.getStatus()==0){
					this.getRequest().setAttribute("errorStr", "您的帐号未审核，请联系管理员！！！");
					return "login";
				}
				
				//存session
				this.getSession().setAttribute("member", memberVO);
				
				//取出滚动公告
				ScrollNotice scrollNotice = new ScrollNotice();
				scrollNotice.setId(1);
				ScrollNotice scrollNoticeVO = scrollNoticeService.selectScrollNoticeById(scrollNotice);
				this.getSession().setAttribute("scrollNotice", scrollNoticeVO);
				//取出前五条公告
//				Notice notice = new Notice();
//				notice.setCount(5);
//				
//				List<Notice> noticeList = noticeService.selectNoticeByLimit(notice);
//				this.getRequest().setAttribute("noticeList", noticeList);
				
				
			}else{
				this.getRequest().setAttribute("errorStr", "用户名或密码错误");
				return "login";
			}
			// 暂时用status做身份处理
//			if (managerVO.getStatus()==3){
//				return "login2";
//			}

		}else{
			this.getRequest().setAttribute("errorStr", "验证码错误");
			return "login";
		}
		
		return SUCCESS;
	}
	
	/**
	 * 登出
	 * @return
	 */
	public String logOff(){
		Member member = null;
		Object o = this.getSession().getAttribute("member");
		if(o!=null){
			member = (Member)this.getSession().getAttribute("member");
			//记录日志
			this.recordLogs(logger, "logoff", member.getName() + " 登出");
			this.getSession().removeAttribute("member");
			
			this.getSession().removeAttribute("scrollNotice");
		}
		
		return "logOff";
	}
	
	/**
	 * 二级密码验证
	 * @return
	 */
	public String op(){
		String forwardUrl = this.getRequest().getParameter("forwardUrl");
		
		String passwd2 = this.getRequest().getParameter("passwd2");
		Member member = (Member)this.getSession().getAttribute("member");
		if(passwd2!=null && MD5Util.stringToMD5(passwd2).equals(member.getPasswd2())){
			try {
				this.getSession().setAttribute("passwd2", passwd2);
				this.getResponse().sendRedirect(forwardUrl);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			try {
				this.getResponse().sendRedirect(Property.BASE + "/jsp/passwd2.jsp?forwardUrl=" + forwardUrl);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
}
