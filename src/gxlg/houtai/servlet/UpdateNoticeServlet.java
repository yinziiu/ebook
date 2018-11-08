package gxlg.houtai.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gxlg.model.Notice;
import gxlg.service.NoticeService;

/**
 * Servlet implementation class UpdateNoticeServlet
 */
@WebServlet("/updatenotice")
public class UpdateNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private NoticeService noticeService = new NoticeService();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/**
		 * 修改公告
		 */
		//获取数据
		String noticeId = request.getParameter("noticeId");
		System.out.println(noticeId);
		String title = request.getParameter("title");
		String detail = request.getParameter("detail");
		String isTop = request.getParameter("isTop");


		System.out.println(title);
		System.out.println(detail);
		
		int notice = noticeService.updateNotice(Integer.parseInt(noticeId),title,detail,null,isTop);
		System.out.println(notice);
		
		request.getRequestDispatcher("/houtai/noticelist.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
