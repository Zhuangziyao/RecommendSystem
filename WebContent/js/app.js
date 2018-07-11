	var app=angular.module('myapp',[]);
	app.config(['$httpProvider', function($httpProvider) {  
	    $httpProvider.defaults.headers.post["Content-Type"] =  
	            "application/x-www-form-urlencoded";  
	     $httpProvider.defaults.  
	         transformRequest.unshift(function(data,headersGetter) {  
	        var key, result = [];  
	        for (key in data) {  
	         if (data.hasOwnProperty(key)) {  
	             result.push(encodeURIComponent(key) + "="  
	                    + encodeURIComponent(data[key]));  
	         }  
	     }  
	     return result.join("&");  
		});  
		}]);   
	//定义可修改全局变量
	var data={userid:"",userpwd:""};
	app.factory('userService',function(){
		var service={};
		service.set=function(uid,upwd){
			data.userid=uid;
			data.userpwd=upwd;
		}
		service.get=function(){
			return data;
		}
		return service;
	});