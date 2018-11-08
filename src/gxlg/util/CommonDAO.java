package gxlg.util;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import gxlg.model.Notice;

public class CommonDAO {
	
	//QueryRunnerDBUtil工具中的核心类。简化了执行SQL语言的代码。
	
	//该方法用来执行插入、更新或者删除操作，它不需要置换参数
	public static int executeUpdate(String sql) throws SQLException {
		QueryRunner runner=new QueryRunner(JDBCUtils.getDataSource());
		return runner.update(sql);
	}
	
	//该方法用来执行插入、更新或者删除操作，参数params表示SQL语句中的置换参数
	public static int executeUpdate(String sql,Object... params) throws SQLException {
		QueryRunner runner=new QueryRunner(JDBCUtils.getDataSource());
		return runner.update(sql,params);
	}
	
	//通过 sql 语句，查找并返回<T>类型的list容器
	public static <T> List<T> executeQuery(String sql,BeanListHandler<T> rsh) throws SQLException {
		QueryRunner runner=new QueryRunner(JDBCUtils.getDataSource());
		return runner.query(sql, rsh);		
	}
	
	//通过 sql 语句和 params参数，查找并返回<T>类型的list容器
	public static <T> List<T> executeQuery(String sql,BeanListHandler<T> rsh,Object... params) throws SQLException {
		QueryRunner runner=new QueryRunner(JDBCUtils.getDataSource());
		return runner.query(sql, rsh,params);		
	}
	
	//通过 sql 语句，返回<T>类型
	public static <T> T uniqueResult(String sql,BeanHandler<T> rsh) throws SQLException{
		QueryRunner runner=new QueryRunner(JDBCUtils.getDataSource());
		return runner.query(sql, rsh);
	}
	
	//通过 sql 语句和 params参数，返回<T>类型
	public static <T> T uniqueResult(String sql,BeanHandler<T> rsh,Object...params) throws SQLException{
		QueryRunner runner=new QueryRunner(JDBCUtils.getDataSource());
		return runner.query(sql, rsh,params);
	}
	
	//返回查询数据库数据的总数
	public static long count(String sql) throws SQLException{
		QueryRunner runner=new QueryRunner(JDBCUtils.getDataSource());
		return runner.query(sql, new ScalarHandler<java.lang.Long>(1));
	}
}
