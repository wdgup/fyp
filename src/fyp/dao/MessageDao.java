package fyp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fyp.entity.Message;

public class MessageDao extends BaseDao {
//	增加到Message表
	public void addMessage(String phoneA,String phoneB,String message) throws SQLException {
		String sql = "insert into message(phonea,phoneb,message) values (?,?,?)";
		executeUpdate(sql,phoneA ,phoneB,message);
	    System.out.println(sql);
	}
	
//  通过手机号选择Message表
	public List<Message> searchPhone(String phone) throws SQLException {
		List<Message> list = new ArrayList<Message>();
		String sql = "select * from message where phoneb = ?";
		executeQuery(sql,phone);
		while (rs.next()) {
			Message message=new Message();
			message.setPhoneA(rs.getString("phonea"));
			message.setPhoneB(rs.getString("phoneb"));
			message.setMessage(rs.getString("message"));
			// 将对象加入集合
			list.add(message);
		}
		return list;
	}
	
}
