package fyp.Service;

import java.sql.SQLException;
import java.util.List;

import fyp.dao.MessageDao;
import fyp.entity.Message;

public class MessageService {
	static MessageDao messageDao=new MessageDao();
	
	//发消息
	public void regMessage(String phoneA,String phoneB,String message){
		try {
			if(!phoneB.equals("0")){
				messageDao.addMessage(phoneA, phoneB,message);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	//查询
	public List<Message> searchPhone(String phone){
		List<Message> list = null;
		try {
			list = messageDao.searchPhone(phone);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
}
