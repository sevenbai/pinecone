/**
 * 
 */
package com.tenline.pinecone.platform.web.service.restful;

import java.util.Collection;

import javax.jdo.PersistenceManagerFactory;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jdo.support.JdoDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tenline.pinecone.platform.model.User;
import com.tenline.pinecone.platform.web.service.UserService;

/**
 * @author Bill
 *
 */
@Service
@Transactional
public class UserRestfulService extends JdoDaoSupport implements UserService {

	/**
	 * 
	 */
	@Autowired
	public UserRestfulService(PersistenceManagerFactory persistenceManagerFactory) {
		// TODO Auto-generated constructor stub
		setPersistenceManagerFactory(persistenceManagerFactory);
	}

	@Override
	public User create(User user) {
		// TODO Auto-generated method stub
		return getJdoTemplate().makePersistent(user);
	}

	@Override
	@SuppressWarnings("unchecked")
	public Collection<User> show(String filter) {
		// TODO Auto-generated method stub
		String queryString = "select from " + User.class.getName();
		if (!filter.equals("all")) queryString += " where " + filter;
		return getJdoTemplate().find(queryString);
	}

	@Override
	public User update(User user) {
		// TODO Auto-generated method stub
		User detachedUser = (User) getJdoTemplate().getObjectById(User.class, user.getId());
		if (user.getName() != null) detachedUser.setName(user.getName());
		if (user.getEmail() != null) detachedUser.setEmail(user.getEmail());
		if (user.getPassword() != null) detachedUser.setPassword(user.getPassword());
		if (user.getAvatar() != null) detachedUser.setAvatar(user.getAvatar());
		if (user.getNut() != null) detachedUser.setNut(user.getNut());
		if (user.getPhone() != null) detachedUser.setPhone(user.getPhone());
		return getJdoTemplate().makePersistent(detachedUser);
	}

	@Override
	public Response delete(String id) {
		// TODO Auto-generated method stub
		getJdoTemplate().deletePersistent(getJdoTemplate().getObjectById(User.class, id));
		return Response.status(Status.OK).build();
	}

}
