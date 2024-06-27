package com.spring.starter.api.controller;

import com.spring.starter.api.service.SubjectService;

import com.spring.starter.config.jwt.TokenDto;
import com.spring.starter.config.jwt.TokenProvider;
import com.spring.starter.dao.adminDAO;
import com.spring.starter.dao.cilDAO;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
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
import javax.servlet.http.HttpServletResponse;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

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
    public String showLoginForm() {
        return "admin/login"; // 로그인 JSP 페이지
    }
    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                                      @RequestParam("password") String password,
                                      HttpServletResponse response,
                        RedirectAttributes redirectAttributes) {
        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, password)
            );

            SecurityContextHolder.getContext().setAuthentication(authentication);
            TokenDto tokenDto = tokenProvider.generateTokenDto(authentication);

            // JWT 토큰을 쿠키에 저장
            Cookie jwtCookie = new Cookie("JWT", tokenDto.getAccessToken());
            jwtCookie.setHttpOnly(true);
            jwtCookie.setSecure(true); // HTTPS에서만 사용하도록 설정
            jwtCookie.setPath("/");
            jwtCookie.setMaxAge(60 * 60 * 24 * 60); // 60일 동안 유효
            response.addCookie(jwtCookie);

            return "redirect:/admin";
        }catch (AuthenticationException e) {
            redirectAttributes.addFlashAttribute("error", "아이디 또는 비밀번호가 잘못되었습니다.");
            return "redirect:/login";
        }
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
    @RequestMapping(value="/admin/subject/SubjectUpdate",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map updateFeSubject(Model model,@RequestParam("code") String code,@RequestParam("name") String name,@RequestParam("detail") String detail,@RequestParam("semester") int semester,@RequestParam("is_mandatory") int is_mandatory,@RequestParam("original_language") int original_language)
    {
        System.out.println("subject update in"+code);
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        cilDAO cao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        dao.updateFeSubject(code,name,detail,semester,is_mandatory,original_language);
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/admin/subject/SubjectAdd",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map addFeSubject(Model model,@RequestParam("code") String code,@RequestParam("name") String name,@RequestParam("detail") String detail,@RequestParam("semester") int semester,@RequestParam("is_mandatory") int is_mandatory,@RequestParam("original_language") int original_language)
    {
        System.out.println("FeSubject add in");
        adminDAO dao = sqlSession.getMapper(adminDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        dao.addFeSubject(code,name,detail,semester,is_mandatory,original_language);
        //result.put("subjectTrackList",dao.subjectTrackList(page_id));
        //result.put("mentorDetailList", dao.mentorDetailList(id));
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

