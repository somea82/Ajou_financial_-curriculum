/*package com.spring.starter.api.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.ResultActions;

import com.spring.starter.BaseTest;
import com.spring.starter.api.request.user.SignUpUserReq;
import com.spring.starter.db.entity.Authority;
import com.spring.starter.db.entity.User;
import com.spring.starter.db.repository.UserRepository;

@DisplayName("User Controller Test")
class UserControllerTest extends BaseTest {

	private final UserRepository userRepository;

	@Autowired
	UserControllerTest(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Test
	@DisplayName("유저 회원가입 (성공)")
	void signupUserSuccessTest() throws Exception {
		//Given
		SignUpUserReq singUpUserReq = new SignUpUserReq("testUserId","test@ajou.ac.kr", "testPwd", "testName", 201721070, Authority.ROLE_ADMIN, "game");

		//When
		ResultActions perform = this.mockMvc.perform(
			post("/user/signup").contentType(MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON)
				.content(this.objectMapper.writeValueAsString(singUpUserReq)));

		//Then
		perform.andExpect(status().isCreated());
	}

	@Test
	@DisplayName("유저 회원가입 (실패)")
	void signupUserFailTest() throws Exception {
		//setUp
		User user = User.builder()
			.name("test")
			.email("test@gmail.com")
			.password("encodedPwd")
			.authority(Authority.ROLE_ADMIN)
			.studentId(201721070)
			.area(null)
			.userId("testId")
			.build();
		userRepository.save(user);

		//Given
		SignUpUserReq singUpUserReq = new SignUpUserReq("testId","test@ajou.ac.kr", "testPwd", "testName", 201721070, Authority.ROLE_ADMIN, "failArea");

		//When
		ResultActions perform = this.mockMvc.perform(
			post("/user/signup").contentType(MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON)
				.content(this.objectMapper.writeValueAsString(singUpUserReq)));

		//Then
		perform.andExpect(status().is4xxClientError());

		//given
		singUpUserReq = new SignUpUserReq("nonTestId","test@gmail.com", "testPwd", "testName", 201721070, Authority.ROLE_ADMIN, "failArea");

		//When
		perform = this.mockMvc.perform(
			post("/user/signup").contentType(MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON)
				.content(this.objectMapper.writeValueAsString(singUpUserReq)));

		//Then
		perform.andExpect(status().is4xxClientError());
	}

}*/