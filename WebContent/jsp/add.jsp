<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<title>影片管理——添加新片</title>
<script type="text/javascript">
	function back(){
		window.history.back(-1);
	}
</script>
</head>
<body>
	<h1 class="text-c mt-30">影片添加页面</h1>
	<form id="" action="/MovieMgr/toAddSubmit" method="post"
		class="form form-horizontal responsive">
		<table class="table table-border table-bordered table-striped mt-50">
			<thead>
				<tr>
					<!-- 					<td colspan="2" class="text-c va-m"><h3>修改影片信息</h3></td> -->
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="text-r">影片编号</td>
					<td><input type="text" name="movieid"
						class="input-text radius size-M"></td>
				</tr>
				<tr>
					<td class="text-r">影片名称</td>
					<td><input type="text" name="name"
						class="input-text radius size-M"></td>
				</tr>
				<tr>
					<td class="text-r">影片主演</td>
					<td><input type="text" name="actor"
						class="input-text radius size-M"></td>
				</tr>
				<tr>
					<td class="text-r">影片路径</td>
					<td><input type="text" name="path"
						class="input-text radius size-M"></td>
				</tr>
				<tr>
					<td class="text-r">影片描述</td>
					<td><textarea name="description" class="textarea"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="mt-50" align="center">
			<input class="btn btn-default radius size-L" type="button" onclick="back();" value="取消添加"> 
			<span class="pipe">|</span>
			<input class="btn btn-primary radius size-L" type="submit" value="确认提交">
		</div>
	</form>
</body>
</html>