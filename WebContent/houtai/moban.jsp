<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/houtai/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/houtai/css/main.css"/>
    <script type="text/javascript" src="${ pageContext.request.contextPath }/houtai/js/libs/modernizr.min.js"></script>
</head>
<body>
<%@ include file="page/header.jsp" %>
<div class="container clearfix">
    <%@include file="page/left.jsp" %>
    <!--/添加公告r-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${ pageContext.request.contextPath }/houtai/index.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="${ pageContext.request.contextPath }/houtai/design.jsp">作品管理</a><span class="crumb-step">&gt;</span><span>新增作品</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="/jscss/admin/design/add" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>标题：</th>
                                <td>
                                    <input class="common-text required" id="title" name="title" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>内容：</th>
                                <td><textarea name="content" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10"></textarea></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>置顶：</th>
                                <td><input type="radio" value="1" name="isTop"/>是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 						<input type="radio" value="0" name="isTop"/>否</td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>