<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map" %>
<%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>具体课程</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="" rel="stylesheet">
<link href="./../lib/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./../lib/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./../css/login.css">
<link rel="stylesheet" type="text/css" href="./../css/register.css">
<link rel="stylesheet" type="text/css" href="./../css/ui.css">
</head>
<body ng-app="myapp" ng-controller="eachclass">
    
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
						<button type="submit" class="btn btn-default" ng-click="searchCOurse()">查找课程</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a ng-click="showLogin()" ng-style="unperson">登录</a>
						</li>
						<li class="dropdown">
							<a ng-click="showRegister()" ng-style="unperson">注册 </a>
						</li>
						<li>
							 <a href="../person/{{userid}}" ng-style="person" ng-model="userid">个人空间</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>





	<div class="row clearfix">
		<div class="col-md-1 column">
		</div>
		<div class="col-md-10 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-5 column">
							<img alt="300x200" width="300" src="./../image/${requestScope.courseInfo.get('courseImg')}" />
							<br></br>
							 <button type="button" class="btn btn-default" ng-click="study()">开始课程</button>
							 <button type="button" class="btn btn-default" ng-click="addtoClass()" ng-model="addClass">{{addClass}}</button> 
							 <button type="button" class="btn btn-default" ng-click="addtoList()" ng-model="addList">{{addList}}</button>
						</div>
						<div class="col-md-7 column">
							<div >
								<b class="navbar-left">	课程名称:&nbsp&nbsp	</b>
								<p>	${requestScope.courseInfo.get("courseName")} 		</p>
								<b class="navbar-left">	课程讲师:&nbsp&nbsp	</b>
								<p>	${requestScope.courseInfo.get("Teacher")}		</p>
								
								<b class="navbar-left">	课程时长:&nbsp&nbsp	</b>
								<p>	${requestScope.courseInfo.get("courseTime")}课时	</p>
								
								<b class="navbar-left">	适合人群:&nbsp&nbsp	</b>
								<p>	董事长、总经理等企业高层管理者</p>
							</div>
							

							<br>
							<%
							Map<String,Object> courseInfo=(Map)request.getAttribute("courseInfo");
								String coursename=(String)courseInfo.get("courseName");
								List<String> tags=(List)courseInfo.get("Tags");
								for(int i=0;i<tags.size();i++) {%>
							 <span class="label label-default"><%=tags.get(i) %></span>
							<% } %>
							 <br></br>
							<div class="progress">进度
								<div class="progress-bar progress-success">
								</div>
							</div>
						</div>
					</div>
					<h3>
						课程描述
					</h3>
					<p>
						${requestScope.courseInfo.get("Introduction")}
					</p>
					<br></br>

					
					
				</div>
			</div>

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
								<!-- <p>
									I'm in Section 1.
								</p> -->
								<h3>
								课程讨论
								</h3>
								<p>
									这堂课给了我很大帮助，我学到了许多有用的新知识，老师讲的也很清楚，就是最后那点金融区块的知识不是特别懂。
								</p>
								<p>	 不错不错不错不错不错 </p>
								<p>	 老师的课程实在是6，久旱逢甘露啊，网上的讲解的比较生硬，看了很久都没有理解完全，总觉得不舒服，赞！ </p>
							</div>
							<div class="tab-pane" id="panel-989140">
								<p>
									这里是课程笔记
								</p>
							</div>
						</div>
					</div>
					





		</div>
		<div class="col-md-1 column">
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

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./../js/angular.min.js"></script>
<script src="./../js/app.js"></script>
<script type="text/javascript">
	
	app.controller("eachclass",function($scope,$http){
		//初始化
		var coursename="<%=coursename%>";
			
		if(sessionStorage.getItem("userid")!=null){
			$scope.userid=sessionStorage.getItem("userid");
			$scope.unperson={
					"visibility":"hidden"
			};
			$scope.person={
					"visibility":"visible"
			}
		}
		else{
			$scope.unperson={
					"visibility":"visible"
			};
			$scope.person={
					"visibility":"hidden"
			}
		}
		
		$http({
			method:"GET",			
			url:window.location.href
		}).then(function successCallback(response){
			//判断
			$http({
					method:"POST",
					url:"http://localhost:8080/RecommendSystem/learn/checkCourse",
					data:{courseName:coursename,userId:$scope.userid}
				}).then(function successCallback(response){
					if(response.data.Class==null)
						$scope.addClass="加入课表";
					else
						$scope.addClass="已加入课表";
					if(response.data.List==null)
						$scope.addList="加入收藏";
					else
						$scope.addList="已加入收藏";
				})
		})
		
		
		
		$scope.addtoClass=function(){
			if($scope.addClass=="加入课表"){
				$http({
					method:"POST",
					url:"http://localhost:8080/RecommendSystem/learn/addToClass",
					data:{courseName:coursename,userId:$scope.userid}
				}).then(function successCallback(resposne){
					$scope.addClass="已加入课表";
				})
			}
			
		}
		
		$scope.addtoList=function(){
			if($scope.addList=='加入收藏')
				$http({
					method:"POST",
					url:"http://localhost:8080/RecommendSystem/learn/addToList",
					data:{courseName:coursename,userId:$scope.userid}
				}).then(function successCallback(resposne){
					$scope.addList="已加入收藏";
				})
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
							$scope.regdiv={
									"visibility":"hidden"
							};
							$scope.backdiv={
									"visibility":"hidden"
							}
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
					$scope.userid=response.data.userid;
					
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
		
		$scope.study=function(){
			var courseid=location.href.split("/");
			var length=courseid.length;
			$http({
				method:"GET",
				url:"http://localhost:8080/RecommendSystem/video/"+courseid[length-1]
			}).then(function successCallback(){
				
			})
			location.href="http://localhost:8080/RecommendSystem/video/"+courseid[length-1];
		}
		
	})
</script>
</body>
</html>