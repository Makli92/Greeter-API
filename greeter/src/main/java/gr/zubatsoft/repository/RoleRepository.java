package gr.zubatsoft.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import gr.zubatsoft.entity.Role;

@Transactional
public interface RoleRepository extends CrudRepository<Role, Integer> {
	
	public Role findByRole(String role);
}
