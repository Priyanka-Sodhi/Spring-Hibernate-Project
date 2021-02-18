package model;
import org.hibernate.Query;

import entities.*;

public class AccountModel extends AbstractModel<User> {

	public AccountModel() {
		super(User.class);
	}

	public User login(String username, String pass) {
		try {
			if(!sessionFactory.getCurrentSession().getTransaction().isActive())
				sessionFactory.getCurrentSession().getTransaction().begin();
			Query query=sessionFactory.getCurrentSession().createQuery("from User use where use.username=:username and use.pass=:pass");
			query.setString("username",username);
			query.setString("pass", pass);
			return (User) query.uniqueResult();
		}
		catch(Exception e){
			return null;
		}		
	}
	
}