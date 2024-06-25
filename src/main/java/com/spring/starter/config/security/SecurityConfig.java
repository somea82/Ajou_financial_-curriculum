//package com.spring.starter.config.security;
//
//import com.spring.starter.config.jwt.TokenProvider;
//import lombok.RequiredArgsConstructor;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.config.http.SessionCreationPolicy;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//@Configuration
//@EnableWebSecurity
//@RequiredArgsConstructor
//@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//	private final TokenProvider tokenProvider;
//	private final JwtAuthenticationEntryPoint jwtAuthenticationEntryPoint;
//	private final JwtAccessDeniedHandler jwtAccessDeniedHandler;
//
//	@Bean
//	public PasswordEncoder passwordEncoder(){
//		return new BCryptPasswordEncoder();
//	}
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.csrf().disable()
//				.authorizeRequests()
//				.antMatchers("/user/**","/amam/board/{title}/reply/{mentor}","/survey/**", "/industryImg/**", "/cil/**","/test/**","/test").permitAll()
//				.anyRequest().authenticated() // 나머지 API 는 전부 인증 필요
//		.and()
//				.formLogin();
//
//
//
//	}
//
//}
