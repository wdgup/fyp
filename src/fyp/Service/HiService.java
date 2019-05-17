package fyp.Service;

import java.sql.SQLException;
import java.util.List;

import fyp.dao.HiDao;
import fyp.entity.Hi;

public class HiService {
    
	static HiDao hiDao=new HiDao();
	
	public List<Hi> searchPhone(String phone){
		List<Hi> list = null;
		try {
			list = hiDao.searchPhone(phone);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
}
