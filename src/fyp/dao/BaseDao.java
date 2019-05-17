package fyp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 封装的增删改方法
 * @author idong
 *
 */
public class BaseDao {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/xiangshou";
	private static final String USER = "root";
	private static final String PWD = "123456";
	
	protected ResultSet rs;
	
	/*
	 * 因为静态代码块会在类加载的时候自动执行一次
	 * jdbc驱动只需要创建一次，所以可以将加载驱动的步骤放在
	 * 静态代码块中执行
	 */
	static{
		try {
			Class.forName(DRIVER);
			System.out.println("加载驱动成功");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 封装的增删改方法
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	public void executeUpdate(String sql,Object...params) throws SQLException{
		Connection conn = DriverManager.getConnection(URL,USER,PWD);
		PreparedStatement pstmt = conn.prepareStatement(sql); 
		for(int i = 0; i<params.length;i++){
			pstmt.setObject((i+1), params[i]);
		}
		int i=pstmt.executeUpdate();
	}
	
	public void executeQuery(String sql,Object...params) throws SQLException{
		Connection conn = DriverManager.getConnection(URL,USER,PWD);
		PreparedStatement pstmt = conn.prepareStatement(sql);
		if(null != params){
			for(int i = 0; i<params.length;i++){
				pstmt.setObject((i+1), params[i]);
			}
		}
		rs = pstmt.executeQuery();
	}

}
