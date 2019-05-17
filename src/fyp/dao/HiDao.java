package fyp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fyp.entity.Hi;
import fyp.entity.User;


public class HiDao extends BaseDao{
//  通过手机号选择user表
	public List<Hi> searchPhone(String phone) throws SQLException {
		List<Hi> list = new ArrayList<Hi>();
		String sql = "select * from hi where phonea = ? or phoneb = ?";
		executeQuery(sql,phone,phone);
		while (rs.next()) {
			Hi hi=new Hi();
			hi.setPhoneA(rs.getString("phonea"));
			hi.setPhoneB(rs.getString("phoneb"));
			// 将对象加入集合
			list.add(hi);
		}
		return list;
	}
	
	
}
