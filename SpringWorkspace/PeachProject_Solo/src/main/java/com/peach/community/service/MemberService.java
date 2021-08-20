package com.peach.community.service;

import com.peach.community.domain.UserVO;

@SuppressWarnings("unused")
public interface MemberService {
	public void register(UserVO vo) throws Exception;

	public UserVO login(UserVO vo) throws Exception;
	
	//회원정보 수정
	public void memberUpdate(UserVO vo) throws Exception;
	
}