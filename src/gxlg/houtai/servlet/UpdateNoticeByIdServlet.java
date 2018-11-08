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
 * Servlet implementation class updatenoticebyidServlet
 */
@WebServlet("/updatenoticebyid")
public class UpdateNoticeByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private NoticeService noticeService = new NoticeService();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoticeByIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/**
		 * 根据noticeId修改公告
		 */
	/*	String noticeId = request.getParameter("noticeId");		
		Notice notices = noticeService.getNoticeById(noticeId);		
		request.setAttribute("notices", notices);		
		if(notice!=null){
			System.out.println(notice.toString());
		}
		
		request.getRequestDispatcher("houtai/updatenotice.jsp").forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
