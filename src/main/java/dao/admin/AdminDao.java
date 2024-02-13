package dao.admin;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import ibatis.IbatisUtil;
import vo.admin.Admin;

public class AdminDao {

	private SqlMapClient ibatis = IbatisUtil.getSqlMapClient();
	
	public void insertUser(Admin admin) throws SQLException{
		ibatis.insert("admins.insertAdmin", admin);
	}
	
	public Admin getAdminById(String id) throws SQLException{
		return (Admin) ibatis.queryForObject("admins.getAdminById", id);
	}
	
	public Admin getAdminByEmail(String email) throws SQLException{
		return (Admin) ibatis.queryForObject("admins.getAdminByEmail", email);
	}
}
