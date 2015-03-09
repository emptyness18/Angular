myModule.factory("dataService", function ($http) {
    var dataStore = {};
    dataStore.doRegistration = function (theData) {
        var promise = $http({ method: 'POST', url: 'memberservices/register', data: theData });
        return promise;
    }
    return dataStore;
});

myModule.controller("signUpController", function ($scope, dataService) {
    var person = [];
    person.newsletterOptIn = false;
    person.channels = [
        { value: "television", label: "Television" },
        { value: "radio", label: "Radio" },
        { value: "social-media", label: "Social Media" },
        { value: "other", label: "Other" }
    ];
    person.register = function () {
        console.log("register");

        $scope.firstNameInvalid = false;
        $scope.lastNameInvalid = false;
        $scope.emailInvalid = false;
        $scope.researchInvalid = false;

        $scope.showSuccessMessage = false;
        $scope.showErrorMessage = false;

        if (!$scope.registrationForm.firstName.$valid) {
            $scope.firstNameInvalid = true;
        }
        if (!$scope.registrationForm.lastName.$valid) {
            $scope.lastNameInvalid = true;
        }
        if (!$scope.registrationForm.email.$valid) {
            $scope.emailInvalid = true;
        }
        if (!$scope.registrationForm.research.$valid) {
            $scope.researchInvalid = true;
        }

        if ($scope.registrationForm.$valid) {
            $scope.working = true;

            var promise = dataService.doRegistration($scope.person);

            promise.success(function (data, status) {
                $scope.showSuccessMessage = true;
            });

            promise.error(function (data, status) {
                $scope.showErrorMessage = true;
            });

            promise.finally(function () {
                $scope.working = false;
            });

            $scope.doShow = true;
        }

    }
});