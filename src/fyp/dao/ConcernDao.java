package fyp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fyp.entity.Concern;


public class ConcernDao extends BaseDao{
//  通过手机号选择user表
	public List<Concern> searchPhone(String phone) throws SQLException {
		List<Concern> list = new ArrayList<Concern>();
		String sql = "select * from concern where phonea = ? or phoneb = ?";
		executeQuery(sql,phone,phone);
		while (rs.next()) {
			Concern concern=new Concern();
			concern.setPhoneA(rs.getString("phonea"));
			concern.setPhoneB(rs.getString("phoneb"));
			// 将对象加入集合
			list.add(concern);
		}
		return list;
	}
	
	
}
