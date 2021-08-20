package com.peach.community.service.impl;
import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.peach.community.dao.MemberDAO;
import com.peach.community.domain.UserVO;
import com.peach.community.service.MemberService;

@SuppressWarnings("unused")
@Repository
public class MemberServicelmpl implements MemberService {

	@Inject
 	private MemberDAO dao;
 
	@Override
	public void register(UserVO vo) throws Exception {
		dao.register(vo);
	}
	public UserVO login(UserVO vo) throws Exception{
		return dao.login(vo);
	}

	//회원정보 수정
	@Override
	public void memberUpdate(UserVO vo) throws Exception {
		dao.memberUpdate(vo);
	}
}