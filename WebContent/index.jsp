<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电子图书</title>
<style type="text/css">
body{font-size:14px;font-family:"宋体"}
body,ul,li{
list-list_style:none;margin:0;padding:0;}

.i_center{
width: 700px;
float:left;
}

/* .tab_head{height:31px;}
.tab_head_div{
	width:95px;
	height:30px;
	float:right;
	border_bottom:1px solid #ccc;
	border_right:1px solid #ccc;
	background:#eee;
	line_height:30px;
	text_align:center;
	cursor:pointer;
}
.tab_head .current{
	background:#fff;
	border_bottom:1px solid #fff;
}
.tab_hed_r{boder_right:0;}

.tab_body_ul{
	
	display:none;
	margin:20px 10px;}

.tab_body .current{display:block;}  */

</style>
<script src="./3_files/common-min.js" type="text/javascript"></script>
<script src="./3_files/default_common.js" type="text/javascript"></script>
<link href="./3_files/default_common.css" rel="stylesheet"
	type="text/css">
<script src="./3_files/blist.js" type="text/javascript"></script>

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





	<div id="i_bd1">
		<div id="main_con">

			<div class="i_left">
				<div class="bk_list_main clearfix bxx1">
					<div class="bk_left">
						<div id="nav">

							<div class="category-content" id="guide_2">
								<div>
									<span class="all-goods">图书分类</span>
								</div>
								<div class="category">
									<ul class="category-list" id="js_climit_li">						
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">时尚生活</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  		
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">教育辅导</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  			
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">人物传记</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  		
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">经济管理</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  		
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">励志成长</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  			
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
										<li class="appliance js_toggle relative">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">文学艺术</a>
												</h2>
												<em>&gt;</em>
											</div>

											<div class="menu-item menu-in top"
												style="display: none; top: -48px;">
												<dl class="m1_ul">
													<dd>
														<a href="#">1</a>
													</dd>
													<dd>
														<a href="#">2</a>
													</dd>

												</dl>
											</div>
										</li>
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">人文社科</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  			
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">原创文学</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
										<li class="appliance js_toggle relative ">
											<div class="category-info list-nz">
												<h2 class="category-name b-category-name">
													<a id="" href="#" class="ml-22">杂志周刊</a>
												</h2>
												<em>&gt;</em>
											</div> <textarea class="menu-item-wrap none">						  		&lt;div class="menu-item menu-in top"&gt;
						  			&lt;dl class="m1_ul"&gt;
						  			&lt;dd&gt;&lt;a href="#" &gt;1&lt;/a&gt;&lt;/dd&gt;
						  		
						  			&lt;dd&gt;&lt;a href="#" &gt;2&lt;/a&gt;&lt;/dd&gt;
						  			&lt;/dl&gt;
						  		&lt;/div&gt;
							</textarea>
										</li>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>


			<!-- <div class="i_center">
				<div class="tab_head" id="tab_head">
					<div class="tab_head_div current">图0</div>
					<div class="tab_head_div">图1</div>
					<div class="tab_head_div">图2</div>					
					<div class="tab_head_div tab_head_r">图3</div>
				</div>
				<div class="tab_body" id="tab_body">
					<ul class="tab_body_ul current">
						<a href="#" target="_blank" class="cover" title="图1"><img
							src="./3_files/1.jpg" height="110" alt="電子圖書" width="110"></a>
					</ul>
					
				</div>

			</div>
 -->


<div class="i_center" >

			
					<div class="hb_h clearfix">
						<h2>
							<p>最新上架</p>

						</h2>
					</div>
					<div class="nb_list">
						<ul>
							<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
							<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
							<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
								<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
							<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
							<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
							<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
								<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
								<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
							
							<li class="j-bookitm">
								<div class="book">
									<a href="#" target="_blank" class="cover" title="電子圖書"><img
										src="./3_files/1.jpg" height="156" alt="電子圖書" width="110"></a>
									<a href="#" target="_blank" class="title">電子圖書</a>
								</div>
								<div class="info">
									<p class="u-author">
										<span>黃宗儉</span>
									</p>
									<div class="u-price">￥14.00</div>
								</div>
							</li>
							
						</ul>
				</div>
		

</div>
			<!-- 首页排行榜标签  -->
			<div class="i_right">
				<h2 class="mg3">排行榜</h2>
				<div class="phb slideTxtBox2">
					<div class="phb_tab hd">
						<ul class="clearfix" id="phbTabs">
							<li class="on" url="#">畅销榜</li>

						</ul>
					</div>
					<div class="clear"></div>
					<div class="phb_list bd">
						<div class="phb_con1" id="phbCont1" style="display: block;">
							<ul>
								<li class="itm clearfix"><em>01</em>
									<p class="u_t">
										<a href="#" target="_blank">纳兰词全集</a> <span class="u_a">纳兰性德</span>
									</p> <a href="#" rel="nofollow" target="_blank"><span
										class="u_price" onmousemove="$(this).html(&#39;去购买&#39;)"
										;="" onmouseout="$(this).html(&#39;&lt;p&gt;免费&lt;/p&gt;&#39;)"><p>免费</p></span></a>
								</li>
								<li class="itm clearfix"><em>02</em>
									<p class="u_t">
										<a href="#" target="_blank">纳兰词全集</a> <span class="u_a">纳兰性德</span>
									</p> <a href="#" rel="nofollow" target="_blank"><span
										class="u_price" onmousemove="$(this).html(&#39;去购买&#39;)"
										;="" onmouseout="$(this).html(&#39;&lt;p&gt;免费&lt;/p&gt;&#39;)"><p>免费</p></span></a>
								</li>
								<li class="itm clearfix"><em>03</em>
									<p class="u_t">
										<a href="#" target="_blank">纳兰词全集</a> <span class="u_a">纳兰性德</span>
									</p> <a href="#" rel="nofollow" target="_blank"><span
										class="u_price" onmousemove="$(this).html(&#39;去购买&#39;)"
										;="" onmouseout="$(this).html(&#39;&lt;p&gt;免费&lt;/p&gt;&#39;)"><p>免费</p></span></a>
								</li>
								<li class="itm clearfix"><em>04</em>
									<p class="u_t">
										<a href="#" target="_blank">纳兰词全集</a> <span class="u_a">纳兰性德</span>
									</p> <a href="#" rel="nofollow" target="_blank"><span
										class="u_price" onmousemove="$(this).html(&#39;去购买&#39;)"
										;="" onmouseout="$(this).html(&#39;&lt;p&gt;免费&lt;/p&gt;&#39;)"><p>免费</p></span></a>
								</li>
								<li class="itm clearfix"><em>05</em>
									<p class="u_t">
										<a href="#" target="_blank">纳兰词全集</a> <span class="u_a">纳兰性德</span>
									</p> <a href="#" rel="nofollow" target="_blank"><span
										class="u_price" onmousemove="$(this).html(&#39;去购买&#39;)"
										;="" onmouseout="$(this).html(&#39;&lt;p&gt;免费&lt;/p&gt;&#39;)"><p>免费</p></span></a>
								</li>
								<li class="itm clearfix"><em>06</em>
									<p class="u_t">
										<a href="#" target="_blank">纳兰词全集</a> <span class="u_a">纳兰性德</span>
									</p> <a href="#" rel="nofollow" target="_blank"><span
										class="u_price" onmousemove="$(this).html(&#39;去购买&#39;)"
										;="" onmouseout="$(this).html(&#39;&lt;p&gt;免费&lt;/p&gt;&#39;)"><p>免费</p></span></a>
								</li>
								<li class="itm clearfix"><em>07</em>
									<p class="u_t">
										<a href="#" target="_blank">纳兰词全集</a> <span class="u_a">纳兰性德</span>
									</p> <a href="#" rel="nofollow" target="_blank"><span
										class="u_price" onmousemove="$(this).html(&#39;去购买&#39;)"
										;="" onmouseout="$(this).html(&#39;&lt;p&gt;免费&lt;/p&gt;&#39;)"><p>免费</p></span></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="i_more" id="phbMore">
						<a href="#">查看完整榜单<span class="arr">&gt;&gt;</span></a>
					</div>
				</div>
			</div> 
			
			
		</div>
	</div>
	
	
			




</body>
</html>