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
 * Servlet implementation class NoticeServlet
 */
@WebServlet("/notice")
public class AddNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private NoticeService noticeService = new NoticeService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNoticeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取服务端输入的数据
		String title = request.getParameter("title");
		String detail = request.getParameter("detail");
		String isTop = request.getParameter("isTop");
				
		System.out.println(title);
		System.out.println(detail);
		System.out.println(isTop);
		// 封装数据
		Notice notice = new Notice(title, detail, null, isTop);
		//调用service中的添加方法
		noticeService.addNotice(notice);
		//添加成功就跳到后台的list列表页面		
		request.getRequestDispatcher("houtai/noticelist.jsp").forward(request, response);
	}
}
