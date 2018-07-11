<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body ng-app="myapp" ng-controller="personquest">
	<style> 
		.person-head{
			height:100px;
			border-style: solid;
            border-width: 0 0 1px 0;
		}
		.person-bottom{
			height:100px;
			margin-top: 50px;
			border-style: solid;
            border-width: 1px 0 0 0;
		}
        .person-main{
            width: 500px;
            border-radius: 10px;
            margin-left:37%;
        }
		.person-top{
			margin-left:80px;
		}
		.person-question{
            margin-left: 30px;
		}
        .person-choose{
        	margin-left: 85px;
        	margin-top: -35px;
        }
        .person-choose1{
        	margin-left: 85px;
        	margin-top: -5px;
        }
 
        .person-button{
            width: 100px;
            height: 30px;
             margin-top:40px;
            margin-left: 30%;
        }
        
      </style>
	
	<div class="person-head">
	</div>

	<div class="person-main">

		<div class="person-top">
            <h1>信息完善</h1>
		</div>
		
		<div class="person-question">
	       <div>
		      <p>姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" ng-model="name"></p>
            </div>
		</div>
	
		<div class="person-question">
	        <div >
				<p>性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="a" value="男" ng-model="sex">男 
                <input type="radio" name="a" value="女" ng-model="sex">女</p>
			</div>
        </div>
	
	<div class="person-question">
	    <div  >
		<p>出生年月：&nbsp;<input type="text" ng-model="birthday"></p>
        </div>
    </div>
	
	<div class="person-question">
	    <div >
			<p>学历：</p>
			<div class="person-choose">
                <input type="radio" name="a0" value="高中及以下" ng-model="q4">高中及以下 <br>
                <input type="radio" name="a0" value="专科" ng-model="q4">专科<br>
			    <input type="radio" name="a0" value="本科" ng-model="q4">本科 <br>
                <input type="radio" name="a0" value="硕士/博士" ng-model="q4">硕士/博士
            </div>
        </div>
	</div>

	<div class="person-question">
	    <div >       
			<p>兴趣爱好：</p>
			<div class="person-choose">
                <input type="radio" name="a1" value="阅读 " ng-model="q5">阅读 <br>
                <input type="radio" name="a1" value="旅游" ng-model="q5">旅游<br>
				<input type="radio" name="a1" value="体育运动" ng-model="q5">体育运动 <br>
                <input type="radio" name="a1" value="音乐舞蹈" ng-model="q5">音乐舞蹈 <br>
				<input type="radio" name="a1" value="书法绘画" ng-model="q5">书法绘画 <br>
                <input type="radio" name="a1" value="娱乐游戏" ng-model="q5">娱乐游戏 <br>
                </div>
        </div>
    </div>
	

	<div class="person-question">
	    <div >
				<p>在任职过程中遇到的主要问题为：</p>
				<div class="person-choose1">
                    <input type="radio" name="a2" value="专业能力" ng-model="q6">专业能力 <br>
                    <input type="radio" name="a2" value="自我表达能力" ng-model="q6">自我表达能力<br>
				    <input type="radio" name="a2" value="人际交往能力" ng-model="q6">人际交往能力 <br>
                    <input type="radio" name="a2" value="环境适应能力" ng-model="q6">环境适应能力
                </div>
        </div>
    </div>
	
	<div class="person-question">
	<div >
            <div>
				<p>现阶段您最需要学习的内容是：</p>
				<div class="person-choose1">
                <input type="radio" name="a3" value="专业技能" ng-model="q7">专业技能 <br>
                <input type="radio" name="a3" value="管理能力" ng-model="q7">管理能力<br>
				<input type="radio" name="a3" value="学习方法" ng-model="q7">学习方法 <br>
                <input type="radio" name="a3" value="交流沟通能力" ng-model="q7">交流沟通能力
                </div>
            </div>
    </div>
    </div>

	<div class="person-question">
	<div >
			<p>对哪方面的课程兴趣较大：</p>
			<div class="person-choose1">
                <input type="radio" name="a4" value="金融" ng-model="q8">金融<br>
                <input type="radio" name="a4" value="汽修" ng-model="q8">汽修<br>
				<input type="radio" name="a4" value="零售" ng-model="q8">零售<br>
                <input type="radio" name="a4" value="其它" ng-model="q8">其它 <br>    
                <input type="text" ng-model="other">
            </div>
    </div>
    </div>
	
	<div class="person-question">
	    <div  >
		<p>就职经历: &nbsp;&nbsp;&nbsp;<input type="text" ng-model="q9"></p>
        </div>
    </div>
	
	<div class="person-question">
	    <div >
		<p>发展方向: &nbsp;&nbsp;&nbsp;<input type="text" ng-model="q10"></p>
        </div>
    </div>


    <div >
       <button class="person-button" ng-click="submit()">完成</button>
	</div>
	
	</div>	
		<div class="person-bottom">
	</div>
<script src="./../js/angular.min.js"></script>
<script src="./../js/app.js"></script>
<script>
    app.controller('personquest', function($scope,$http) {
	
    	var userid=location.search.split("=")[1];
       $scope.submit=function(){
    	   if($scope.q8=="其它")
    		   $scope.q8=$scope.other;
    	   var info={
    			   id:userid,
    			   sex:$scope.sex,
    			   name:$scope.name,
    			   birthday:$scope.birthday,
    			   eudcation:$scope.q4,
    			   hobby:$scope.q5,
    			   question:$scope.q6,
    			   wantlearn:$scope.q7,
    			   development:$scope.q10,
    			   inaugural:$scope.q9,
    			   wantmajor:$scope.q8
    	   }
    	   
    	   $http({
    		   method:"POST",
    		   url:"http://localhost:8080/RecommendSystem/user/setInfo",
    		   data:info
    	   }).then(function successCallback(response){
    		   location.href="http://localhost:8080/RecommendSystem/";
    	   })
       }
    });
    </script>
</body>
</html>