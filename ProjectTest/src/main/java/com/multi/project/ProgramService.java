package com.multi.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProgramService {

    @Autowired
    ProgramDAO programDAO;

    /**
     * 프로그램 목록을 가져오는 서비스 메서드
     * 
     * @param programVO 프로그램 검색을 위한 조건을 담은 ProgramVO 객체
     * @return 프로그램 목록(List<ProgramVO>)
     */
    public List<ProgramVO> list(ProgramVO programVO) {
        return programDAO.list(programVO);
    }

	public List<ProgramVO> search(ProgramVO programVO) {
		return programDAO.search(programVO);
	}
	
	public int delete(ProgramVO programVO) {
		return programDAO.delete(programVO);
	}
}
