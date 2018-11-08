<%@page import="gxlg.model.Notice"%>
<%@page import="gxlg.service.NoticeService"%>"%>
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
	width: 600px;
	height: 2px;
	margin: 0px 0px 0px 60px;
	background-color: #943200;
}

#suosou{
	float: left;
  	width: 700px;
  	padding: 50px 0px 0px 0px;
  	background-color: blue;
}

#sousuo_biaoti{
	padding-top: 50px;
	padding-left: 70px;
	width: 700px;
	height: 50px;

}
#sousuo_biaoti h3{
	float: left;
	text-align: left;
	font-size: 20px;
	
}
#sousuo_biaoti a:link, #sousuo_biaoti a:visited{
   color: green;
   text-decoration: none;
}
#sousuo_biaoti a:hover{
    color: red;
    text-decoration: underline;
}

#sousuo_list{
	padding: 20px 100px 50px 80px;
	font-size: 15px;
	text-align: left;
	line-height: 30px;
	font-family: 宋体；
	
}

#fengexian{
	width: 650px;
	height: 2px;
	margin: 80px 0px 0px 0px;
	background-color: gray;	
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


.fanhui{
	margin-left: 20px;
	color: #943200;
	width: 60px;
	height: 30px;
}


</style>
</head>
<body>

<%-- <%
//获取数据
NoticeService noticeService = new NoticeService();

String title = request.getParameter("title");		
List<Notice> notices = noticeService.queryNotice(title);
//把公存到域对象里面去
request.setAttribute("notices", notices);
//把表去存到域对象里面去,搜索时可以保留值
request.setAttribute("title", title);

%> --%>

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
						<div id="sousuo">
							<c:forEach items="${notices }" var="notice">
								<div id="sousuo_biaoti">
									<h3><a href="${ pageContext.request.contextPath }/houtai/noticecontent.jsp?noticeId=${notice.noticeId }">${notice.title }</a></h3>
								</div>
								<div id="sousuo_list">
									<p style="text-indent: 2em;">${notice.detail }</p>
									<p style="text-align: right;">
										书城客服中心<br />${notice.postTime }</p>
									<div id="fengexian"></div>
									<div id="anniu">
										<a href="${ pageContext.request.contextPath }/houtai/updatenotice.jsp?noticeId=${notice.noticeId }">
											<button type="submit"  name="update" id="update">修改</button>
										</a>
										<a href="${ pageContext.request.contextPath }/houtai/deletenotice.jsp?noticeId=${notice.noticeId }">
											<button type="submit" value="" name="delete"  id="delete">删除</button>
										</a>	
										<button type="button" class="fanhui" onclick="history.go(-1)">返回</button>
									</div>
								</div>
							</c:forEach>						
						</div>
					</div>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>