package com.encore.pms.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.encore.pms.dto.Phone;
import com.encore.pms.service.IPhoneService;
import com.encore.pms.service.PhoneServiceImpl;

@RestController
@RequestMapping("/api")
public class PhoneRestController {
	
	@Autowired
	private IPhoneService service;
	
	/*
	 * 1. 모든 폰 정보 리턴
	 * 2. 특정 num에 해당하는 폰 리턴
	 * 3. 폰 추가하기
	 * 4. 폰 수정하기
	 * 5. 여러개의 폰 삭제하기
	 * 
	 * RestService API를 사용해서 직접 작성
	 * --> Post Man으로 값 일일이 넣어서 확인
	 */
	
	//모든 폰 정보 리턴
	// http://127.0.0.1:8888/pms/api/phone
	@GetMapping("/phone")
	public ResponseEntity<List<Phone>> select(){
		try {
			List<Phone> selected = service.select();
			return new ResponseEntity<List<Phone>>(selected, HttpStatus.OK);
		}catch(RuntimeException e){
			return new ResponseEntity<List<Phone>>(HttpStatus.NO_CONTENT);
			
		}
	}
	
	//특정 num에 해당하는 폰 리턴
	@GetMapping("/phone/{num}")
	public ResponseEntity<Phone>select(@PathVariable String num) {
		try {
			Phone phone = new Phone();
			phone.setNum(num);
			Phone selected = service.select(phone);
			return new ResponseEntity<Phone>(selected, HttpStatus.OK);
		}catch(RuntimeException e) {
			return new ResponseEntity<Phone>(HttpStatus.NO_CONTENT);
		}
	}
	
	//폰 추가하기
	@PostMapping("/phone")
	public ResponseEntity<Phone> insertPhone(@RequestBody Phone phone){
		try {
			int result = service.insert(phone);
			return new ResponseEntity<Phone>(HttpStatus.OK);
		}catch(RuntimeException e) {
			return new ResponseEntity<Phone>(HttpStatus.NO_CONTENT);
		}
	}
	
	//폰 삭제하기
	@DeleteMapping("/phone/{num}")
	public ResponseEntity<Phone> delete(@PathVariable String num){
		try {
			int result = service.delete(Arrays.asList(num)); //service에서 array였던 것을 list로 바꿔주기
			return new ResponseEntity<Phone>(HttpStatus.OK);
		}catch(RuntimeException e){
			return new ResponseEntity<Phone>(HttpStatus.NO_CONTENT);
		}
	}
	
}
