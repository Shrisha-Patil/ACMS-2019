package com.amazon;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.amazon.signup.SignupController;

@SpringBootApplication
public class UpdatedAmazonWebAppApplication 
{
	public static void main(String[] args) 
	{
		new File(SignupController.uploadDirectory).mkdir();
		SpringApplication.run(UpdatedAmazonWebAppApplication.class, args);	    
	}

}
