package com.backend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.config.DBConfig;


 public class App 
{
    public static void main( String[] args )
    {
      AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
      context.register(DBConfig.class);
      context.refresh();
    }
}
