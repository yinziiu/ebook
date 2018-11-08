package gxlg.test;
import gxlg.dao.NoticeDao;

public class testdao {


	public static void main(String[] args) {
		// TODO Auto-generated method stub

		NoticeDao noticeDao = new NoticeDao();
		/*int noticeId = 13;
		System.out.println(noticeDao.DeleteNotice(noticeId));*/
		
		String title = "置顶";
		System.out.println(noticeDao.queryNotice(title));
		
		/*String postTime = null;
		String detail = null;
		String title = null;
		String isTop = null;
		System.out.println(noticeDao.updateNotice(title, detail, postTime, isTop));*/
		
		/*NoticeService noticeService = new NoticeService();
		System.out.println(noticeService.getNoticeList());*/
		

	}

}
