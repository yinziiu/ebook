<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>按标题搜索公告</title>
<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/css/notice_find.css">
</head>
<style type="text/css">

#content_sousuo {
	margin: 0px auto; /*容器水平居中*/
	width: 900px;
	text-align: center;
	margin-top: 90px;
}

#newnotice ul li {
	background: url(images/icon2.gif) no-repeat 0px 18px;
}
</style>
<body>
	<%@ include file="/WEB-INF/pages/header.jsp"%>
	<div id="content_sousuo">
	<div id="gonggao">
				<h3>公告</h3>
				<p>
					当前位置：<a href="${ pageContext.request.contextPath }/index.jsp">首页</a>>><a href="${ pageContext.request.contextPath }/shownotice">公告栏</a>>><a href="${ pageContext.request.contextPath }/shownoticedetail?noticeId=${notice.noticeId }">正文</a>
				</p>
			</div>
			<div id="fengexian1"></div>
		<div id="left_suosou">
			<c:forEach items="${notices }" var="notice">
				<div id="sousuo_biaoti">
					<h3><a href="${ pageContext.request.contextPath }/shownoticedetail?noticeId=${notice.noticeId }">${notice.title }</a></h3>
				</div>
				<div id="sousuo_list">
					<p style="text-indent: 2em;">${notice.detail }</p>
					<p style="text-align: right;">
						书城客服中心<br />${notice.postTime }</p>
					<div id="fengexian"></div>
				</div>
			</c:forEach>
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
				<div  id="select">
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