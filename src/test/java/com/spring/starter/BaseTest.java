package com.spring.starter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootTest
@ActiveProfiles
@AutoConfigureMockMvc
@Transactional
public class BaseTest {

	@Autowired
	protected MockMvc mockMvc;
	@Autowired
	protected ObjectMapper objectMapper;
}
