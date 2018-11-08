package gxlg.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;


public class JDBCUtils {
	
	//DataSource接口，负责与数据库建立连接，并定义了返回值为Connection对象的方法
	
	//初始化c3p0数据源
	private static DataSource ds=null;
	
	static{
		try {
			//DataSource中的类，c3p0的核心类，提供数据源对象的相关方法
			//使用C3p0配置文件中的数据源
			ComboPooledDataSource cpds=new ComboPooledDataSource();
			//把获取到的数据源赋值给ds
			ds=cpds;
            
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}
	
	public static DataSource getDataSource() {
		return ds;
	}
	
	//关闭数据
	public static void release(Connection conn,Statement stmt,ResultSet set){
		if(set!=null){
			try {
				set.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(stmt!=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	/*public static String isTop(String isTop) {
		if (isTop=="0") {
			
		}
		return null;
		
	}*/
}
