<%@page import="gxlg.model.Notice"%>
<%@page import="gxlg.service.NoticeService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告</title>
<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/css/notice_list.css">
</head>
<style type="text/css">

#content {
	margin: 0px auto; /*容器水平居中*/
	width: 900px;
	text-align: center;
	margin-top: 60px;
}

#notice ul li {
	background: url(images/icon1.gif) no-repeat 0px 28px;
}

#newnotice ul li {
	background: url(images/icon2.gif) no-repeat 0px 18px;
}

#notice .set-to-top {
  border: 1px solid #FA8932;
  font-size: 15px;
  min-width: 14px;
  height: 25px;
  margin: 10px 6px 0 0;
  padding: 0 2px;
  color: #FA8932;
  display: none;
  text-align: center;
}

#notice .ding .set-to-top {
  display: inline;
  font-style: normal;
}

#notice .ding .title a {
  color: #fa8932;
}


</style>


  
<body>
	
	<%-- <% 
		//获取数据
		NoticeService noticeService = new NoticeService();
		
		List<Notice> noticeList = noticeService.getNoticeList();
		request.setAttribute("noticeList", noticeList);
	
		List<Notice> newnotice = noticeService.getNewNoticeList();
		request.setAttribute("newnotice", newnotice);
	
	%> --%>

	<%@ include file="/WEB-INF/pages/header.jsp"%>
		<div id="content">
			<div id="left">
				<div id="gonggao">
					<h3>公告</h3>
					<p>
						当前位置：<a href="${ pageContext.request.contextPath }/index.jsp">首页</a>>><a href="${ pageContext.request.contextPath }/shownotice">公告栏</a>
					</p>
				</div>
				<div id="fengexian1"></div>
				
				<div id="notice">
					<ul>
						<c:forEach items="${noticeList }" var="notice">
							<li class="clearfix <c:if test="${notice.isTop==1 }">ding</c:if>">
								<div class="title">
									<i class="set-to-top">顶</i><a href="shownoticedetail?noticeId=${notice.noticeId }">${notice.title }</a>
									<span>
										${notice.postTime }
									</span>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div id="right">
				<div id="newnotice">
					<h3>最新公告</h3>
					<ul>
						<c:forEach items="${newnotice }" var="notice">
							<li><a href="${ pageContext.request.contextPath }/shownoticedetail?noticeId=${notice.noticeId }">${notice.title }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div id="sousuo">
					<h3>公告搜索</h3>
					<div id="select">
						<form action="${ pageContext.request.contextPath }/notice_find" method="post">
							<input type="text" class="txt l" name="title" placeholder="请输入关键字" value="${title }"> 
							<input type="submit" name="sousuo" id="submit" value="搜索" />
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>