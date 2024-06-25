package com.spring.starter.config.security;

import com.spring.starter.config.jwt.JwtFilter;
import com.spring.starter.config.jwt.TokenProvider;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class JwtSecurityConfig extends WebSecurityConfigurerAdapter {

    private final TokenProvider tokenProvider;
    private final JwtAccessDeniedHandler accessDeniedHandler;

    public JwtSecurityConfig(TokenProvider tokenProvider, JwtAccessDeniedHandler accessDeniedHandler) {
        this.tokenProvider = tokenProvider;
        this.accessDeniedHandler = accessDeniedHandler;
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        JwtFilter jwtFilter = new JwtFilter(tokenProvider);
        http
                .csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()
                .antMatchers("/", "/index", "/home", "/login", "/resources/**", "/WEB-INF/views/**","/track","/detail","/jobdetail/**").permitAll() // 인증 없이 접근 가능한 경로
                .antMatchers("/WEB-INF/views/admin/**", "/WEB-INF/views/fil-admin/**").authenticated() // 인증 필요한 경로
                .anyRequest().authenticated() // 그 외 모든 경로는 인증 필요
                .and()
                .exceptionHandling()
                .accessDeniedHandler(accessDeniedHandler) // 접근 거부 핸들러 설정
                .and()
                .addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class);
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers(
                "/h2-console/**",
                "/favicon.ico",
                "/resources/**",
                "/css/**",       // 정적 파일 허용
                "/js/**",        // 정적 파일 허용
                "/img/**",       // 정적 파일 허용
                "/webjars/**"    // 정적 파일 허용
        );
    }
}