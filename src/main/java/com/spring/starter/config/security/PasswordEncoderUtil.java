package com.spring.starter.config.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoderUtil {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String rawPassword = "1234"; // 이곳에 인코딩할 비밀번호 입력
        String encodedPassword = encoder.encode(rawPassword);
        System.out.println(encodedPassword);
    }
}
