package com.dailingnan.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.bcel.classfile.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dailingnan.controller.RandomValidateCode;


@Controller
public class ToolController {

	@RequestMapping("topage")
	public String toPage(@RequestParam String pagename){
		return pagename;
		// return "/WEB-INF/jsp/" + pagename + ".jsp";
	}

	@Resource
	RandomValidateCode code;
	@RequestMapping("vcode")
	public void vcode(HttpServletRequest request, HttpServletResponse response){
		code.getRandcode(request, response);
	}	
	
	
}
