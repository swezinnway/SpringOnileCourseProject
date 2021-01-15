package com.bestbright.onlie_course.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@ComponentScan("com.bestbright.onlie_course.*")
public class CourseConfig {

	@Bean
	public TilesConfigurer tilesConfigurer() {
		final TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions(new String[] { "WEB-INF/tiles/tiles.xml" });
		configurer.setCheckRefresh(true);
		return configurer;
	}

	@Bean
	public TilesViewResolver tilesViewResolver() {
		final TilesViewResolver resolver = new TilesViewResolver();
		resolver.setViewClass(TilesView.class);
		return resolver;
	}
	
	@Bean
	public WebMvcConfigurer addResourceHandlers() {
		return new WebMvcConfigurer() {
			@Override
			public void addResourceHandlers(final ResourceHandlerRegistry registry) {
				registry.addResourceHandler("/resources/**")
			      .addResourceLocations("/resources/**","classpath:/static/");
				registry.addResourceHandler("/images/**")
			      .addResourceLocations("/images/**","/images/");
			
			}

		};
	}
	
}
