package fyp.dao;

import java.sql.SQLException;

import fyp.entity.User;

public class Test {
   public static void main(String[] args) {
	UserDao userDao=new UserDao();
	User user=new User();
    user.setUsername("username");
    user.setAge("username");
    user.setHeight("username");
    user.setEducation("username");
    user.setIncome("username");
    user.setPhone("username");
    user.setPassword("username");
    try {
		userDao.addUser(user);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
  }
}
