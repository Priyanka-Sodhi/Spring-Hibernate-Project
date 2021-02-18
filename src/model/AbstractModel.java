package model;

import org.hibernate.*;
import java.io.*;
import java.util.*;

public abstract class AbstractModel<T> {

	private Class<T> entity;
	protected SessionFactory sessionFactory =
			HibernateUtil.getSessionFactory();

	public AbstractModel(Class<T> entity) {
		this.entity = entity;
	}

	public List<T> findAll() {
		List<T> result = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			result = session.createQuery("from " + entity.getName()).list();
			transaction.commit();
		} catch (Exception e) {
			result = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}
	
	
//	public List<T> findAll(){
//		try {
//			if(!sessionFactory.getCurrentSession().getTransaction().isActive())
//					sessionFactory.getCurrentSession().getTransaction().begin();
//			return sessionFactory.getCurrentSession().createQuery("from "+ entity.getName()).list();
//		}
//		catch(RuntimeException re) {
//			return null;
//		}
//	}
	

	public T find(Object id) {
		T result = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			result = (T) session.get(entity, (Serializable) id);
			transaction.commit();
		} catch (Exception e) {
			result = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}

	public boolean create(T entity) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.save(entity);
			transaction.commit();
		} catch (Exception e) {
			result = false;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}

	public boolean update(T entity) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.update(entity);
			transaction.commit();
		} catch (Exception e) {
			result = false;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}

	public boolean delete(T entity) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.delete(entity);
			transaction.commit();
		} catch (Exception e) {
			result = false;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}
		return result;
	}

}
