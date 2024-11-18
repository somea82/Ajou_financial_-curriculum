package com.spring.starter.api.controller;

import com.spring.starter.config.jwt.TokenDto;
import com.spring.starter.config.jwt.TokenProvider;
import com.spring.starter.dao.adminDAO;
import com.spring.starter.dao.cilDAO;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.core.AuthenticationException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequiredArgsConstructor
public class AdminController {

    @Autowired
    private final AuthenticationManager authenticationManager;
    @Autowired
    private final TokenProvider tokenProvider;
    @Autowired
    private final SqlSession sqlSession;

    @GetMapping("/login")
    public String showLoginForm(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("JWT".equals(cookie.getName())) {
                    // JWT 쿠키가 있으면 관리자 페이지로 리다이렉트
                    return "redirect:/admin";
                }
            }
        }
        return "admin/login"; // 로그인 JSP 페이지
    }
    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                                      @RequestParam("password") String password,
                                      HttpServletResponse response,
                        RedirectAttributes redirectAttributes) {
        try {
            log.info("Before authenticationManager.authenticate");
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, password)
            );
            log.info("AdminController.login: log11");

            SecurityContextHolder.getContext().setAuthentication(authentication);
            log.info("AdminController.login: log111");
            TokenDto tokenDto = tokenProvider.generateTokenDto(authentication);
            log.info("AccessToken: " + tokenDto.getAccessToken());

            // JWT 토큰을 쿠키에 저장
            Cookie jwtCookie = new Cookie("JWT", tokenDto.getAccessToken());
            log.info("AdminController.login: log2");
            jwtCookie.setHttpOnly(false);
            log.info("AdminController.login: log3");
            jwtCookie.setSecure(false); // HTTPS에서만 사용하도록 설정
            log.info("AdminController.login: log4");
            jwtCookie.setPath("/");
            log.info("AdminController.login: log5");
            jwtCookie.setMaxAge(60*60); // 1시간 동안 유효
            log.info("AdminController.login: log6");
            response.addCookie(jwtCookie);

            log.info("JWT 쿠키가 설정되었습니다: " + jwtCookie.getValue());

            return "redirect:/admin";
        }catch (AuthenticationException e) {
            redirectAttributes.addFlashAttribute("error", "아이디 또는 비밀번호가 잘못되었습니다.");
            log.info("인증 실패");
            e.printStackTrace();
            return "redirect:/login";
        }
    }
    @GetMapping("/editJobInfo")
    public String editJobInfo(@RequestParam("id") String pageId, Model model) {
        System.out.println("In AdminController.editJobInfo"+ pageId);
        // pageId를 이용해 데이터베이스에서 직업 정보를 가져옴
        // 예: JobDetail jobDetail = jobService.getJobDetailById(pageId);

        // 가져온 데이터를 모델에 추가
        // model.addAttribute("jobDetail", jobDetail);

        // JSP 페이지의 경로를 반환 (뷰 리졸버가 실제 경로를 처리함)
        return "jobdetail/edit_carrer_path";
    }
    @ResponseBody
    @RequestMapping(value="admin/curriculum/delete",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map deleteCurriculum(Model model, int page_id)
    {
        System.out.println("delete curriculum in"+page_id);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.deleteCurriculum(page_id);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("curriList", dao.curriList());
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/SubjectInfo",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map getSubjectInfo(Model model, String code)
    {
        System.out.println("in"+ code);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectDetailList",dao.subjectDetailList(code));
        result.put("subjectPositionList",dao.subjectPositionList(code));
        //result.put("subjectPreList",dao.subjectPreList(code));
        //.put("subjectDetailCoreList",dao.subjectDetailCoreList(subject));
        //model.addAttribute("coreYN", dao.subjectDetailCoreList(subject));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/SubjectUpdate",method=RequestMethod.POST, consumes = "application/json" , produces = "application/json; charset=utf-8")
    public Map<String, Object> updateSubject(
            @RequestBody(required = false) Map<String, Object> requestData) {

        String code = (String) requestData.get("code");
        String name = (String) requestData.get("name");
        int semester = 0;
        if (requestData.get("semester") instanceof Integer) {
            semester = (Integer) requestData.get("semester");
        } else if (requestData.get("semester") instanceof String) {
            semester = Integer.parseInt((String) requestData.get("semester"));
        }
        String detail = (String) requestData.get("detail");
        int isMandatory = 0;
        if (requestData.get("is_mandatory") instanceof Integer) {
            isMandatory = (Integer) requestData.get("is_mandatory");
        } else if (requestData.get("is_mandatory") instanceof String) {
            isMandatory = Integer.parseInt((String) requestData.get("is_mandatory"));
        }
        int originalLanguage = 0;
        if (requestData.get("original_language") instanceof Integer) {
            originalLanguage = (Integer) requestData.get("original_language");
        } else if (requestData.get("original_language") instanceof String) {
            originalLanguage = Integer.parseInt((String) requestData.get("original_language"));
        }
        int isMath = 0;
        if (requestData.get("is_math") instanceof Integer) {
            isMath = (Integer) requestData.get("is_math");
        } else if (requestData.get("is_math") instanceof String) {
            isMath = Integer.parseInt((String) requestData.get("is_math"));
        }

        List<String> preSubjectCodes = (List<String>) requestData.get("preSubjectCodes");
        List<String> relSubjectCodes = (List<String>) requestData.get("relSubjectCodes");

        System.out.println("subject update in " + code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.updateFeSubject(code, name, detail, semester, isMandatory, originalLanguage,isMath);

        // 선수 과목 업데이트 로직
        dao.deletePrerequisiteBySubjectCode(code); // 기존 선수 과목 삭제
        for (String preSubjectCode : preSubjectCodes) {
            if (!preSubjectCode.equals("None")) {
                dao.addPrerequisite(code, preSubjectCode);
            }
        }

        // 연계 과목 업데이트 로직
        dao.deleteRelateBySubjectCode(code); // 기존 연계 과목 삭제
        for (String relSubjectCode : relSubjectCodes) {
            if (!relSubjectCode.equals("None")) {
                dao.addRelate(code, relSubjectCode);
            }
        }

        Map<String, Object> result = new HashMap<>();
        result.put("status", "success");
        return result;
    }
    @ResponseBody
    @RequestMapping(value="/admin/subject/SubjectAdd", method=RequestMethod.POST, consumes = "application/json", produces = "application/json; charset=utf-8")
    public Map<String, Object> addFeSubject(@RequestBody(required = false) Map<String, Object> requestData) {

        String code = (String) requestData.get("code");
        String name = (String) requestData.get("name");
        int semester = 0;
        if (requestData.get("semester") instanceof Integer) {
            semester = (Integer) requestData.get("semester");
        } else if (requestData.get("semester") instanceof String) {
            semester = Integer.parseInt((String) requestData.get("semester"));
        }
        String detail = (String) requestData.get("detail");
        int isMandatory = 0;
        if (requestData.get("is_mandatory") instanceof Integer) {
            isMandatory = (Integer) requestData.get("is_mandatory");
        } else if (requestData.get("is_mandatory") instanceof String) {
            isMandatory = Integer.parseInt((String) requestData.get("is_mandatory"));
        }
        int originalLanguage = 0;
        if (requestData.get("original_language") instanceof Integer) {
            originalLanguage = (Integer) requestData.get("original_language");
        } else if (requestData.get("original_language") instanceof String) {
            originalLanguage = Integer.parseInt((String) requestData.get("original_language"));
        }
        int isMath = 0;
        if (requestData.get("is_math") instanceof Integer) {
            isMath = (Integer) requestData.get("is_math");
        } else if (requestData.get("is_math") instanceof String) {
            isMath = Integer.parseInt((String) requestData.get("is_math"));
        }

        List<String> preSubjectCodes = (List<String>) requestData.get("preSubjectCodes");
        List<String> relSubjectCodes = (List<String>) requestData.get("relSubjectCodes");

        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        Map<String, Object> result = new HashMap<>();
        dao.addFeSubject(code, name, detail, semester, isMandatory, originalLanguage, isMath);

        // 선수 과목 추가 로직
        for (String preSubjectCode : preSubjectCodes) {
            System.out.println("AdminController.addFeSubject: "+ preSubjectCode);
            if (!preSubjectCode.equals("None")) {
                dao.addPrerequisite(code, preSubjectCode);
            }
        }

        // 연계 과목 추가 로직
        for (String relSubjectCode : relSubjectCodes) {
            if (!relSubjectCode.equals("None")) {
                dao.addRelate(code, relSubjectCode);
            }
        }

        System.out.println("subject add in " + code);
        result.put("status", "success");
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/SubjectADelete",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map deleteFeSubject(Model model,@RequestParam("code") String code)
    {
        System.out.println("FeSubject add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        dao.deleteFeSubject(code);
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/PositionUpdate",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map updateFePosition(Model model,@RequestParam("code") String code,@RequestParam("row_id")  Integer row_id,@RequestParam ("col_id") Integer col_id)
    {
        System.out.println("Position update in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.updateFePosition(code, row_id, col_id);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/PositionAdd",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map addFePosition(Model model,  @RequestParam("code") String code, @RequestParam("row_id") Integer row_id, @RequestParam ("col_id") Integer col_id)
    {
        System.out.println("Position add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.addFePosition(code,row_id,col_id);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/PositionDelete",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map deleteFePosition(Model model,@RequestParam("code") String code)
    {
        System.out.println("Position update in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.deleteFePosition(code);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/JointUpdate",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map updateJoint(Model model,@RequestParam("code") String code,@RequestParam("joint_department")  String joint_department)
    {
        System.out.println("Joint update in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.updateJoint(code, joint_department);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/JointAdd",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map addJoint(Model model,  @RequestParam("code") String code, @RequestParam("joint_department")  String joint_department)
    {
        System.out.println("Joint add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.addJoint(code,joint_department);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }
    @ResponseBody
    @RequestMapping(value="/admin/subject/JointDelete",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map deleteJoint(Model model,  @RequestParam("code") String code, @RequestParam("joint_department")  String joint_department)
    {
        System.out.println("Joint delete in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.deleteJoint(code,joint_department);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/RelateUpdate",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map updateRelate(Model model,@RequestParam("code") String code,@RequestParam("relate_subject_code")  String relate_subject_code)
    {
        System.out.println("Related update in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.updateRelate(code, relate_subject_code);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/RelateAdd",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map addRelate(Model model,  @RequestParam("code") String code, @RequestParam("relate_subject_code")  String relate_subject_code)
    {
        System.out.println("Related add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.addRelate(code,relate_subject_code);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }
    @ResponseBody
    @RequestMapping(value="/admin/subject/RelateDelete",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map deleteRelate(Model model,  @RequestParam("code") String code, @RequestParam("relate_subject_code")  String relate_subject_code)
    {
        System.out.println("Joint delete in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.deleteRelate(code,relate_subject_code);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/PrerequisiteUpdate",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map updatePrerequisite(Model model,@RequestParam("code") String code,@RequestParam("pre_subject_code")  String pre_subject_code)
    {
        System.out.println("Prerequisite update in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.updatePrerequisite(code, pre_subject_code);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/PrerequisiteAdd",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map addPrerequisite(Model model,  @RequestParam("code") String code, @RequestParam("pre_subject_code")  String pre_subject_code)
    {
        System.out.println("Prerequisite add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        dao.addPrerequisite(code,pre_subject_code);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/PrerequisiteDelete",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map deletePrerequisite(Model model,  @RequestParam("code") String code, @RequestParam("pre_subject_code")  String pre_subject_code)
    {
        System.out.println("Joint delete in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        result.put("subjectDetailList", cao.subjectDetailList(code));
        Map<String, Object> input = new HashMap<String, Object>();
        dao.deletePrerequisite(code,pre_subject_code);
        return result;
    }

    /*
    @ResponseBody
    @RequestMapping(value="/cil/track",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map subjectTrackList(Model model, int page_id)
    {
        System.out.println("in"+page_id);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectTrackList",dao.subjectTrackList(page_id));
        return result;
    }

    @GetMapping("/cil/subject")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<SubjectDto> collect = subjectService.getAllSubject().stream().map(subject -> new SubjectDto(subject)).collect(Collectors.toList());
        return ResponseEntity.status(200).body(new SubjectRes("모든 과목을 불러왔습니다", 200, collect));
    }

    @GetMapping("/cil/subject/{subjectId}")
    public ResponseEntity<? extends BaseResponse> getDetails(@PathVariable Long subjectId) {
        return ResponseEntity.status(200).body(new SubjectDetailsRes("과목 상세정보를 불러왔습니다.", 200, subjectService.getSubjectDetails(subjectId)));
    }

    @RequestMapping("/cil/test")
    public String callView() throws Exception {
        System.out.println("test");
        return "home";
    }*/
/*
    @GetMapping("cil")
    public List<Board> boardList(HttpServletRequest request, @ModelAttribute Board board) throws Exception {
        return this.boardService.selectBoardList(request, board);
    }*/

    @Getter
    @Setter
    class LoginRequest {
        private String username;
        private String password;
        }
}

