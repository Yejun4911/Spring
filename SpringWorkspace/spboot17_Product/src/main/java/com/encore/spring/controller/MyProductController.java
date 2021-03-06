package com.encore.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.encore.spring.domain.MyProduct;
import com.encore.spring.model.MyProductService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("api")
@CrossOrigin(origins= {"*"},maxAge=6000)
@Api(tags= {"Encore HRM"})

public class MyProductController {
	
	@Autowired
	private MyProductService myProductService;
	
	@ApiOperation(value="상품을 추가한다",response=MyProduct.class)
	@PostMapping("addProduct")
	public ResponseEntity<MyProduct> addProduct(MyProduct pvo) throws Exception{
		try{
			myProductService.addProduct(pvo); //여기서 dao, sqlSession, 디비 로 가서 id 값이 자동증가...--> 그 값을 다시 vo에 set해주기 떄문에
			return new ResponseEntity<MyProduct>(HttpStatus.OK);
		}
		catch(Exception e) {
			return new ResponseEntity<MyProduct>(HttpStatus.NO_CONTENT);
		}
	}
	
	
	@ApiOperation(value="제품을 검색한다.",response=List.class)
	@GetMapping("myProductSearch/{command}/{word}")
	public ResponseEntity<List<MyProduct>> myProductSearch(@PathVariable String command, @PathVariable String word) throws Exception{
		List<MyProduct> list =null;
		try{
			if(command.equals("findByProductName")) {
				list = myProductService.findByProductName(word);

				System.out.println(list);
			}else if(command.equals("findByProductMaker")) {
				list = myProductService.findByProductMaker(word);
				System.out.println(list);
			}
			return new ResponseEntity<List<MyProduct>>(list,HttpStatus.OK);
		}
		catch(Exception e) {
			return new ResponseEntity<List<MyProduct>>(HttpStatus.NO_CONTENT);
		}
	}
}




















