package kr.co.DDD.join;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class ProjectJoinController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectJoinController.class);
	
	@Autowired
	private PrigectJoinService service;
	
	
	@RequestMapping(value = "/project_join")
	public String projectJoin() {
		return "/join/project_join";//jsp 파일 이름
	}//projectJoin
	
	
}//class