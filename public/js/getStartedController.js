angular.module('getstarted.controllers', []).controller('getStartedController', function($scope, $window, $http) {

    $scope.step = 1;
    $scope.companyName;
    $scope.requiredCompanyName = false;
    $scope.sloganName;
    $scope.requiredSloganName = false;
    $scope.category;
    $scope.requiredCategory = false;
    // $scope.showCategoryLoader = false;

    $scope.categories = [];

    $scope.init = function() {
        $scope.getCategories();
    };

    $scope.checkCompanyName = function() {
        if (!$scope.companyName) {
            $scope.requiredCompanyName = true;
        } else {
            $scope.requiredCompanyName = false;


            $('#Anim').addClass('slide-in-blurred-right-p');
            localStorage.setItem('companyname', $scope.companyName);

            $scope.step = 2;



            // $('.wrapper[ng-show="step == 1"]').addClass('.slide-in-blurred-right-p');
            // $('.formRow--item[ng-show="step == 2"]').addClass('.slide-in-blurred-left-h1');
        }
    };

    $scope.checkSloganName = function() {
        if (!$scope.sloganName) {
            $scope.requiredSloganName = true;
        } else {
            $scope.requiredSloganName = false;
            $('#Anim1').addClass('slide-in-blurred-left-h1');
            localStorage.setItem('sloganname', $scope.sloganName);
            $scope.step = 3;

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

    $scope.checkCategories = function() {
        $scope.category = $('select[name="states[]"]').val();
        if (!$scope.category.length > 0) {
            $scope.requiredCategory = true;
        } else {
            $scope.requiredCategory = false;
            localStorage.setItem('categoryname', $scope.category);
            window.location.href = "logos.html";
        }
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