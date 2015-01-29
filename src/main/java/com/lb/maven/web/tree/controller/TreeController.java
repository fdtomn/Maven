package com.lb.maven.web.tree.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/tree")
public class TreeController {

	static Logger logger = Logger.getLogger(TreeController.class);
	
	@RequestMapping("/tree.json")
	public void getTree(){
		
		logger.info("Tree...json.......");
		
	}
	
	@RequestMapping("/tree")
	public String tree(){
		
		logger.info("Tree..........");
		return "tree/tree";
	}
}
