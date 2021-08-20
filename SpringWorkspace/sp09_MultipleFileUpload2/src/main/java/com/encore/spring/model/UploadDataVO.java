package com.encore.spring.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/*
 * 파일 업로드 폼을 잘 보고 만들어야한다. 
 */
public class UploadDataVO {
	private String userName;
	private List<MultipartFile> upload; //uploadFile이름으로 해야지만 업로드한 파일정보를 담을 수 있다.
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public List<MultipartFile> getUpload() {
		return upload;
	}
	public void setUpload(List<MultipartFile> upload) {
		this.upload = upload;
	}
	@Override
	public String toString() {
		return "UploadDataVO [userName=" + userName + ", upload=" + upload + "]";
	}
	
	
	
}
