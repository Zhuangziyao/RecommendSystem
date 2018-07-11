<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>视频</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="" rel="stylesheet">
<link href="./../lib/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./../lib/css/bootstrap.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./../css/ui.css">
<link rel="stylesheet" href="./../css/wj.css">
</head>
<body ng-app="myapp" ng-controller="study">
    
<div class="container ui-all">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
					 <span class="icon-bar"></span><span class="icon-bar"></span></button> 
					 <a class="navbar-brand" href="#">Logo</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li >
							 <a href="./../">主页</a>
						</li>
						<li class="active">
							 <a href="./../course/list?course={{finance}}">课程</a>
						</li>
						<li class="dropdown">
							<a href="" ng-click="goRecommend()">推荐</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" ng-model="searchWords"/>
						</div> 
						<a href="search.html"><button type="button" class="btn btn-default" ng-click="searchCourse()">查找课程</button></a>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="./../person/{{userid}}" ng-style="person" ng-model="userid">个人空间</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>

<div class="container">
	<div class="row clearfix">
		
		<div class="col-md-12 column">
			<div class="col-md-8 column">
			<video width="100%" height="500px"  controls="preload">
				<source src="./../lib/123.mp4" type="video/mp4">
			</video>
			
			</div>
			<div class="col-md-4 column">
				<div class="tabbable" id="tabs-940086">
						<ul class="nav nav-tabs">
							<li class="active">
								 <a href="#panel-560779" data-toggle="tab">课程讨论</a>
							</li>
							<li>
								 <a href="#panel-989140" data-toggle="tab">课程笔记</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-560779">
								<div class="list-group-item">
									课程讲解很详细。
									<div class="list-group-item-text">
										<p class="list-group-item-text-time">2017年2月1日</p>
										<a href="#"><p class="list-group-item-text-user">大猪妖</p></a>
										
									</div>
								</div>
								<div class="list-group-item">
									对我帮助很大。
									<div class="list-group-item-text">
										<p class="list-group-item-text-time">2017年2月11日</p>
										<a href="#"><p class="list-group-item-text-user">其没</p></a>
										
									</div>
								</div>
								<div class="list-group-item">
									还会再来看这个课的。
									<div class="list-group-item-text">
										<p class="list-group-item-text-time">2017年2月13日</p>
										<a href="#"><p class="list-group-item-text-user">z先生</p></a>
										
									</div>
								</div>
								<div class="list-group-item">
									帮助不大。
									<div class="list-group-item-text">
										<p class="list-group-item-text-time">2017年2月13日</p>
										<a href="#"><p class="list-group-item-text-user">什么鱼</p></a>
										
									</div>
								</div>
								<div class="list-group-item-word">
									<input type="text" class="list-group-text">
									<button type="button" class="btn btn-default list-button">提交评论</button>

								</div>
								
							</div>
							<div class="tab-pane " id="panel-989140">
								<input  type="text" class="list-notes" >
								<button type="button" class="btn btn-default list-notes-button" >保存</button>
							</div>
						</div>
					</div>

			</div>
			
		
	</div>


<br></br>


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
<div class="ui-background">
<div class="ui-body" ng-style="question">

        <div class="ui-body-box">
            <div class="ui-box-question">您对本次课程学习的满意度为：</div>
            <div class="ui-box-answer">
                <label><input type="radio" name="q1" value=""/>非常满意&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="q1" value="" />基本满意&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="q1" value="" />不太满意</label>
            </div>
        </div>

        <div class="ui-body-box">
             <div class="ui-box-question">您觉得本次学习的难易程度为：</div>
            <div class="ui-box-answer">
               <label><input type="radio" name="q2" value=""/>简单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
               <label><input type="radio" name="q2" value=""/>一般&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
               <label><input type="radio" name="q2" value=""/>较难</label>
            </div>
        </div>

        <div class="ui-body-box">
             <div class="ui-box-question">您觉得本次课程的时长为：</div>
            <div class="ui-box-answer">
               <label> <input type="radio" name="q3" value=""/>过长&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
               <label> <input type="radio" name="q3" value=""/>适中&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
               <label> <input type="radio" name="q3" value=""/>较短</label>
            </div>
        </div>

        <div class="ui-body-box">
             <div class="ui-box-question">您觉得本次课程对您哪方面帮助最大：</div>
            <div class="ui-box-answer">
                <label><input type="radio" name="q4" value=""/>专业技术&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="q4" value=""/>交际沟通&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <label><input type="radio" name="q4" value=""/>管理能力</label>
            </div>
        </div>

        <div class="ui-body-box">
             <div class="ui-box-question">您还希望学习哪方面的课程:</div>
            <div class="ui-box-answer1">
                <label><input type="checkbox" value="" />金融</label>
                <label><input type="checkbox" value="" />零售</label>
                <label><input type="checkbox" value="" />汽修</label>
                <p><input type="checkbox" value="" />其它</p>
            </div>
        </div>
        
        <div class="ui-box-submit" ><p>提交</p></div>
    </div>
</div>

<script src="./../js/angular.min.js"></script>
<script src="./../js/app.js"></script>
<script type="text/javascript">
	app.controller("study",function($scope,$http){
		$scope.finance="金融学基础理论";
		$scope.userid=sessionStorage.getItem("userid");
		//前往推荐页面
		$scope.goRecommend=function(){
			if(sessionStorage.getItem("userid")!=null){
				location.href="./recommend";
			}else{
				$scope.logindiv={
						"visibility":"visible"
				}
				$scope.backdiv={
						"visibility":"visible"
				}
			}
		}
	})
</script>
</body>
</html>