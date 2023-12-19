package com.multi.project;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(LoginVO loginVO) {
		my.insert("login.insert", loginVO);
	}
}
