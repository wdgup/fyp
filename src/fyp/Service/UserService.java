package fyp.Service;

import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

import fyp.dao.UserDao;
import fyp.entity.User;
import org.apache.commons.collections.CollectionUtils;


public class UserService {
	// 创建对象
	static UserDao userDao = new UserDao();

	// 注册
		// 对数据验证
		// 语法：boolean b = Pattern.matches("正则表达式", "要验证的字符串");
//		String usernameRegex = "^[\u4e00-\u9fa5]{0,}$";
	//	boolean usernameIsRight = Pattern.matches(usernameRegex, user.getUsername());
	//注册
	public void register(User user){
		try {
			userDao.addUser(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	// 登录验证
		public User login(String phone, String password) {
			try {
				List<User> list = userDao.selectByCondition(phone, password);
				if (!list.isEmpty()) {
					return list.get(0);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}

	//根据手机号查询
		public int selectByPhone(String phone) {
			int id=0;
			try {
				id = userDao.selectPhone(phone);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(phone==null){
				id=-2;
			}
			return id;
		}
	//修改密码
		public void updatePassword(String phone,String password){
			try {
				userDao.updatePeople(phone, password);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	//实名认证
		public void updateIdentify(String phone,String sname,String sidentify){
			try {
				userDao.updatePeopleSname(phone,sname,sidentify);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		//修改所有信息
		public void updateAll(String name,String age,String height,String education,String income,String password,String phone){
			try {
				userDao.updatePeopleAll(name, age, height, education, income, password, phone);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		//查询所有
		public List<User> showAll(){
			List<User> list = null;
			try {
				list = userDao.selectAll();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			
		}
		
		//查询年龄
		public List<User> searchAge(String minage,String maxage){
			List<User> list = null;
			try {
				list = userDao.searchAge(minage,maxage);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			
		}
		
		//查询性格
		public List<User> searchCharacter(String cha){
			List<User> list = null;
			try {
				list = userDao.searchCharacter(cha);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			
		}
		
		//打招呼
		public void regHi(String phoneA,String phoneB){
			try {
				if(!phoneB.equals("0")){
					userDao.addHi(phoneA, phoneB);
				}			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}
		
		//关注
		public void regConcern(String phoneA,String phoneB){
			try {
				if(!phoneB.equals("0")){
					userDao.addConcern(phoneA, phoneB);
				}			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		}

		//根据手机号查询名字
		public String selectByPhoneForName(String phone) {
			String name=null;
			try {
				name = userDao.selectPhoneForName(phone);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return name;
		}
   
		//根据名字查询手机号
		public String selectByNameForPhone(String name) {
			String phone=null;
			try {
				phone = userDao.selectNameForPhone(name);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return phone;
		}
}


