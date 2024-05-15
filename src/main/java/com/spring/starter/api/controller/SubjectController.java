package com.spring.starter.api.controller;

import com.spring.starter.api.response.SubjectDto;
import com.spring.starter.api.response.index.SubjectDetailsRes;
import com.spring.starter.api.response.index.SubjectRes;
import com.spring.starter.api.service.SubjectService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.dao.cilDAO;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RestController
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService subjectService;

    @Autowired
    private SqlSession sqlSession;

    @ResponseBody
    @RequestMapping(value="/detail",method= RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map subjectDetail(Model model, String code)
    {
        System.out.println("in"+code);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectDetailList",dao.subjectDetailList(code));
        //result.put("subjectPreList",dao.subjectPreList(code));
        //.put("subjectDetailCoreList",dao.subjectDetailCoreList(subject));
        //model.addAttribute("coreYN", dao.subjectDetailCoreList(subject));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/track",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map subjectTrackList(Model model,@RequestParam("carrer_path_id") String carrer_path_id,@RequestParam("small_category") String small_category)
    {
        System.out.println("in"+carrer_path_id);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectTrackList",dao.subjectTrackList(carrer_path_id, small_category));
        return result;
    }

    @GetMapping("/subject")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<SubjectDto> collect = subjectService.getAllSubject().stream().map(subject -> new SubjectDto(subject)).collect(Collectors.toList());
        return ResponseEntity.status(200).body(new SubjectRes("모든 과목을 불러왔습니다", 200, collect));
    }

    @GetMapping("/subject/{subjectId}")
    public ResponseEntity<? extends BaseResponse> getDetails(@PathVariable String code) {
        return ResponseEntity.status(200).body(new SubjectDetailsRes("과목 상세정보를 불러왔습니다.", 200, subjectService.getSubjectDetails(code)));
    }

    @RequestMapping("/test")
    public String callView() throws Exception {
        System.out.println("test");
        return "home";
    }
/*
    @GetMapping("cil")
    public List<Board> boardList(HttpServletRequest request, @ModelAttribute Board board) throws Exception {
        return this.boardService.selectBoardList(request, board);
    }*/
}
