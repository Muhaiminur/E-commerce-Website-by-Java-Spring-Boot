package muhaiminur_rahman_SE_JAVA.controller;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import muhaiminur_rahman_SE_JAVA.controller.rest.Assessment_Rest_Controller;
import muhaiminur_rahman_SE_JAVA.doa.Assessment_epository;
import muhaiminur_rahman_SE_JAVA.models.product_info;
import muhaiminur_rahman_SE_JAVA.service.Assesment_service;

@Controller

public class AssessmentController {
	
	
	@Autowired
	Assessment_epository rp;
	
	@Autowired
	Assesment_service as;
	
	@Autowired
	Assessment_Rest_Controller arc;
	
	
	//default page view
	@GetMapping("/")
	public String init(HttpServletRequest req) {
		req.setAttribute("products", as.findallproduct() );
		req.setAttribute("mode", "VIEW_ALL" );
		return "index";
		
	}
	//view with update page
	@GetMapping("/update")
	public String update_view(HttpServletRequest req) {
		req.setAttribute("products", as.findallproduct() );
		req.setAttribute("mode", "UPDATE_VIEW" );
		return "index";
	}
	
	
	//for update/edit the info
	@GetMapping("/update_with_id")
	public String update_info(@RequestParam int id,HttpServletRequest req) {
		req.setAttribute("products", arc.findoneok(id) );
		req.setAttribute("mode", "PRODUCT_EDIT" );
		return "index";
		
	}
	
	
	//for save the database
	@PostMapping("/save")
	public void save(@ModelAttribute product_info p,HttpServletRequest req,HttpServletResponse resp) throws IOException{
		rp.save(p);
		req.setAttribute("products", as.findallproduct() );
		req.setAttribute("mode", "VIEW_ALL" );
		
		resp.sendRedirect("/");
	}
	
	//getting new product
	@GetMapping("/newproduct")
	public String newproduct(HttpServletRequest req) {
		
		req.setAttribute("mode", "NEW_PRODUCT" );
		return "index";
	}
	
	
	//view the delete page
		@GetMapping("/delete")
		public String delete_view(HttpServletRequest req) {
			req.setAttribute("products", as.findallproduct() );
			req.setAttribute("mode", "DELETE_VIEW" );
			return "index";
		}
	
	//for delete the info
	@GetMapping("/delete_with_id")
	public void deleteproduct(@RequestParam int id,HttpServletRequest req,HttpServletResponse resp) throws IOException{
		
		arc.delete_product(id);
		resp.sendRedirect("/");
	}
	//raw test
	@GetMapping("/first")
	public String index() {
		return "index";
		
	}
	//user view
		@GetMapping("/user_view")
		public String user_view(HttpServletRequest req) {
			req.setAttribute("products", as.findallproduct() );
			req.setAttribute("mode", "USER_VIEW" );
			return "index";
			
		}
	//Login page
		@GetMapping("/login")
		public String login(HttpServletRequest req) {
			req.setAttribute("products", as.findallproduct() );
			req.setAttribute("mode", "LOGIN" );
			return "index";
			
		}

}
