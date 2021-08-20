package com.encore.spring.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.encore.spring.model.UploadDataVO;

@Controller
public class FileController {
	
	@RequestMapping("fileupload.do")
	public ModelAndView fileupload(HttpServletRequest request, UploadDataVO vo) throws Exception{
		System.out.println(vo);
		ArrayList<String> name = new ArrayList<String>();
		//1. 업로드된 파일의 정보를 가지고 있는 MultipartFile을 하나 받아온다... vo에서
		List<MultipartFile> mFiles = vo.getUpload();
		System.out.println("mFile ::" + mFiles);
		
		String root = request.getSession().getServletContext().getRealPath("/");
		System.out.println("root::"+root);
		String path = root + "\\upload\\";
		
			
		for(MultipartFile file : mFiles) {
			name.add(file.getOriginalFilename());
			File copyFile = new File(path+file.getOriginalFilename());
			file.transferTo(copyFile);//업로드한 파일의 카피본이 해당경로에 저장된다.. 이동한다
			System.out.println("path :: "+ path);
		}
		//4. File 객체 생성... mFile.transferTo()
		
		
		return new ModelAndView("upload_result", "uploadfile", name);
		
	}
	
	@RequestMapping("fileDown.do")
	public ModelAndView filedown(HttpServletRequest request,String filename)throws Exception{
		System.out.println("filename :: "+filename);
		String root = request.getSession().getServletContext().getRealPath("/");		
		String path = root+"\\upload\\";
		
		HashMap map = new HashMap();
		map.put("path", path);
		return new ModelAndView("downloadView",map);
	}
}