var myModule = angular.module('myModule', []);

myModule.controller('myController', function ($scope) {
    var data = { first: 'David', plan: 'basic-plan' };

    $scope.data = data;
    $scope.textVal = "1";
    $scope.colorsArray = ['red', 'blue', 'green'];
});

myModule.filter('stripDashes', function () {
    return function (txt) {
        return txt.split('-').join(' ');
        //return txt.replace(/\w\S*/g, function (txt) { return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase() });
    };
});

myModule.directive('colorList', function ($compile) {
    return {
        restrict: 'AE',
        template: "<button ng-click='showHiddenColors()' type='button'>"
                + "{{isHidden? 'Show colors' : 'Hide colors'}}"
                + "</button><div ng-hide='isHidden' id='colorContainer'>"
                + "</div>",
        link: function ($scope, $element) {
            $scope.isHidden = true;
            $scope.showHiddenColors = function () {
                $scope.isHidden = !$scope.isHidden;
            };

            var colorContainer = $element.find('div');
            console.log($scope.colorsArray);
            angular.forEach($scope.colorsArray, function (color) {
                var appendString = "<div style='background-color:" + color + "'>" + color + "</div>";
                colorContainer.append(appendString);
            });
        }
    };
});

myModule.directive('colorList2', function () {
    return {
        restrict: 'AE',
        templateUrl: 'template1.html',
        link: function ($scope, $element) {
            $scope.isHidden = true;
            $scope.showHiddenColors = function () {
                $scope.isHidden = !$scope.isHidden;
            };

            var colorContainer = $element.find('div');
            angular.forEach($scope.parent.colorsArray, function (color) {
                var appendString = "<div style='background-color:" + color + "'>" + color + "</div>";
                colorContainer.append(appendString);
            });
        }
    };
});