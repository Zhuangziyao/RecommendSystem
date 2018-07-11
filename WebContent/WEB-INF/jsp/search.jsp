<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="com.recommend.entity.Course" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>具体课程</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="" rel="stylesheet">
<link href="lib/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/register.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/ui.css">
<style>
	.bottom{
		margin-top: -50px;
	}
	
</style>
</head>
<body ng-app="myapp" ng-controller="search">
    
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
							 <a href="./">主页</a>
						</li>
						<li class="active">
							 <a href="./course/list?course={{finance}}">课程</a>
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
							 <a ng-click="showLogin()" ng-style="unperson">登录</a>
						</li>
						<li class="dropdown">
							<a ng-click="showRegister()" ng-style="unperson">注册 </a>
						</li>
						<li>
							 <a href="person/{{userid}}" ng-style="person" ng-model="userid">个人空间</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column" >
			<div id="courseList">	
			<% List<Course> course=(List<Course>)request.getAttribute("searchResult");
			String flag=(String)request.getAttribute("flag");
				if(flag=="NotNull"){%>
				<h4>搜索课程为：</h4>
				<% }else{ %>
				<h4>对不起，没有找到相关课程。</h4>
				<h4>推荐如下课程</h4>
				<% } %>
				<% for(int i=0;i<course.size();i++) { %>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="image/<%=course.get(i).getCourseImg() %>" />
						<div class="caption" style="position: relative;">
							<h4>
								 【<%=course.get(i).getCourseName() %>】							 			 
							</h4>
							<div ><a class="btn btn-default" href="./learn/<%=course.get(i).getCourseId() %>" >开始学习</a> </div>
						</div>
					</div>
				</div>
					<% } %>
			</div>
		</div>
	</div>
</div>

<div class="row clearfix bottom">
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
<div class="login-fmain" ng-style="logindiv">
        <div class="login-main">
                <div class="login-box">
                    <div class="login-box1">
                        <p>用户帐号：</p>
                     </div>
                <div class="login-box2">
                    <input type="text" ng-model="lid"></p>
                </div>
                </div>
                <div class="login-box">
                    <div class="login-box1">
                        <p>密码：</p>
                    </div>
                    <div class="login-box2">
                        <input type="password" ng-model="lpassword"></p>
                    </div>
                </div>
                <div class="login-box3">
                    <p>忘记密码</p>
                </div>
            <button class="login-button" ng-click="login()">登陆</button>
        </div>
        </div>
<div class="reg-main" ng-style="regdiv">
            <div class="reg-top">
                <p>注册</p>
            </div>

            <div class="reg-t">
            <div class="reg-c">1</div>
            <div class="reg-title">
                账号信息
            </div>
            </div>

            <div class="reg-box">
                <div class="reg-box1">
                    <div class="reg-zhxx">用户帐号：</div>
                    <div class="reg-zhxx1"><input type="text" name="" ng-blur="checkUser()" ng-model="rid">
                    <p style="color:red" ng-style="isExist">该用户帐号已存在</p></div>
                </div>
                 <div class="reg-box1"> 
                    <div class="reg-zhxx">密码：</div>
                    <div class="reg-zhxx1"><input type="password" ng-model="rpassword" name="rpassword"></div>
                </div>
                <div class="reg-box1"> 
                    <div class="reg-zhxx">确认密码：</div>
                    <div class="reg-zhxx1"><input type="password" ng-model="rrpassword" ng-blur="checkPwd()" name="rpassword"></div>
                	<p style="color:red" ng-style="isSame">两次密码填写不相同</p>
                </div>
            </div>

            <div class="reg-t2">
            <div class="reg-title1">
                个人信息
            </div>
            <div class="reg-c2">2</div>
            </div>

            <div class="reg-boxx">
                <div class="reg-empty"></div>
                <div class="reg-box2">
                    <div class="reg-zhxx">姓名：</div>
                    <div class="reg-zhxx1"><input type="text" name="" ng-model="name"></div>
                </div>
                 <div class="reg-box1"> 
                    <div class="reg-zhxx">联系方式：</div>
                    <div class="reg-zhxx1"><input type="text" name="" ng-model="phonenumber"></div>
                </div>
                <div class="reg-box1"> 
                    <div class="reg-zhxx">邮箱：</div>
                    <div class="reg-zhxx1"><input type="text" name="" ng-model="email"></div>
                </div>
            </div>

             <button class="reg-button" ng-click="register()">提交</button>


        </div> 
        
        
<div class="login-background" ng-style="backdiv" ng-click="hide()"></div>

<script src="././js/angular.min.js"></script>
<script src="././js/app.js"></script>
<script type="text/javascript">
	app.controller("search",function($scope,$http){
		$scope.finance=encodeURI('金融学基础理论');
		//搜索若无结果则推荐部分课程
		var noSearch;
		$http({
			method:"POST",
			url:"http://localhost:8080/RecommendSystem/search",
			data:{words:"金融"}
		}).then(function successCallback(response){
			noSearch=response.data;
			console.log(noSearch);
		});
		
		//是否登录
		if(sessionStorage.getItem("userid")!=null){
			$scope.person={
					"visibility":"visible"
			}
			$scope.unperson={
					"visibility":"hidden"
			}
			$scope.userid=sessionStorage.getItem("userid");
		}else{
			$scope.person={
					"visibility":"hidden"
			}
			$scope.unperson={
					"visibility":"visible"
			}
		}
		
		//点击登录按钮
		$scope.showLogin=function(){
			$scope.logindiv={
					"visibility":"visible"
			};
			$scope.backdiv={
					"visibility":"visible"
			}
		};
		//点击注册按钮
		$scope.showRegister=function(){
			$scope.regdiv={
					"visibility":"visible"
			};
			$scope.backdiv={
					"visibility":"visible"
			}
		};
		//点击黑色背景隐藏弹出框
		$scope.hide=function(){
			$scope.logindiv={
					"visibility":"hidden"
			}
			$scope.backdiv={
					"visibility":"hidden"
			};
			$scope.regdiv={
					"visibility":"hidden"
			}
			$scope.isExist={
					"visibility":"hidden"
			}
			$scope.isSame={
					"visibility":"hidden"
			}
		};
		//判断用户是否存在
		$scope.isExist={
				"visibility":"hidden"
		}
		$scope.checkUser=function(){
			var send={
					id:$scope.rid
			}
			$http({
				method:"POST",
				url:"./user/checkuser",
				data:send
			}).then(function successCallback(response){
				if(response.data.userid!=null){
					$scope.isExist={
							"visibility":"visible"
					}
				}else{
					$scope.isExist={
							"visibility":"hidden"
					}
				}
					
			});
		}
		//注册用户
		$scope.register=function(){
			if($scope.phonenumber=='')
				$scope.phonenumber=0;
			var account={
					id:$scope.rid,
					password:$scope.rpassword,
					name:$scope.name,
					phonenumber:$scope.phonenumber,
					email:$scope.email
			}
			if($scope.rid!=null&&$scope.rpassword!=null)
				if($scope.isExist.visibility=='hidden'&&$scope.isSame.visibility=='hidden')
					$http({
						method:"POST",
						url:"./user/register",
						data:account
					}).then(function successCallback(response){
						var result=response.data.result;
						if(result!=""){
							sessionStorage.setItem("userid",$scope.rid);
							$scope.userid=$scope.rid;
							$scope.unperson={
									"visibility":"hidden"
							}
							$scope.person={
									"visibility":"visible"
							}
							$scope.regdiv={
									"visibility":"hidden"
							}
							$scope.backdiv={
									"visibility":"hidden"
							}
							
							location.href="http://localhost:8080/RecommendSystem/user/getInfo?userid="+$scope.rid;
						}
					});
		}
		//判断密码是否相同
		$scope.checkPwd=function(){
			if($scope.rpassword!=null&&$scope.rrpassword!=null)
				if($scope.rpassword==$scope.rrpassword)
					$scope.isSame={
						"visibility":"hidden"
				}
				else
					$scope.isSame={
						"visibility":"visible"
				}
		}
		//用户登录
		$scope.login=function(){
			var user={
					id:$scope.lid,
					password:$scope.lpassword
			}
			$http({
				method:"POST",
				url:"./user/login",
				data:user
			}).then(function successCallback(response){
				if(response.data.userid!=null){
					var value=response.data.userid;
					sessionStorage.setItem("userid",value);
					$scope.userid=value;
					
					$scope.logindiv={
							"visibility":"hidden"
					}
					$scope.backdiv={
							"visibility":"hidden"
					}
					$scope.unperson={
							"visibility":"hidden"
					}
					$scope.person={
							"visibility":"visible"
					}
				}
					
			})
		}
		
		
		$scope.searchWords=decodeURI(location.href.split("=")[1]);
		
		$scope.searchCourse=function(){
			if($scope.searchWords!=null){
				$http({
					method:"POST",
					url:"http://localhost:8080/RecommendSystem/search",
					data:{words:$scope.searchWords}
				}).then(function successCallback(response){
					if(response.data.length!=0)
						update(response.data);
					else
						noSearchResult();
						
				})
			}
		}
		
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
	
function update(data){
		var ta="";
			ta+="<h4>搜索课程为：</h4>";
			for(var i=0;i<data.length;i++){
				ta+="<div class='col-md-4'><div class='thumbnail'><img alt='300x200' src='./image/"+data[i].courseImg+"' />";
				ta+="<div class='caption' style='position: relative;'><h4>【"+data[i].courseName+"】</h4><div><a class='btn btn-default' href='./learn/"+data[i].courseId+"' >开始学习</a> </div>";
				ta+="</div></div></div>";
			}		
		document.getElementById("courseList").innerHTML=ta;
	}
	
function noSearchResult(){
	
	var ta="<h4>对不起，没有找到相关课程。</h4><h4>推荐如下课程</h4>";
	
	
	var length=noSearch.length;
	if(length>3)
		length=3;
	for(var i=0;i<length;i++){
		ta+="<div class='col-md-4'><div class='thumbnail'><img alt='300x200' src='./image/"+noSearch[i].courseImg+"' />";
		ta+="<div class='caption' style='position: relative;'><h4>【"+noSearch[i].courseName+"】<div style='float: right;'><a class='btn btn-default' href='./learn/"+noSearch[i].courseId+"' >开始学习</a> </div></h4>";
		ta+="</div></div></div>";
	}
	
	document.getElementById("courseList").innerHTML=ta;
}
</script>
</body>
</html>