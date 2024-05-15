package com.spring.starter.common.util;

import static org.springframework.http.MediaType.*;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.starter.common.model.BaseResponse;

/**
 * 컨트롤러(controller)가 아닌곳에서, 서버 응답값(바디) 직접 변경 및 전달 하기위한 유틸 정의.
 */
public class ResponseBodyWriteUtil {
	
	public static void sendApiResponse(HttpServletResponse response, BaseResponse apiResponse) throws IOException {
        response.setStatus(HttpStatus.OK.value());
        response.setContentType(APPLICATION_JSON_VALUE);
        response.setCharacterEncoding("UTF-8");
        response.getOutputStream().write(new ObjectMapper().writeValueAsString(apiResponse).getBytes());
    }
}
