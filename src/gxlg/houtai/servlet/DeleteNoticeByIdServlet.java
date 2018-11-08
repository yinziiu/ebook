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
 * Servlet implementation class DeleteNoticeByIdServlet
 */
@WebServlet("/deletenoticebyid")
public class DeleteNoticeByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private NoticeService noticeService = new NoticeService();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteNoticeByIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 根据noticeId删除公告
		 */
		/*String noticeId = request.getParameter("noticeId");		
		Notice notice = noticeService.getNoticeById(noticeId);		
		request.setAttribute("notice", notice);		
		if(notice!=null){
			System.out.println(notice.toString());
		}
		
		request.getRequestDispatcher("houtai/deletenotice.jsp").forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
