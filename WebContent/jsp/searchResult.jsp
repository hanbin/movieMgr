<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.itcaicai.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta http-equiv="pragma" content="no-cache">
    	<meta http-equiv="cache-control" content="no-cache">
        <meta charset="utf-8">
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"
              content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <!--[if lt IE 9]>
        <script type="text/javascript" src="h-ui/lib/html5.js"></script>
        <script type="text/javascript" src="h-ui/lib/respond.min.js"></script>
        <script type="text/javascript" src="h-ui/lib/PIE_IE678.js"></script>
        <![endif]-->
        <link href="h-ui/static/h-ui/css/H-ui.min.css" rel="stylesheet"
              type="text/css" />
        <link href="h-ui/static/h-ui/css/style.css" rel="stylesheet"
              type="text/css" />
        <link href="h-ui/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
        <link href="h-ui/lib/bootstrapSwitch/bootstrapSwitch.css"
              rel="stylesheet" type="text/css" />
        <link href="h-ui/lib/font-awesome/font-awesome.min.css" rel="stylesheet"
              type="text/css" />
        <!--[if IE 7]>
        <link href="h-ui/lib/font-awesome/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
        <![endif]-->
        <link href="h-ui/lib/iconfont/iconfont.css" rel="stylesheet"
              type="text/css" />
        <!--[if IE 6]>
        <script type="text/javascript" src="h-ui/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
        <script>DD_belatedPNG.fix('*');</script>
        <![endif]-->
        <title>影片管理——搜索结果</title>
        <style type="text/css">
            #content {
                overflow:auto;
                overflow-x: hidden;
                max-height: 450px;
            }
        </style>
    </head>
    <%
        List<MovieInfo> movieInfos = (List<MovieInfo>) request.getAttribute("movieInfo");
    %>
    <body>
        <h1 class="text-c mt-30">影片搜索结果</h1>
        <div class="text-r">
        	<a class="btn btn-link" href="/MovieMgr/toAdd">添加新影片</a>
        </div>
        <div id="content">
        <table class="table table-border table-hover mt-50" width="60%">
            <thead>
                <tr>
                    <th width="10%">电影编号</th>
                    <th width="20%">电影名称</th>
                    <th width="20%">电影主演</th>
                    <th width="30%">电影描述</th>
                    <th width="10%">查看路径</th>
                    <th width="10%">操作</th>
                </tr>
            </thead>
            <tbody>
                <% for (MovieInfo movieInfo : movieInfos) {%>
                <tr>
                    <th><%=movieInfo.getStr("movieid")%></th>
                    <td><%=movieInfo.getStr("name")%></td>
                    <td><%=movieInfo.getStr("actor")%></td>
                    <td><%=movieInfo.getStr("description")%></td>
                    <td><a type="file" href="<%=movieInfo.getStr("path")%>"><%=movieInfo.getStr("path")%></a></td>
                    <td>
                        <a href="/MovieMgr/toSearchDetail?id=<%=movieInfo.getInt("id")%>">编辑</a>
                        <a href="/MovieMgr/toDelete?id=<%=movieInfo.getInt("id")%>">删除</a>
                    </td>
                </tr>
                <%
                    }
                    if (movieInfos.isEmpty()) {
                %>
                <tr>
                    <td colspan="6" class="text-c c-error">没有记录</td>
                </tr>
                <%}%>
            </tbody>
        </table>
        </div>
        <div class="text-c mt-50">
            <a href="/MovieMgr/"> 
                <input class="btn btn-default round" type="button" value="重新搜索"></a>
        </div>
    </body>
</html>