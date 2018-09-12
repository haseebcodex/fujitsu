angular.module('getstarted.controllers', []).controller('getStartedController', function($scope, $window, $http) {

    $scope.step = 1;
    $scope.companyName;
    if (localStorage.getItem("busineesNameHere")) {
        $scope.companyName = localStorage.getItem("busineesNameHere");
    }
    else{
        $scope.companyName = '';
    }
    $scope.categoryName;
    $scope.requiredCompanyName = false;
    // $scope.sloganName;
    $scope.requiredSloganName = false;
    $scope.category;
    $scope.requiredCategory = false;
    $scope.emailAddress;
    $scope.requiredEmail = false;
    $scope.requiredEmailMsg = "Valid Email Address is required.";
    // $scope.showCategoryLoader = false;

    $scope.categories = [];

    $scope.init = function() {
        $scope.getCategories();

        if ($scope.companyName != '') {
            $('#companyname').focus();
        }
    };

    $scope.checkCompanyName = function() {
        if (!$scope.companyName) {
            $scope.requiredCompanyName = true;
        } else {
            $scope.requiredCompanyName = false;
            localStorage.setItem('companyname', $scope.companyName);
            $scope.step = 2;

            $('#anim1').addClass('slide-in-blurred-right-p'); // add animation class to the fields

            // init the select2 dropdown for categories
            $('.js-example-basic-multiple').select2({
                placeholder: "Select"
            });

            $(".js-select2").select2({
                placeholder: "Choose Category",
                theme: "material"
            });

            $(".select2-selection__arrow")
                .addClass("material-icons")
                .html("arrow_drop_down");
        }
    };

    // $scope.checkSloganName = function() {
    //     if (!$scope.sloganName) {
    //         $scope.requiredSloganName = true;
    //     } else {
    //         $scope.requiredSloganName = false;
    //     }
    // };

    $scope.checkCategories = function() {
        $scope.category = $('select[name="states[]"]').val();
        if (!$scope.category.length > 0) {
            $scope.requiredCategory = true;
        } else {
            $scope.requiredCategory = false;
            localStorage.setItem('categoryname', $scope.category);
            $scope.step = 3;
        }
    };

    $scope.getStarted = function(){
        if (!$scope.emailAddress) {
            $scope.requiredEmail = true;
        } else {
            $scope.requiredEmail = false;
            localStorage.setItem('emailAddress', $scope.emailAddress);
            window.location.href = "logos.html";
        }
    };

    $scope.validateEmail = function validateEmail(email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(String(email).toLowerCase());
    };

    $scope.getCategories = function() {

        $.ajax({
            type: 'POST',
            url: 'php/getCat.php',
            dataType: "json",
            data: { selection: true },
            success: function(data) {
                for (var i = 0; i < data[1].length; i++) {
                    var item = { id: i, value: data[1][i] };
                    $scope.categories[i] = item;
                }
            },
            error: function(error) {
                console.log(error);
            }
        });

    };

    // $scope.sendSelectedCat = function(cat) {

    //     $.ajax({
    //         type:'POST',
    //         url:'php/getSvg.php',
    //         dataType: "json",
    //         data:{catname: cat},
    //         success:function(data){
    //             console.log(data);
    //         },
    //         error: function(error){
    //             console.log(error);
    //         }
    //     });

    // };


});