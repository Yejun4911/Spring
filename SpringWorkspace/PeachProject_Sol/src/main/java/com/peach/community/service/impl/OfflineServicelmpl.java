package com.peach.community.service.impl;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.peach.community.dao.OfflineDAO;
import com.peach.community.domain.OfflineVO;
import com.peach.community.service.OfflineService;

@Service
public class OfflineServicelmpl implements OfflineService {

	@Inject
 	private OfflineDAO dao;
	// 게시물 조회 
	@Override
 	public List list() throws Exception {
			return dao.list();
	}
	//게시물 작성 
	@Override
	public void write(OfflineVO vo) throws Exception {
			dao.write(vo);
	}
	// 게시물 조회
//	@Override
//	public OfflineVO view(int bno) throws Exception {
//
//	 return dao.view(bno);
//	}
//	// 게시물 수정
//	@Override
//	public void modify(OfflineVO vo) throws Exception {
//	  
//		dao.modify(vo);
//	}
//	//게시물 삭제 
//	@Override
//	public void delete(int bno) throws Exception {
//		// TODO Auto-generated method stub
//			dao.delete(bno);
//	}
//	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
			return dao.count();
	}
//	// 게시물 목록 + 페이징
//	@Override
//	public List listPage(int displayPost, int postNum) throws Exception {
//			return dao.listPage(displayPost, postNum);
//	}
//	// 게시물 목록 + 페이징 + 검색
	@Override
	public List<OfflineVO> listPageSearch(
			int displayPost, int postNum, String searchType, String keyword) throws Exception {
			return  dao.listPageSearch(displayPost, postNum, searchType, keyword);
	}
//	// 게시물 총 갯수 + 검색 적용
//	// 게시물 총 갯수
	@Override
	public int searchCount(String searchType, String keyword) throws Exception {
	 return dao.searchCount(searchType, keyword);
	}
}