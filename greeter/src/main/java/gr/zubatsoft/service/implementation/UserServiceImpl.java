package gr.zubatsoft.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gr.zubatsoft.entity.User;
import gr.zubatsoft.repository.UserRepository;
import gr.zubatsoft.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User findByUsername(String username) {
		return userRepository.findByUserName(username);
	}
}
