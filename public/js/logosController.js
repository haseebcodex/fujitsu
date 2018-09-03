angular.module('logos.controllers', []).controller('logosController', function($scope, $window, $http) {

    $scope.category = localStorage.getItem('categoryname');
    $scope.company = localStorage.getItem('companyname');
    // $scope.slogan = localStorage.getItem('sloganname');
    // $scope.namelist;
    // $scope.sloganlist;

    //List for showing the preview
    // $scope.previews = [
    //     { id : 0, image : 'Eczar', transform: '0' },
    //     { id : 1, image : 'Eczar', transform: '0' },
    //     { id : 2, image : 'Eczar', transform: '0' },
    //     { id : 3, image : 'Eczar', transform: '0' }
    // ];

    $scope.init = function() {

        if (!$scope.category || !$scope.company) {
            window.location.href = "start.html";
        } else {
            $scope.getSelectedSvgs($scope.category);
        }

    };

    $scope.getSelectedSvgs = function(cat) {

        $.ajax({
            type: 'POST',
            url: 'php/getSvg.php',
            dataType: "json",
            data: { catname: cat },
            success: function(data) {

                $scope.loadSvgs(data);
                $scope.addAttributes();

            },
            error: function(error) {
                console.log(error);
            }
        });

    };

    $scope.loadSvgs = function(data) {
        console.log(data);
        // console.log(JSON.parse(data));

        for (var i = 0; i < data.length; i++) {
            // console.log(data[i]);
            var data2 = data[i].replace(/osamaShakir/g, "'");
            data2 = JSON.parse(data2);
            // console.log(data2);
            // var content = '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 text-center" logoleft="'+ data.svg.company.position.left +'" logotop="'+ data.svg.company.position.top +'" sloganleft="'+ data.svg.slogan.position.left +'" slogantop="'+ data.svg.slogan.position.top +'">'+
            var content = '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 text-center" logoleft="' + data2.svg.company.position.left + '" logotop="' + data2.svg.company.position.top + '">' +
                data2.svg.value +
                '<div class="onlyIconHere" iconleft="' + data2.icon.position.left + '" icontop="' + data2.icon.position.top + '" iconwidth="' + data2.icon.size.width + '" iconheight="' + data2.icon.size.height + '">' +
                data2.icon.value +
                '</div>' +
                '<div class="row btn-show-hide">' +
                '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">' +
                '<input class="center-block w3-animate-top" type="button" value="Buy">' + '<span class="arrow">' + '</span>' +
                '</div>' +
                '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">' +
                '<input class="center-block w3-animate-bottom" type="button" value="Edit">' + '<span class="arrow">' + '</span>' +
                '</div>' +
                '</div>' +
                '</div>';

            $('#fetchSvgsHere').append(content);
        }

        $('.onlyIconHere').css('display', 'none'); //display none the icon with svgs

        $('svg text').html($scope.company);
        // $('svg text[id="sloganname"]').html($scope.slogan);

        $('.col-md-6 input[type="button"]').on('click', function() {
            var val = $(this).attr('value');
            if (val == 'Edit') {

                var textColor = $(this).parents('.col-lg-3').find('text').css('fill');
                if (textColor.indexOf('linear-gradient') > -1) {
                    textColor = 'black';
                }
                var logoName = {
                    name: $scope.company,
                    // family : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-family'),
                    // style : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-style'),
                    // weight : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-weight'),
                    // size : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-size'),
                    // color : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('fill'),
                    family: $(this).parents('.col-lg-3').find('text').css('font-family'),
                    style: $(this).parents('.col-lg-3').find('text').css('font-style'),
                    weight: $(this).parents('.col-lg-3').find('text').css('font-weight'),
                    size: parseInt($(this).parents('.col-lg-3').find('text').css('font-size')),
                    color: textColor,
                    position: {
                        left: $(this).parents('.col-lg-3').attr('logoleft') + 'px',
                        top: $(this).parents('.col-lg-3').attr('logotop') + 'px'
                    },
                    rotate: {
                        degree: '0deg',
                        rad: '0rad'
                    }
                };

                // var slogan = {
                //     name : $scope.slogan,
                //     family : $(this).parents('.col-lg-3').find('text[id="sloganname"]').css('font-family'),
                //     style : $(this).parents('.col-lg-3').find('text[id="sloganname"]').css('font-style'),
                //     weight : $(this).parents('.col-lg-3').find('text[id="sloganname"]').css('font-weight'),
                //     size : $(this).parents('.col-lg-3').find('text[id="sloganname"]').css('font-size'),
                //     color : $(this).parents('.col-lg-3').find('text[id="sloganname"]').css('fill'),
                //     position : {
                //         left : $(this).parents('.col-lg-3').attr('sloganleft') + 'px',
                //         top : $(this).parents('.col-lg-3').attr('slogantop') + 'px'
                //     }
                // };

                var svg = $(this).parents('.col-lg-3').find('.onlyIconHere > svg')[0].outerHTML;
                var svgIcon = {
                    icon: svg,
                    size: {
                        width: $(this).parents('.col-lg-3').find('.onlyIconHere').attr('iconwidth') + 'px',
                        height: $(this).parents('.col-lg-3').find('.onlyIconHere').attr('iconheight') + 'px'
                    },
                    position: {
                        left: $(this).parents('.col-lg-3').find('.onlyIconHere').attr('iconleft') + 'px',
                        top: $(this).parents('.col-lg-3').find('.onlyIconHere').attr('icontop') + 'px'
                    },
                    rotate: {
                        degree: '0deg',
                        rad: '0rad'
                    },
                    paths: []
                };

                // $scope.sendSelectedSvg(svgIcon, logoName, slogan);
                $scope.sendSelectedSvg(svgIcon, logoName);

                // console.log(svgIcon);
                // console.log(logoName);
                // console.log(slogan);
            } else {
                // here comes the buy code
            }
        });

        // $('svg').on('click', function(){
        //     $scope.sendSelectedSvg($(this)[0].outerHTML);
        // });
    };

    $scope.addAttributes = function() {
        $('svg text').attr({ 'x': "50%", 'y': "", 'alignment-baseline': "middle", 'text-anchor': "middle" });

        // $('.tooltipster').tooltipster({
        //     animation: 'fade',
        //     delay: 0,
        //     theme: 'tooltipster-borderless'
        // });
    };

    // $scope.sendSelectedSvg = function(svgIcon, logoName, slogan){
    $scope.sendSelectedSvg = function(svgIcon, logoName) {
        // console.log(svg);
        localStorage.setItem('selectedIcon', JSON.stringify(svgIcon));
        localStorage.setItem('selectedLogoName', JSON.stringify(logoName));
        // localStorage.setItem('selectedSloganName', JSON.stringify(slogan));
        window.location.href = "customlogo.html";
    };

    $scope.changeCat = function() {
        $window.location.href = "start.html";
    };


});