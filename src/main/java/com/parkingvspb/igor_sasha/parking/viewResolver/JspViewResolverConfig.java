//package com.parkingvspb.igor_sasha.parking.viewResolver;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.ViewResolver;
//import org.springframework.web.servlet.view.InternalResourceViewResolver;
//import org.springframework.web.servlet.view.JstlView;
//
//@Configuration
//public class JspViewResolverConfig {
//
//    @Bean
//    public ViewResolver jspViewResolver() {
//        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
//        viewResolver.setViewClass(JstlView.class);
//        viewResolver.setPrefix("META-INF/WEB-INF/view/");
//        viewResolver.setSuffix(".jsp");
//        viewResolver.setContentType("text/html");
//        viewResolver.setOrder(1000);
//        return viewResolver;
//    }
//
//}
