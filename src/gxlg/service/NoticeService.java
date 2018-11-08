package gxlg.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import gxlg.dao.NoticeDao;
import gxlg.model.Notice;

public class NoticeService {

	public NoticeDao noticeDao = new NoticeDao();
	
	/**
	 * 添加公告
	 * 作者：冯秀茵
	 * @param notice
	 */
	public void addNotice(Notice notice){
		//封装属性postTime
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
		String time = sdf.format(new Date());
		notice.setPostTime(time);
		
		//调用数据库访问类进行添加公告
		noticeDao.addNotice(notice);
	}
	
	/**
	 * 显示公告内容
	 * 作者：冯秀茵
	 */
	public List<Notice> getNoticeList() {
		//直接调用数据库
		return noticeDao.getNoticeList();
	}
	
	/**
	 * 显示最新信息的条数据
	 * 作者：冯秀茵
	 * @return
	 */
	public List<Notice> getNewNoticeList() {
		//直接调用数据库
		return noticeDao.getNewNoticeList();
	}
	
	
	
	/**
	 *根据noticeId读取公告内容
	 * 作者：冯秀茵
	 */
	public  Notice getNoticeById(String noticeId) {
		//直接调用数据库
		return noticeDao.getNoticeById(noticeId);
	}
	
	
	/**
	 * 根据title查询符合条件的公告列表
	 * 作者：冯秀茵
	 * @param title
	 * @return
	 */	
	public List<Notice> queryNotice(String title) {
		//直接调用数据库查询
		return noticeDao.queryNotice(title);
	}
	
	
	/**
	 * 修改公告
	 * 作者：冯秀茵
	 */
	public int updateNotice(int noticeId,String title,String detail,String postTime,String isTop) {
		//封装属性postTime
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		postTime = sdf.format(new Date());	
		System.out.println(postTime);
		
	    return noticeDao.updateNotice(noticeId,title,detail,postTime,isTop);
	}
	
	/**
	 * 删除公告
	 * 作者：冯秀茵
	 */
	public int DeleteNotice(int noticeId) {
	    return noticeDao.DeleteNotice(noticeId);
	}
}
