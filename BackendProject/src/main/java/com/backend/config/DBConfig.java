package com.backend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.backend.model.Category;
import com.backend.model.Product;
import com.backend.model.Supplier;
import com.backend.model.User;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.backend")
public class DBConfig {
	
	@Bean(name="dataSource")
	public DataSource getDataSource()
	
	{
		
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:~/test");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		
		return dataSource;
	}
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(){
		Properties p=new Properties();
		p.setProperty("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		p.setProperty("hibernate.hbm2ddl.auto","update");
		p.setProperty("hibernate.show_sql", "true");
		
		LocalSessionFactoryBuilder factory=new LocalSessionFactoryBuilder(getDataSource());
		factory.addProperties(p);
		factory.addAnnotatedClass(Category.class);
		factory.addAnnotatedClass(Product.class);
		factory.addAnnotatedClass(User.class);
		factory.addAnnotatedClass(Supplier.class);
		return factory.buildSessionFactory();
		
	}
	
	@Bean(name="transactionManager")
	public HibernateTransactionManager getTransationManager(SessionFactory sessionFactory)
	{
		
		HibernateTransactionManager tx=new HibernateTransactionManager(sessionFactory);
		return tx;
	}

}
