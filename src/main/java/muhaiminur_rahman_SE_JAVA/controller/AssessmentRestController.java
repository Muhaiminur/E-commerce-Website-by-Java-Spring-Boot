package muhaiminur_rahman_SE_JAVA.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class AssessmentRestController {
	@GetMapping("/")
	public String hello() {
		return "ABIR";
		
	}

}
