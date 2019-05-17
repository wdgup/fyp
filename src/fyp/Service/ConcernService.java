package fyp.Service;

import java.sql.SQLException;
import java.util.List;

import fyp.dao.ConcernDao;
import fyp.entity.Concern;

public class ConcernService {
    
	static ConcernDao concernDao=new ConcernDao();
	
	public List<Concern> searchPhone(String phone){
		List<Concern> list = null;
		try {
			list = concernDao.searchPhone(phone);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
}
