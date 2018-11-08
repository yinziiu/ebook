<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部</title>
<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/3_files/default_common.css">
<%-- <link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/3_files/pintuer.css"> --%>
<%-- <script type="text/javascript" src="${ pageContext.request.contextPath }/3_files/jquery.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/3_files/blist.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/3_files/pintuer.js"></script> --%>

<style type="text/css">


body{font-size:14px;font-family:"宋体"}

body,ul,li{
list-list_style:none;margin:0;padding:0;}

	#main{
		background-color: #eee;
		padding: 20px 50px;
		color: #333;
	 }
</style>
</head>
<body>
	<!-- 顶部开始 -->
	<div id="main">
		<div id="m_top">
			<div id="hd">
				<div class="logo">
					<a href="#"><img src="./3_files/" alt="电子书城"></a>
				</div>
				<div class="head-warp">
					<div class="head">
						<!-- 创建菜单标签 -->
						<!-- 调用菜单信息 -->
						<div class="nav-box">
							<ul>
								<li class="cur"><a title="首页" target="_self" href="#">首页</a></li>
								<li><a title="分类" target="_self" href="#">分类</a></li>
								<li><a title="书单" target="_self" href="#">书单</a></li>
								<li><a title="专题" target="_self" href="#">专题</a></li>
								<li><a title="排行榜" target="_self" href="#">排行榜</a></li>
								<li><a title="教科书" target="_self" href="#">教科书</a></li>
								<li><a title="动漫" target="_self" href="#">动漫</a></li>
								<li><a title="公告栏" target="_self" href="${ pageContext.request.contextPath }/shownotice">公告栏</a></li>
							</ul>
							<div class="nav-line"
								style="left: 0px; width: 68px; display: block;"></div>
						</div>
						<div class="search">
							<div class="s_main">
								<div class="s_input left">
									<input type="text" id="keyword" name="keyword"
										placeholder="请输入搜索内容">
								</div>
								<div class="s_btn right">
									<input type="button" id="searchBtn" value="" class="s_seek"
										name="s_seek">
								</div>
								<div id="searchSelectDiv" class="search_box left"
									style="display: none;"></div>
							</div>
						</div>
						<div class="ulogin">
							<div class="reg">
								<a href="login.jsp" rel="nofollow" onclick="login();">登录</a> / <a
									href="register.jsp" rel="nofollow" onclick="regist();">注册</a>
							</div>


							<div class="s_buy">
								<span></span><a href="#" rel="nofollow">购物车<label
									id="cartsNum">0</label></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 顶部结束 -->
	</div>
</body>
</html>