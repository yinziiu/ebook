<%@page import="gxlg.model.Notice"%>
<%@page import="gxlg.service.NoticeService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/houtai/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/houtai/css/main.css"/>
<script type="text/javascript" src="${ pageContext.request.contextPath }/houtai/js/libs/modernizr.min.js"></script>
<style type="text/css">

#content {
	width: 800px;
	height: 500px; 
	text-align: center;
}

#biaoti{
	width: 800px;
	height: 50px;
}
#biaoti h3{
	float: left;
	text-align: left;
	padding-top: 10px;
	padding-left: 60px;
	font-size: 25px;
}

#title{
	width: 300px;
	height: 25px;
	margin-top: 16px;
}
#tijiao{
	width: 50px;
	height: 30px;
	margin-top: 15px;
	color: #943200;
}

#biaoti p a:link, #biaoti p a:visited{
   color: #000000;
   text-decoration: none;
}

#fengexian1{
	width: 620px;
	height: 2px;
	margin: 0px 0px 0px 60px;
	background-color: #943200;
}

 #notice{
	width: 700px;
}
#notice ul{
    list-style-type: none;
    padding: 20px 10px 10px 60px;
}
#notice ul li{
	background: url(images/icon1.gif) no-repeat 5px 30px;
	padding : 20px 10px 5px 20px;
    color: black;
    font-size: 16px;
    text-align:left;
    border-bottom: 1px dashed #888888;
}

#notice ul li a:link, #notice ul li a:visited{
   color: black;
   text-decoration: none;
}
#notice ul li a:hover{
    color: red;
    text-decoration: underline;
} 

#anniu{
	text-align: right;
}

#update{
	margin-top:10px;
	color: #943200;
	width: 60px;
	height: 30px;
}

#delete{
	
	margin-left: 20px;
	color: #943200;
	width: 60px;
	height: 30px;
}

.settitle{
	float: left;
}

#notice .set-to-top {
  border: 1px solid #FA8932;
  font-size: 15px;
  min-width: 14px;
  height: 23px;
  margin-right:5px;
  margin-top:10px;
  padding: 0 2px;
  color: #FA8932;
  display:none;
  text-align: center;
}

#notice .ding .set-to-top {
  display: inline-block;
  font-style: normal;
}

#notice .ding .settitle a {
  color: #fa8932;
}
</style>
</head>
<body>

<%
//获取数据
NoticeService noticeService = new NoticeService();

List<Notice> noticeList = noticeService.getNoticeList();

request.setAttribute("noticeList", noticeList);

%>

<%@ include file="page/header.jsp" %>
<div class="container clearfix">
    <%@include file="page/left.jsp" %>
    <!--公告列表-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${ pageContext.request.contextPath }/houtai/index.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="${ pageContext.request.contextPath }/houtai/design.jsp">作品管理</a><span class="crumb-step">&gt;</span><span>新增作品</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                    <div id="content">
						<div id="biaoti">
							<h3>公告列表</h3>	
							<form action="${ pageContext.request.contextPath }/noticefind" method="post">
								<input type="text" class="txt l" id="title" name="title" placeholder="请输入关键字" /> 
								<input type="submit" id="tijiao" value="搜索"/>
							</form>
						</div>
						<div id="fengexian1"></div>
						<div id="notice">
							<ul>
								<c:forEach items="${noticeList }" var="notice">
									<li class = "istop <c:if test="${notice.isTop==1 }">ding</c:if>">
										<div class="settitle">
											<i class="set-to-top">顶</i><a href="${ pageContext.request.contextPath }/houtai/noticecontent.jsp?noticeId=${notice.noticeId }">${notice.title }</a>
										</div>	
										<div id="anniu">
											<a href="${ pageContext.request.contextPath }/houtai/updatenotice.jsp?noticeId=${notice.noticeId }">
												<button type="submit"  name="update" id="update">修改</button>
											</a>
											<a href="${ pageContext.request.contextPath }/houtai/deletenotice.jsp?noticeId=${notice.noticeId }">
												<button type="submit" value="" name="delete"  id="delete">删除</button>
											</a>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>