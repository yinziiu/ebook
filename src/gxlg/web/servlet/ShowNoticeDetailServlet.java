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
 * Servlet implementation class ShowNoticeDetailSetvlet
 */
@WebServlet("/shownoticedetail")
public class ShowNoticeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private NoticeService noticeService = new NoticeService();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowNoticeDetailServlet() {
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
		
		//获取外部传来的id
		String noticeId = request.getParameter("noticeId");		
		//根据id调用service层的方法，查询数据库中対应的数据进行显示
		Notice notice = noticeService.getNoticeById(noticeId);		
		request.setAttribute("notice", notice);		
		/*if(notice!=null){
			System.out.println(notice.toString());
		}*/
		
		request.getRequestDispatcher("/notice_detail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
