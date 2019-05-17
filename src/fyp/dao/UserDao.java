package fyp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fyp.entity.User;


public class UserDao extends BaseDao {
//	增加到people表
	public void addUser(User user) throws SQLException {
		String sql = "insert into people(name,age,height,education,income,phone,password,cha) values (?,?,?,?,?,?,?,?)";
		executeUpdate(sql, user.getUsername(),user.getAge(),user.getHeight(),user.getEducation(),user.getIncome() , user.getPhone(),user.getPassword(),user.getCha());
	    System.out.println(sql);
	    System.out.println(user.getUsername());
	}

//根据手机号码和密码查询user表
	public List<User> selectByCondition(String phone, String password) throws SQLException {
		List<User> list = new ArrayList<User>();//对象集合
		String sql = "select * from people where phone = ? and password = ?";
		executeQuery(sql, phone, password);
		while (rs.next()) {
			User user = new User();
			user.setId(rs.getInt("id"));
			user.setUsername(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setPhone(rs.getString("phone"));
			// 将对象加入集合
			list.add(user);
		}
		return list;
	}
	
	//根据手机号码查询user表
	public int selectPhone(String phone) throws SQLException {
		int id = 0;
		String sql = "select * from people where phone = ?";
		executeQuery(sql, phone);
		while (rs.next()) {
			id=rs.getInt("id");
			}
	    return id;
	}	
	
	//更新people表中密码
	public void updatePeople(String phone,String newpassword) throws SQLException {
		String sql = "update people set password = ? where phone = ?";
		executeUpdate(sql, newpassword,phone);
	}
	
	//更新people表中身份信息
	public void updatePeopleSname(String phone,String sname,String sidentify) throws SQLException {
		String sql = "update people set sname = ?,sidentify = ? where phone = ?";
		executeUpdate(sql, sname,sidentify,phone);
	}
	
	//更新people表中所有信息
	public void updatePeopleAll(String name,String age,String height,String education,String income,String password,String phone) throws SQLException {
		String sql = "update people set name = ?,set age = ?,set height = ?,set education = ?,set income = ?,set password = ? where phone = ?";
		executeUpdate(sql, name,age,height,education,income,password,phone);
	}
	
//  选择user表中所有信息
	public List<User> selectAll() throws SQLException {
		List<User> list = new ArrayList<User>();
		String sql = "select * from people";
		executeQuery(sql, null);
		while (rs.next()) {
			User user = new User();
			user.setUsername(rs.getString("name"));
			user.setAge(rs.getString("age"));
			user.setPhone(rs.getString("phone"));
			// 将对象加入集合
			list.add(user);
		}
		return list;
	}
	
//  通过年龄选择user表
	public List<User> searchAge(String minage,String maxage) throws SQLException {
		List<User> list = new ArrayList<User>();
		String sql = "select * from people where age >= ? and age <= ?";
		executeQuery(sql,minage,maxage);
		while (rs.next()) {
			User user = new User();
			user.setUsername(rs.getString("name"));
			user.setAge(rs.getString("age"));
			user.setPhone(rs.getString("phone"));
			// 将对象加入集合
			list.add(user);
		}
		return list;
	}
	
//  通过性格选择user表
	public List<User> searchCharacter(String cha) throws SQLException {
		List<User> list = new ArrayList<User>();
		String sql = "select * from people where cha=?";
		executeQuery(sql,cha);
		while (rs.next()) {
			User user = new User();
			user.setUsername(rs.getString("name"));
			user.setAge(rs.getString("age"));
			user.setPhone(rs.getString("phone"));
			// 将对象加入集合
			list.add(user);
		}
		return list;
	}
	
	
//	增加到hi表
	public void addHi(String phoneA,String phoneB) throws SQLException {
		String sql = "insert into hi(phonea,phoneb) values (?,?)";
		executeUpdate(sql,phoneA ,phoneB);
	    System.out.println(sql);
	}
	
//	增加到concern表
	public void addConcern(String phoneA,String phoneB) throws SQLException {
		String sql = "insert into concern(phonea,phoneb) values (?,?)";
		executeUpdate(sql,phoneA ,phoneB);
	    System.out.println(sql);
	}
	
	//根据手机号码查询user表的姓名
	public String selectPhoneForName(String phone) throws SQLException {
		String name=null;
		String sql = "select * from people where phone = ?";
		executeQuery(sql, phone);
		while (rs.next()) {
			name=rs.getString("name");
			}
	    return name;
	}	
	
	//根据姓名查询user表的手机号码
	public String selectNameForPhone(String name) throws SQLException {
		String phone=null;
		String sql = "select * from people where name = ?";
		executeQuery(sql, name);
		while (rs.next()) {
			phone=rs.getString("phone");
			}
	    return phone;
	}	
	
}
