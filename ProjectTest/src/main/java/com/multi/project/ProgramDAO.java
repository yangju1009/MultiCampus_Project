package com.multi.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProgramDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(ProgramDAO.class);
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<ProgramVO> list(ProgramVO programVO) {
		try {
			List<ProgramVO> list = my.selectList("program.list", programVO);
			
			// 디버깅을 위한 로그 출력
			System.out.println("ProgramDAO: 목록 조회 결과 - " + list);
			
			return list;
		} catch (Exception e) {
			e.printStackTrace(); // 또는 로깅 프레임워크를 사용하여 로그 기록
			return null; // 또는 예외를 다시 throw하는 등의 처리 방법을 선택할 수 있습니다.
		}
	}
	
	public List<ProgramVO> search(ProgramVO programVO) {
		try {
			List<ProgramVO> searchResults = my.selectList("program.search", programVO);
			
			// 디버깅을 위한 로그 출력
			logger.info("ProgramDAO: 검색 결과 - {}", searchResults);
			
			return searchResults;
		} catch (Exception e) {
			e.printStackTrace(); // 또는 로깅 프레임워크를 사용하여 로그 기록
			return null; // 또는 예외를 다시 throw하는 등의 처리 방법을 선택할 수 있습니다.
		}
	}
	
	public int delete(ProgramVO programVO) {
		int result = my.delete("program.delete", programVO);
		return result;
		
	}
}
