package com.g3g4.controller.action.common;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Member;
import com.g3g4.service.IMemberService;
import com.g3g4.service.INoticeService;
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
		}
		
		return "logOff";
	}
	
}
