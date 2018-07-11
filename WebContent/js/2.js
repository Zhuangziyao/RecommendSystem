/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2018-01-24 16:11:50
 * @version $Id$
 */

angular.module('myApp', []).controller('personCtrl', function($scope) {
    $scope.firstName = "John",
    $scope.lastName = "Doe",
    $scope.fullName = function() {
        return $scope.firstName + " " + $scope.lastName;
    }
});