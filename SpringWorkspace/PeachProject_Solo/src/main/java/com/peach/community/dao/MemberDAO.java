package com.peach.community.dao;

import com.peach.community.domain.UserVO;

@SuppressWarnings("unused")
public interface MemberDAO {
	public void register(UserVO vo) throws Exception;
	public UserVO login(UserVO vo) throws Exception;
	
	// 회원정보 수정
	public void memberUpdate(UserVO vo)throws Exception;
	    
}