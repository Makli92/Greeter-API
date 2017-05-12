package gr.zubatsoft.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import gr.zubatsoft.service.UserService;

@RestController
@RequestMapping("/api/users")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/me")
	public String getMe() {
//		logger.debug("My username is : " + SecurityContextHolder.getContext().getAuthentication().getName());
//		return SecurityContextHolder.getContext().getAuthentication().getName();
		return "Banan boat song";
	}
}
