package com.mycom.myapp;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})

public class DataSourceTest {
	@Autowired
	private DataSource ds;
	
	@Test
	public void testConnection() {
		
		ApplicationContext ctx=new FileSystemXmlApplicationContext("file:src/main/webapp/WEB-INF/spring/root-context.xml");
		
		DataSource ds=(DataSource) ctx.getBean("dataSource");
		
		try {
			Connection con = ds.getConnection();
			System.out.println("DB연결");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
