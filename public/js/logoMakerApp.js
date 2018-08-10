var logomakerapp = angular.module('logomakerapp', ['logomaker.controllers','getstarted.controllers','logos.controllers']);

logomakerapp.config(['$locationProvider', function ($locationProvider) {
    $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
    });
}]);

// logomakerapp.config(function ($routeProvider) {

//     $routeProvider
//     .when("/", {
//         templateUrl : "customlogo.html"
//     })
//     .when("/red", {
//         templateUrl : "red.htm"
//     })
//     .when("/green", {
//         templateUrl : "green.htm"
//     })
//     .when("/blue", {
//         templateUrl : "blue.htm"
//     });

// });