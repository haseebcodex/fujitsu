angular.module('logomaker.controllers', ['colorpicker.module']).controller('logoMakerController', function ($scope, $window, $http) {

    $scope.fontFamilies = [
        { id : 0, name : 'Eczar' },
        { id : 1, name : 'Hanalei Fill' },
        { id : 2, name : 'Indie Flower' },
        { id : 3, name : 'Josefin Sans' },
        { id : 4, name : 'Kirang Haerang' },
        { id : 5, name : 'Modern Antiqua' },
        { id : 6, name : 'Montserrat' },
        { id : 7, name : 'Sunflower' }
    ];

    $scope.logoName = JSON.parse(localStorage.getItem('selectedLogoName'));
    $scope.slogan = JSON.parse(localStorage.getItem('selectedSloganName'));
    $scope.svg = JSON.parse(localStorage.getItem('selectedIcon'));

    // $scope.logoName = {
    //     name : localStorage.getItem('companyname'),
    //     family : $scope.fontFamilies[2].name,
    //     style : 'normal',
    //     weight : 'bold',
    //     size : '64px',
    //     color : "#a40f13",
    //     position : {
    //         left : '200px',
    //         top : '410px'
    //     }
    // };

    // $scope.slogan = {
    //     name : localStorage.getItem('sloganname'),
    //     family : $scope.fontFamilies[2].name,
    //     style : 'italic',
    //     weight : '400',
    //     size : '40px',
    //     color : "black",
    //     position : {
    //         left : '200px',
    //         top : '480px'
    //     }
    // };

    // $scope.svg = {
    //     icon : localStorage.getItem('selectedIcon'),
    //     size : {
    //         width : '400px',
    //         height : '400px'
    //     },
    //     position : {
    //         left : '200px', 
    //         top : '250px'
    //     },
    //     rotate : {
    //         degree : '0deg',
    //         rad : '0rad'
    //     },
    //     paths : []
    // };

    $scope.init = function(){

        if(!localStorage.getItem('selectedLogoName') || !localStorage.getItem('selectedSloganName') || !localStorage.getItem('selectedIcon')){
            window.location.href = "start.html";
        }
        else{
            $scope.loadLogo();
        }

        // $('#iconSettings input').on('click', function(){

            

        // })

    };

    $scope.loadLogo = function() {

        $('#svgIconHere').append($scope.svg.icon); // append list to the editor with logo, name and slogan.
        $scope.initSvgSettings();

        $('#svgIconHere').draggable({
            containment: "#draggableParent",
            start: function(event, ui){
                $scope.initSettings(event, ui);
                // console.log(ui);
            },
            stop: function(event, ui){
                $scope.svg.position.left = ui.position.left + 'px';
                $scope.svg.position.top = ui.position.top + 'px';
                console.log($scope.svg);
            }
            // snap: true,
            // grid: [ 10, 10 ]
        }).resizable({
            containment: "#draggableParent",
            // grid: [ 10, 10 ],
            handles: "ne, se, sw, nw",
            aspectRatio: true,
            autoHide: true,
            stop: function(event, ui){
                $scope.svg.size.width = ui.size.width + 'px';
                $scope.svg.size.height = ui.size.height + 'px';
                console.log($scope.svg);
            }
        }).rotatable({
            // Callback fired on rotation start.
            start: function(event, ui) {
            },
            // Callback fired during rotation.
            rotate: function(event, ui) {
            },
            // Callback fired on rotation end.
            stop: function(event, ui) {
                $scope.svg.rotate.rad = ui.angle.current + 'rad';
                $scope.svg.rotate.degree = ui.angle.degrees + 'deg';
                console.log($scope.svg);
            }
        });

        $('#logoNameHere, #sloganNameHere').draggable({
            containment: "#draggableParent",
            // snap: true,
            // grid: [ 10, 10 ],
            start: function(event, ui){
                $scope.initSettings(event, ui);
                // console.log(ui);
            },
            stop: function(event, ui){
                $scope.updatePosition(event, ui);
            }
        });

        $('#logoNameHere, #sloganNameHere, #svgIconHere').on('click', function(){
            $scope.setupSettings($(this).attr('id'));
        });

    };

    $scope.initSettings = function (event, ui){
        var id = event.currentTarget.id;
        $scope.setupSettings(id);
    };

    $scope.setupSettings = function (id){
        $('.editPallet').css('display', 'none');
        if(id == "logoNameHere"){
            $('#logoNameSettings').css('display', 'block');
        }
        else if(id == 'sloganNameHere'){
            $('#sloganSettings').css('display', 'block');
        }
        else if(id == 'svgIconHere'){
            $('#iconSettings').css('display', 'block');

            for(var i in $scope.svg.paths) {
                $('#input_' + $scope.svg.paths[i].id).css('display', 'none');
            }
        }
    };

    $scope.updatePosition = function (event, ui){
        var id = event.target.id;

        if(id == "logoNameHere"){
            $scope.logoName.position.left = ui.position.left + 'px';
            $scope.logoName.position.top = ui.position.top + 'px';
            console.log($scope.logoName);
        }
        else if(id == 'sloganNameHere'){
            $scope.slogan.position.left = ui.position.left + 'px';
            $scope.slogan.position.top = ui.position.top + 'px';
            console.log($scope.slogan);
        }
    };

    $scope.initSvgSettings = function (){

        $('#svgIconHere svg#Layer_2').css({'width':'100%', 'height':'100%', 'display':''});
        // $('#svgIconHere svg text[id="logoname"], #svgIconHere svg text[id="sloganname"]').remove();

        $('#svgIconHere svg path, #svgIconHere svg rect, #svgIconHere svg polygon, #svgIconHere svg circle, #svgIconHere svg ellipse').each(function(index){
            $(this).attr('id', 'vector_id_' + index).attr('pathid', index);
            var fillcolor = $(this).css('fill');
            var path_here = { id : 'vector_id_' + index, fill : fillcolor };
            $scope.svg.paths.push(path_here);
        }).on('click', function(e){

            e.stopPropagation();

            $('#iconSettings').css('display', 'block');
            var pathId = $('#' + $(this).attr('id')).attr('pathid');

            for(var i in $scope.svg.paths) {
                $('#input_' + $scope.svg.paths[i].id).css('display', 'none');
            }
            $('#input_' + $scope.svg.paths[pathId].id).css('display', 'block');

        });

    };

    $scope.updateFillColor = function (id) {
        console.log(id);
        var onlyId = $('#' + id).attr('pathid');
        $('#' + id).css('fill', $scope.svg.paths[onlyId].fill);
    };

});