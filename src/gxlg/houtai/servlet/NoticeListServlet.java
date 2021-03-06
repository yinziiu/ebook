package gxlg.houtai.servlet;

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
 * Servlet implementation class noticelistServlet
 */
@WebServlet("/noticelist")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private NoticeService noticeService =  new NoticeService();      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/**
		 * 获取公告列表，显示所有公告
		 */
		// 去业务逻辑类NoticeService显示公告列表
		List<Notice> noticeList = noticeService.getNoticeList();
		// 把公告列表显示在notice.jsp页面，所以要将notices存储到域对象里面去
		request.setAttribute("noticeList", noticeList);

		/*if (noticeList != null) {
			for (Notice ss : noticeList) {
				System.out.println(ss.toString());
			}
		}*/
		
		
		request.getRequestDispatcher("houtai/noticelist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
