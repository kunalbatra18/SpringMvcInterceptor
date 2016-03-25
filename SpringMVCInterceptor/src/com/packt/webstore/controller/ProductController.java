package com.packt.webstore.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class ProductController {

	

	@RequestMapping("/wallpaper")
	public ModelAndView list(Model model) {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println(" in walpaper controller");
		modelAndView.addObject("product","wallpaper");
			modelAndView.setViewName("product");
		// TODO Auto generated method stub
		return modelAndView;
	}

	/*
	 * @RequestMapping("/all") public String allProducts(Model model) {
	 * model.addAttribute("product", productService.getAllProducts()); return
	 * "products"; }
	 */

	@RequestMapping("/all")
	public ModelAndView allProducts() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("product","game");
			modelAndView.setViewName("product");
		// TODO Auto generated method stub
		return modelAndView;
	}



}
