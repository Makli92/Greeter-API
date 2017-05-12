package gr.zubatsoft.controller;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import gr.zubatsoft.service.UserService;
import gr.zubatsoft.entity.Role;

@RestController
@RequestMapping("/api/users")
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/{username}")
	public int getUser(@PathVariable String username) {
		Set<Role> roles = userService.findByUsername(username).getRoles();
		System.out.println(roles.iterator().next().getRole());
		return roles.size();
	}
}
