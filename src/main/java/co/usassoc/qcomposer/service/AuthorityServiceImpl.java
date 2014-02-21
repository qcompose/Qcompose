package co.usassoc.qcomposer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.usassoc.qcomposer.dao.api.AuthorityDAO;
import co.usassoc.qcomposer.model.Authority;
import co.usassoc.qcomposer.service.api.AuthorityService;

	
	@Service
	@Transactional
	public class AuthorityServiceImpl implements AuthorityService {
		
		@Autowired
		private AuthorityDAO authorityDAO;

		public Authority getRole(int id) {
			return authorityDAO.getRole(id);
		}
		


	}



