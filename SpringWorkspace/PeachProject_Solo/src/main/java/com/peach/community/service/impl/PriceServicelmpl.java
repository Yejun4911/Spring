package com.peach.community.service.impl;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.peach.community.dao.PriceDAO;
import com.peach.community.domain.PriceVO;
import com.peach.community.service.PriceService;

@Service
public class PriceServicelmpl implements PriceService {

	@Inject
 	private PriceDAO dao;

	public PriceVO price(PriceVO vo) throws Exception {
		
		return dao.price(vo);
	}

	
}