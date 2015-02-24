var myModule = angular.module('myModule', []);

myModule.controller('myController', function ($scope) {
    var data = { first: 'David', plan: 'basic-plan' };

    $scope.data = data;
});

myModule.filter('stripDashes', function () {
    return function (txt) {
        return txt.split('-').join(' ');
        //return txt.replace(/\w\S*/g, function (txt) { return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase() });
    };
});