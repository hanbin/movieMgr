<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="h-ui/lib/html5.js"></script>
<script type="text/javascript" src="h-ui/lib/respond.min.js"></script>
<script type="text/javascript" src="h-ui/lib/PIE_IE678.js"></script>
<![endif]-->
<link href="h-ui/static/h-ui/css/H-ui.min.css" rel="stylesheet"
	type="text/css" />
<link href="h-ui/static/h-ui/css/style.css" rel="stylesheet" type="text/css" />
<link href="h-ui/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="h-ui/lib/bootstrapSwitch/bootstrapSwitch.css" rel="stylesheet"
	type="text/css" />
<link href="h-ui/lib/font-awesome/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 7]>
<link href="h-ui/lib/font-awesome/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<link href="h-ui/lib/iconfont/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="h-ui/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>影片管理——查询页</title>
</head>
<body>
	<h1 class="text-c mt-30">影片搜索</h1>
	<form method="post" id="queryForm" action="/MovieMgr/toQuery">
		<div class="text-c">
			<input type="text" name="queryCondition" placeholder="输入查询条件" class="input-text radius size-XL mt-50" style="width:50%">
			<input class="btn btn-primary radius size-XL mt-50" type="submit" value="查询">
		</div>
		<div class="text-c c-333 mt-50">可以输入<span class="pipe">[</span><span class="c-primary">影片名称</span><span class="pipe">|</span><span class="c-primary">演员名字</span><span class="pipe">|</span><span class="c-primary">影片描述</span><span class="pipe">]</span>来进行搜索</div>
	</form>
</body>
</html>