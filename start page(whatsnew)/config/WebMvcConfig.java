package com.amazon.config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import com.amazon.dao.Eventsdao;
import com.amazon.dao.EventsdaoImpl;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.amazon.controller", "com.amazon.dao" })
public class WebMvcConfig {
	@Bean
	public InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver vr = new InternalResourceViewResolver();
		vr.setPrefix("/");
		vr.setSuffix(".jsp");

		return vr;
	}

	@Bean
	public DriverManagerDataSource getDataSource() {

		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/amazon");
		ds.setUsername("root");
		ds.setPassword("mani123");

		return ds;
	}

	@Bean
	public Eventsdao getEmployeeDao() {
		return new EventsdaoImpl(getDataSource());
	}
	

}
