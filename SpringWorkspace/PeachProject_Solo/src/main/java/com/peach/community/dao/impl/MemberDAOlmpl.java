package com.peach.community.dao.impl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.peach.community.dao.MemberDAO;
import com.peach.community.domain.UserVO;

@SuppressWarnings("unused")
@Repository
public class MemberDAOlmpl implements MemberDAO {

	@Inject
 	private SqlSession sql;
 
 	private static String namespace = "com.board.mappers.Member";

	@Override
	public void register(UserVO vo) throws Exception {
		sql.insert(namespace + ".register",vo);
	}
	public UserVO login(UserVO vo) throws Exception{
		return sql.selectOne(namespace + ".login",vo);
	}
	
	//회원정보 수정
	@Override
	public void memberUpdate(UserVO vo) throws Exception {
		sql.update(namespace+".memberUpdate", vo); 
	}
	 
}