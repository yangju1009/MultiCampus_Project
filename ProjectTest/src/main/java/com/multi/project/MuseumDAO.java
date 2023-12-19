package com.multi.project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MuseumDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public List<MuseumVO> list(MuseumVO museumVO) {
		try {
			List<MuseumVO> list = my.selectList("museum.list", museumVO);
			
			// 디버깅을 위한 로그 출력
			System.out.println("MuseumDAO: 목록 조회 결과 - " + list);
			
			return list;
		} catch (Exception e) {
			e.printStackTrace(); // 또는 로깅 프레임워크를 사용하여 로그 기록
			return null; // 또는 예외를 다시 throw하는 등의 처리 방법을 선택할 수 있습니다.
		}
	}
}
