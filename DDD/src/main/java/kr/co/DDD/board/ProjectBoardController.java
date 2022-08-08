package kr.co.DDD.board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectBoardController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectBoardController.class);
	
	@RequestMapping(value = "/project_board2", method = RequestMethod.GET)
	public String projectBoard2() {
		return "/board/project_board2";//jsp 파일 이름
	}//projectBoard
	
	@RequestMapping(value = "/project_board", method = RequestMethod.GET)
	public String projectBoard() {
		return "/board/project_board";//jsp 파일 이름
	}//projectBoard
	
}//class
