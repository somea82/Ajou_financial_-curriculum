/*package com.spring.starter.api.service;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.starter.BaseTest;

class CertificationServiceTest extends BaseTest {

	private final CertificationService certificationService;

	@Autowired
	CertificationServiceTest(CertificationService certificationService) {
		this.certificationService = certificationService;
	}

	@Test
	@DisplayName("인증 검증 테스트 (성공)")
	void verifyCodeSuccessTest() {
		String email = "gyxor8582@naver.com";
		String code = certificationService.saveCertification(email);

		boolean result = certificationService.matchCode(email, code);

		Assertions.assertThat(result).isTrue();
	}

	@Test
	@DisplayName("인증 검증 테스트 (실패)")
	void verifyCodeFailTest() {
		String email = "gyxor8582@naver.com";
		String code = certificationService.saveCertification(email);

		boolean result = certificationService.matchCode(email, code + "fail");

		Assertions.assertThat(result).isFalse();
	}
}*/