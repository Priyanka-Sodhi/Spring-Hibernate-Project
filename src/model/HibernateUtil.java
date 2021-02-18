package model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.*;
import org.hibernate.boot.*;
import org.hibernate.boot.registry.*;

import entities.Courses10th;
import entities.Courses11th;
import entities.Courses12th;
import entities.Courses9th;
import entities.User;

public class HibernateUtil {

	private static StandardServiceRegistry registry;
	private static final SessionFactory sessionFactory;

	static {
		try {
			StandardServiceRegistry standardRegistry = new
					StandardServiceRegistryBuilder()
					.configure("hibernate.cfg.xml")
					.build();
	        
			Metadata metaData = new MetadataSources(
					standardRegistry)
					.getMetadataBuilder()
					.build();
			sessionFactory = metaData.getSessionFactoryBuilder().build();
		} catch (Throwable th) {
			throw new ExceptionInInitializerError(th);
		}
	}

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
		      try {
		        StandardServiceRegistryBuilder registryBuilder = 
		            new StandardServiceRegistryBuilder();

		        Map settings = new HashMap<>();
		        settings.put("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
		        settings.put("hibernate.connection.url", "jdbc:mysql://localhost:3306/springmvc");
		        settings.put("hibernate.connection.username", "root");
		        settings.put("hibernate.connection.password", "root");
		        settings.put("hibernate.show_sql", "true");
		        settings.put("hibernate.hbm2ddl.auto", "update");

		        registryBuilder.applySettings(settings);

		        registry = registryBuilder.build();

		        MetadataSources sources = new MetadataSources(registry)
		            .addAnnotatedClass(User.class).addAnnotatedClass(Courses9th.class).addAnnotatedClass(Courses10th.class).addAnnotatedClass(Courses11th.class).addAnnotatedClass(Courses12th.class);

		        Metadata metadata = sources.getMetadataBuilder().build();

//		        sessionFactory = metadata.getSessionFactoryBuilder().build();
		      } catch (Exception e) {
		        System.out.println("SessionFactory creation failed");
		        if (registry != null) {
		          StandardServiceRegistryBuilder.destroy(registry);
		        }
		      }
		    }
		    return sessionFactory;
		  }
	 
	public static void addUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
	}
}