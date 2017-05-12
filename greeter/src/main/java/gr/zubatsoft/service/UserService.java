package gr.zubatsoft.service;

import gr.zubatsoft.entity.User;

public interface UserService {
	
	User findByUsername(String username);
}
