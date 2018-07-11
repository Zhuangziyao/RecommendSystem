<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>首页</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="" rel="stylesheet">
<link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.css" >
<link rel="stylesheet" type="text/css" href="lib/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/ui.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/register.css">
<link rel="stylesheet" type="text/css" href="css/personQuest.css">
</head>
<body ng-app="myapp" ng-controller="index">
    <div class="container ui-all">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="">Logo</a>
				</div>
				
				<div class="collapse navbar-collapse body-title" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="">主页</a>
						</li>
						<li>
							 <a href="course/list?course={{finance}}">课程</a>
						</li>
						<li class="dropdown">
							<a href="" ng-click="goRecommend()" >推荐</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search" method="POST">
						<div class="form-group">
							<input type="text" class="form-control" ng-model="searchWords"/>
						</div> 
						<button type="submit" class="btn btn-default" ng-click="searchCourse()">查找课程</button>
					</form>
					<ul class="nav navbar-nav navbar-right ">
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

			<ul class="nav nav-tabs body-title-1" >
				<a ng-repeat="item in firstclassify" ng-click="goClass(item)">
					 <button type="button" class="btn btn-default">{{item}}</button>
				</a>
			</ul>
		</div>
	</div>
	<br><br>
	<div class="col-md-12 column body-body">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="carousel slide" id="carousel-903112">
						<ol class="carousel-indicators">
							<li class="active" data-slide-to="0" data-target="#carousel-903112">
							</li>
							<li data-slide-to="1" data-target="#carousel-903112">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img alt="" src="image/title1.png" class="img-responsive center-block" />
								<div class="carousel-caption">
								</div>
							</div>
							<div class="item">
								<img alt="" src="image/title2.png" class="img-responsive center-block"/>
								<div class="carousel-caption">
								</div>
							</div>
							
						</div> 
						<a class="left carousel-control" href="#carousel-903112" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
						<a class="right carousel-control" href="#carousel-903112" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
					<div class="row clearfix" > 
					
					<br><br>
						<div class="col-md-3 column" >
							<div class="page-header" style="margin-top:0px;table-layout:fixed;">
								<h2 style="margin-top:0;text-align:left;">
									最新推荐
								</h2>
								<h4 style="text-align:left;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href="./learn/1015">企业境内外股权融资选择与比较</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>房地产投资</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>企业生命周期与融资筹划</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>金融市场与金融工具</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>公司金融</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>企业财务分析</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>国际经济学</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>百货店购物中心化路径</a></p>
								<p style="margin-bottom:5px"><a class="btn" style="padding:0" href=>第三只眼看民营卖场的品类管理</a></p>
								<p id="page-header-last"> <a class="btn" href="course/list?course={{finance}}">更多课程 »</a></p>
								</h4>
							</div>
						</div>
						<div class="col-md-9 column">
							<div class="carousel slide" id="carousel-196908" >
								<ol class="carousel-indicators">
									<li class="active" data-slide-to="0" data-target="#carousel-196908">
									</li>
									<li data-slide-to="1" data-target="#carousel-196908">
									</li>
									<li data-slide-to="2" data-target="#carousel-196908">
									</li>
								</ol>
								<div class="carousel-inner" >
									<div class="item active" >
										<a href="class.html"><img  src="image/class1.png"  class="img-responsive center-block" /></a>
									</div>
									<div class="item">
										<a href="class.html"><img  src="image/pic.png" class="img-responsive center-block" /></a>
									</div>
								</div> 
								<a class="left carousel-control" href="#carousel-196908" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
								<a class="right carousel-control" href="#carousel-196908" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
							</div>
						</div>
					</div>
					<br><br>
					<div class="row clearfix">
						<div class="col-md-6 column">
							<a href="#"><img src="image/test.png" class="img-responsive center-block"></a>
							 
						</div>
						<div class="col-md-1 column">
						</div>
						<div class="col-md-5 column ">
						<div class="jumbotron ">
							<div class="container  ">
								<h2 class="text-center">最新消息</h2>
								<ul>
								<li>“新零售市场”即将开课</li>
								<li>“微观经济学”即将考试</li>
								<li>“公司金融”更新</li>
								<li>“国际经济学”即将结束</li>
								<li>讲师张晓将开设课程</li>
								<li>更多消息</li>
								</ul>
							</div>

						</div>
							
						</div>
					</div>
				</div>
			</div>
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
				
				
				<!-- <li class="active">
					Data
				</li> -->
			</ul>
		</div>
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

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/angular.min.js"></script>
<script src="js/app.js"></script>
<script	type="text/javascript">
	
	app.controller("index",function($scope,$http){
		
		//初始化
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
		
		$scope.isSame={
				"visibility":"hidden"
		}

		$http({//获取课程一级分类
			method:"POST",
			url:"./course/firstclassify"
		}).then(function successCallback(response){
			$scope.firstclassify=response.data;
		})
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
		//查找课程
		$scope.searchCourse=function(){
			if($scope.searchWords!=null)		
				location.href="./search?words="+encodeURI($scope.searchWords);
		}
		//跳转到课程页面
		$scope.finance=encodeURI('金融学基础理论');
		$scope.goClass=function(item){
			window.location.href="http://localhost:8080/RecommendSystem/course/list?course="+encodeURI(item);
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
	});
</script>
</body>
</html>