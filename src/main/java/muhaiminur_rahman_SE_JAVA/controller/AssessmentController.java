package muhaiminur_rahman_SE_JAVA.controller;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import muhaiminur_rahman_SE_JAVA.doa.Assessment_epository;
import muhaiminur_rahman_SE_JAVA.models.product_info;
import muhaiminur_rahman_SE_JAVA.service.Assesment_service;

@Controller

public class AssessmentController {
	
	
	@Autowired
	Assessment_epository rp;
	
	@Autowired
	Assesment_service as;
	
	@GetMapping("/")
	public String init(HttpServletRequest req) {
		for (Iterator iterator = as.findallproduct().iterator(); iterator.hasNext();) {
			product_info product_info = (product_info) iterator.next();
			System.out.println("id = " +product_info.getP_name());
			
		}
		req.setAttribute("products", as.findallproduct() );
		return "index";
		
	}
	
	@GetMapping("/first")
	public String index() {
		return "index";
		
	}

}
