package com.gladiator.lti.controller;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gladiator.lti.bean.Product;
import com.gladiator.lti.service.ProductService;


@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	//1.verify retailer
	//2.add retailer
	//3.delete retailer
}
