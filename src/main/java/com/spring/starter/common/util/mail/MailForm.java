package com.spring.starter.common.util.mail;

public class MailForm {
	public String getBaseMail(String content) {

		return "<!DOCTYPE html>" +
				"<html>" +
				"<head>" +
				"</head>" +
				"<body>" +
				" <div" +
				"	style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 400px; height: 600px; border-top: 4px solid #02b875; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">" +
				"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">" +
				"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">MIL</span><br />" +
				"		<span style=\"color: #02b875\">MIL</span> 안내 메일입니다." +
				"	</h1>\n" +
				"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">" +
				content +
				"	</p>" +
				"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\"></div>" +
				" </div>" +
				"</body>" +
				"</html>";
	}

	public String getCertificationCodeMail(String code) {

		return "<!DOCTYPE html>" +
			"<html>" +
			"<head>" +
			"</head>" +
			"<body>" +
			" <div" +
			"	style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 400px; height: 600px; border-top: 4px solid #02b875; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">" +
			"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">" +
			"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">MIL</span><br />" +
			"		<span style=\"color: #02b875\">메일인증코드</span> 안내입니다." +
			"	</h1>\n" +
			"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">" +
			"		안녕하세요.<br />" +
			"		MIL와 함께해주셔서 진심으로 감사드립니다.<br />" +
			"		아래 <b style=\"color: #02b875\">'인증 코드'</b> 를 통해 회원가입 절차를 진행해주시길 바랍니다.<br />" +
			"		감사합니다." +
			"	</p>" +
			"	<a style=\"color: #FFF; text-decoration: none; text-align: center;\"" +
			"	>" +
			"		<p" +
			"			style=\"display: inline-block; width: 210px; height: 45px; margin: 30px 5px 40px; background: #02b875; line-height: 45px; vertical-align: middle; font-size: 30px; font-weight:bold;\">" +
			"			" + code + "</p>" +
			"	</a>" +
			"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\"></div>" +
			" </div>" +
			"</body>" +
			"</html>";
	}

	public String getPwdCertificationMail(String code) {
		return "<!DOCTYPE html>" +
			"<html>" +
			"<head>" +
			"</head>" +
			"<body>" +
			" <div" +
			"	style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 400px; height: 600px; border-top: 4px solid #02b875; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">" +
			"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">" +
			"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">MIL</span><br />" +
			"		<span style=\"color: #02b875\">인증코드</span> 안내입니다." +
			"	</h1>\n" +
			"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">" +
			"		안녕하세요.<br />" +
			"		MIL와 함께해주셔서 진심으로 감사드립니다.<br />" +
			"		아래 <b style=\"color: #02b875\">'인증 코드'</b> 를 통해 비밀번호 변경 절차를 진행해주시길 바랍니다.<br />" +
			"		감사합니다." +
			"	</p>" +
			"	<a style=\"color: #FFF; text-decoration: none; text-align: center;\"" +
			"	>" +
			"		<p" +
			"			style=\"display: inline-block; width: 210px; height: 45px; margin: 30px 5px 40px; background: #02b875; line-height: 45px; vertical-align: middle; font-size: 30px; font-weight:bold;\">" +
			"			" + code + "</p>" +
			"	</a>" +
			"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\"></div>" +
			" </div>" +
			"</body>" +
			"</html>";
	}

	public String getAMAMReplyMail(String code, String amamReplyUrl, String title) {

		return "<!DOCTYPE html>" +
				"<html>" +
				"<head>" +
				"</head>" +
				"<body>" +
				" <div" +
				"	style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 400px; height: 600px; border-top: 4px solid #02b875; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">" +
				"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">" +
				"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">MIL</span><br />" +
				"		<span style=\"color: #02b875\">새로운 글이 등록되었습니다.</span>" +
				"	</h1>\n" +
				"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">" +
				"		안녕하세요.<br />" +
				"		MIL-AMAM에 새 글이 등록되었습니다.<br />" +
				"		글제목 ["+title+"]<br />" +
				"		<a href = "+amamReplyUrl+">   답글 달기   </a>\n" +
				"\n" +
				"		해당 링크에 접속하신 후<br />"+
				"		아래 <b style=\"color: #02b875\">'인증 코드'</b> 를 답글과 함께 입력해 주세요.<br />" +
				"		감사합니다." +
				"	</p>" +
				"	<a style=\"color: #FFF; text-decoration: none; text-align: center;\"" +
				"	>" +
				"		<p" +
				"			style=\"display: inline-block; width: 210px; height: 45px; margin: 30px 5px 40px; background: #02b875; line-height: 45px; vertical-align: middle; font-size: 30px; font-weight:bold;\">" +
				"			" + code + "</p>" +
				"	</a>" +
				"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\"></div>" +
				" </div>" +
				"</body>" +
				"</html>";
	}
}
