package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IMemberDAO;
import com.g3g4.model.Member;
import com.g3g4.service.IMemberService;

/**
 * 会员 业务接口 IMemberService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-04
 */
public class MemberServiceImpl implements IMemberService {

	@Resource
	private IMemberDAO memberDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#addSave(com.g3g4.model.Member)
	 */
	public int addSave(Member member) {
		return memberDAO.addSaveMember(member);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return memberDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#editSave(com.g3g4.model.Member)
	 */
	public int editSave(Member member) {
		return memberDAO.editSaveMember(member);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IMemberService#selectAll()
	 */
	public List<Member> selectAll() {
		return memberDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#selectMember(com.g3g4.model.Member, int)
	 */
	public Page selectMember(Member member, int pageSize) {
		return new Page(memberDAO.getMemberCount(member), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#selectMember(com.g3g4.model.Member, com.g3g4.controller.helper.Page)
	 */
	public List<Member> selectMember(Member member, Page page) {
		member.setStart(page.getFirstItemPos());
		member.setPageSize(page.getPageSize());
		return memberDAO.selectMemberLike(member);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#selectMemberById(com.g3g4.model.Member)
	 */
	public Member selectMemberById(Member member) {
		return memberDAO.selectMemberById(member);
	}


	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#login(com.g3g4.model.Member)
	 */
	@Override
	public Member login(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.login(member);
	}


	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#editPasswdByIdStrCode(com.g3g4.model.Member)
	 */
	@Override
	public void editPasswdByIdStrCode(Member member) {
		// TODO Auto-generated method stub
		memberDAO.editPasswdByIdStrCode(member);
	}


	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#selectMemberByRecoCode(com.g3g4.model.Member)
	 */
	@Override
	public List<Member> selectMemberByRecoCode(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.selectMemberByRecoCode(member);
	}


	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#editCoin(com.g3g4.model.Member)
	 */
	@Override
	public void editCoin(Member member) {
		// TODO Auto-generated method stub
		memberDAO.editCoin(member);
	}


	/* (non-Javadoc)
	 * @see com.g3g4.service.IMemberService#selectMemberByCode(com.g3g4.model.Member)
	 */
	@Override
	public Member selectMemberByCode(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.selectMemberByCode(member);
	}
}
