<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>个人课程页面</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="./../lib/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./../lib/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./../css/ui.css">
</head>
<body ng-app="myapp" ng-controller="person">
 <div class="container ui-all">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Logo</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li >
							 <a href="../">主页</a>
						</li>
						<li class="active">
							 <a href="../course/list?course=">课程</a>
						</li>
						<li class="dropdown">
							 <a href="../recommend" >推荐</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" ng-model="searchWords"/>
						</div> 
						<button type="submit" class="btn btn-default" ng-click="searchCourse()">查找课程</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="">个人空间</a>
						</li>
					</ul>
				</div>
			</nav>

			<ul class="nav nav-tabs">
				<li ng-repeat="item in firstclassify">
					 <a ng-click="goClass(item)">{{item}}</a>
				</li>
				
			</ul>
		</div>
	</div>
	<br><br>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-1 column"></div>
			<div class="col-md-10 column">
				<div class="tabbable" id="tabs-787526">
					<ul class="nav nav-tabs">
						<li class="active">
							 <a href="#panel-123809" data-toggle="tab">我的课表</a>
						</li>
						<li>
							 <a href="#panel-812722" data-toggle="tab">我的收藏</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="panel-123809">
							<div class="row">
				<div class="col-md-4" ng-repeat="item in classInfo">
					<div class="thumbnail">
						<img alt="300x200" src="./../image/{{item.courseImg}}" />
						<div class="caption">
							<h4>
								【{{item.courseName}}】
							</h4>
							<p>
								 <a class="btn btn-default" href="#">开始学习</a> 
								 <a class="btn btn-danger"  ng-click="quitClass(item.courseId)">退出课程</a>
							</p>
						</div>
					</div>
				</div>
				

			</div>
						</div>
						<div class="tab-pane " id="panel-812722">
							
				<div class="col-md-4" ng-repeat="items in listInfo">
					<div class="thumbnail">
						<img alt="300x200" src="./../image/{{items.courseImg}}" />
						<div class="caption">
							<h4>
								【{{items.courseName}}】
							</h4>
							<p>
								 <a class="btn btn-default" href="#">开始学习</a> 
								 <a class="btn btn-danger"  ng-click="quitList(items.courseId)">取消收藏</a>
							</p>
						</div>
					</div>
				</div>

						</div>
					</div>
				</div>
			
			</div>
		<div class="col-md-1 column"></div>
	</div>
</div>

	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					<div class="page-header">
						<h3>联系电话 <small>123-1234-1234</small></h3>
					</div>
				</li>
				<li>
					 <a href="#">关于我们</a>
				</li>
				<li>
					 <a href="#">联系我们</a>
				</li>
				<li>
					 <a href="#">内容招募</a>
				</li>
				<li>
					 <a href="#">意见反馈</a>
				</li>
				<li>
					 <a href="#">帮助中心</a>
				</li>
				
			</ul>
		</div>
	</div>
</div>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./../js/angular.min.js"></script>
<script src="./../js/app.js"></script>
<script type="text/javascript">
app.controller('person',function($scope,$http){
	
	var useridd=sessionStorage.getItem("userid");
	//初始化
	$http({
		method:"POST",
		url:"http://localhost:8080/RecommendSystem/person/getClassAndList",
		data:{userid:useridd}
	}).then(function successCallback(response){
		$scope.classInfo=response.data.classInfo;
		$scope.listInfo=response.data.listInfo;
	})
	
	$scope.quitClass=function(item){
		$http({
			method:"POST",
			url:"http://localhost:8080/RecommendSystem/person/quitClass",
			data:{courseid:item,userid:useridd}
		}).then(function successCallback(response){
			$scope.classInfo=response.data;
		})
	}
	
	$scope.quitList=function(item){
		$http({
			method:"POST",
			url:"http://localhost:8080/RecommendSystem/person/quitList",
			data:{courseid:item,userid:useridd}
		}).then(function successCallback(response){
			$scope.listInfo=response.data;
			console.log(response.data);
		})
	}
	
	$http({//获取课程一级分类
		method:"POST",
		url:"http://localhost:8080/RecommendSystem/course/firstclassify"
	}).then(function successCallback(response){
		$scope.firstclassify=response.data;
	})
	
	//跳转到课程页面
	$scope.goClass=function(item){
		location.href="http://localhost:8080/RecommendSystem/course/list?course="+encodeURI(item);
	}
	//查找课程
	$scope.searchCourse=function(){
		if($scope.searchWords!=null)		
			location.href="./search?words="+encodeURI($scope.searchWords);
	}
	
})
</script>
</body>
</html>
