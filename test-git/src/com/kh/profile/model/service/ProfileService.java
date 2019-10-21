package com.kh.profile.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.JDBCTemplate;
import com.kh.member.model.dao.MemberDao;
import com.kh.profile.model.dao.ProfileDao;
import com.kh.profile.model.vo.Profile;

public class ProfileService {
	public ArrayList<Profile> searchProfile(String city,int height) {
		Connection conn = JDBCTemplate.getConnection();
		ProfileDao dao = new ProfileDao();
		ArrayList<Profile> list = dao.searchProfile(conn,city,height);
		JDBCTemplate.close(conn);
		return list;
	}
}
