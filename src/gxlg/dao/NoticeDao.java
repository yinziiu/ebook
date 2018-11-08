package gxlg.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import gxlg.model.Notice;
import gxlg.util.CommonDAO;
import gxlg.util.JDBCUtils;

/**
 * 数据库处理类
 * @author ASUS
 *
 */
public class NoticeDao {

	/**
	 * 添加公告
	 * 作者：冯秀茵
	 * @param notice
	 * @return 
	 */
	public int addNotice(Notice notice) {
		Connection connection = null;
		try {
			String sql = "insert into notice(title,detail,postTime,isTop)"
					+"values(?,?,?,?);";
			connection = JDBCUtils.getConnection();
			return CommonDAO.executeUpdate(sql,notice.getTitle(),notice.getDetail(),
					notice.getPostTime(),notice.getIsTop());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			JDBCUtils.release(connection, null, null);
		}
	}
	
	/**
	 * 显示公告内容
	 * 作者：冯秀茵
	 * 
	 */
	public List<Notice> getNoticeList() {
		try {
			String sql = "SELECT * FROM notice ORDER BY isTop DESC,postTime DESC;";
			return CommonDAO.executeQuery(sql, new BeanListHandler<Notice>(Notice.class));
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 显示最新信息的条数据
	 * 作者：冯秀茵
	 * @return
	 */
	public List<Notice> getNewNoticeList() {
		try {
			String sql = "select * from notice order by postTime desc limit 0,5;";
			return CommonDAO.executeQuery(sql, new BeanListHandler<Notice>(Notice.class));
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 根据noticeId读取公告内容
	 * 作者：冯秀茵
	 */
	public Notice getNoticeById(String noticeId) {
		Connection connection = null;
		try {
			String sql = "SELECT noticeId,title,detail,postTime,isTop FROM ebook.notice WHERE noticeId=?;";
			connection = JDBCUtils.getConnection();
			return CommonDAO.uniqueResult(sql, new BeanHandler<Notice>(Notice.class), noticeId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			JDBCUtils.release(connection, null, null);
		}
	}
	
	/**
	 * 根据公告标题查询公告
	 * 作者：冯秀茵
	 * @param notice
	 * @return 
	 */
	public List<Notice> queryNotice(String title) {
		Connection connection = null;
		try {
			String sql = "select * from notice";
			connection = JDBCUtils.getConnection();
			if (title != null && !" ".equals(title)) {
				sql+=" where title like ? order by isTop desc,postTime desc;";
				return CommonDAO.executeQuery(sql, new BeanListHandler<Notice>(Notice.class),"%"+title.trim()+"%");
			}else {
				sql+=" order by isTop desc,postTime desc;";
				return CommonDAO.executeQuery(sql, new BeanListHandler<Notice>(Notice.class));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
			
		}finally{
			JDBCUtils.release(connection, null, null);
		}
	}

	/**
	 * 修改公告
	 * 作者：冯秀茵
	 * @param notice
	 * @return 
	 */
	public int updateNotice(int noticeId,String title,String detail,String postTime,String isTop) {
		Connection connection = null;
		try {
			String sql = "update ebook.notice SET title = ?, detail = ?, postTime = ?, isTop = ?"
					+ "WHERE noticeId = ?;";
			connection = JDBCUtils.getConnection();
			return CommonDAO.executeUpdate(sql,title,detail,postTime,isTop,noticeId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);		
		}finally{
			JDBCUtils.release(connection, null, null);
		}
	}
	
	/**
	 * 删除公告
	 * 作者：冯秀茵
	 * @param notice
	 * @return 
	 */
	public int DeleteNotice(int noticeId) {
		Connection connection = null;
		try {
			String sql = "DELETE FROM ebook.notice  WHERE noticeId = ? ;";
			connection = JDBCUtils.getConnection();
			return CommonDAO.executeUpdate(sql,noticeId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);		
		}finally{
			JDBCUtils.release(connection, null, null);
		}
	}

}
