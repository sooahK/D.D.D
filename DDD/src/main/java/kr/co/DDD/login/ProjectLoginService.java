package kr.co.DDD.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.DDD.util.dto.MemberDTO;

@Service
public class ProjectLoginService {

	@Autowired
	private ProjectLoginDAO dao;
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO dtoDB = null;
		dtoDB = dao.login(dto);
		return dtoDB;
	}//login
}//class