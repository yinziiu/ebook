package gxlg.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gxlg.model.Notice;
import gxlg.service.NoticeService;

/**
 * Servlet implementation class Notice_findSetvlet
 */
@WebServlet("/notice_find")
public class Notice_FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private NoticeService noticeService = new NoticeService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Notice_FindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/**
		 * 显示最新信息的条数据
		 */
		List<Notice> newnotice = noticeService.getNewNoticeList();
		request.setAttribute("newnotice", newnotice);
			
		/**
		 * 根据公告标题查询符合的公告
		 */
		//获取输入的公告标题
		String title = request.getParameter("title");		
		//调用方法，查询数据库中対应的数据
		List<Notice> notices = noticeService.queryNotice(title);
		//把数据存到域对象里面去
		request.setAttribute("notices", notices);
		//把标题存到域对象里面去,搜索时可以保留值
		request.setAttribute("title", title);
		
		request.getRequestDispatcher("/notice_find.jsp").forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
