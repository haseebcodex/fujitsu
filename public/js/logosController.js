angular.module('logos.controllers', []).controller('logosController', function ($scope, $window, $http) {

    $scope.category = localStorage.getItem('categoryname');
    $scope.company = localStorage.getItem('companyname');
    // $scope.slogan = localStorage.getItem('sloganname');
    // $scope.namelist;
    // $scope.sloganlist;

    $scope.init = function () {

        if(!$scope.category || !$scope.company){
            window.location.href = "start.html";
        }
        else{
            $scope.getSelectedSvgs($scope.category);
        }

    };

    $scope.getSelectedSvgs = function(cat) {

        $.ajax({
            type:'POST',
            url:'php/getSvg.php',
            dataType: "json",
            data:{catname: cat},
            success:function(data){

                $scope.loadSvgs(data);

            },
            error: function(error){
                console.log(error);
            }
        });

    };

    $scope.loadSvgs = function(data){
        console.log(data);
        // console.log(JSON.parse(data));
        
         for(var i = 0; i < data.length; i++){
            console.log(data[i]);
            var data = data[i].replace(/osamaShakir/g, "'");
            data = JSON.parse(data);
            console.log(data);
            // var content = '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 text-center" logoleft="'+ data.svg.company.position.left +'" logotop="'+ data.svg.company.position.top +'" sloganleft="'+ data.svg.slogan.position.left +'" slogantop="'+ data.svg.slogan.position.top +'">'+
            var content = '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 text-center" logoleft="'+ data.svg.company.position.left +'" logotop="'+ data.svg.company.position.top +'">'+
                data.svg.value+
                '<div class="onlyIconHere" iconleft="'+ data.icon.position.left +'" icontop="'+ data.icon.position.top +'" iconwidth="'+ data.icon.size.width +'" iconheight="'+ data.icon.size.height +'">'+
                data.icon.value+
                '</div>'+
                '<div class="row btn-show-hide">'+
                    '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">'+
                        '<input class="center-block" type="button" value="Buy">'+
                    '</div>'+
                    '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">'+
                        '<input class="center-block" type="button" value="Edit">'+
                    '</div>'+
                '</div>'+
            '</div>';

            $('#fetchSvgsHere').append(content);
        }
        
        $('.onlyIconHere').css('display','none'); //display none the icon with svgs

        $('svg text').html($scope.company);
        // $('svg text[id="sloganname"]').html($scope.slogan);

        $('.col-md-6 input[type="button"]').on('click', function(){
            var val = $(this).attr('value');
            if(val == 'Edit'){

                var logoName = {
                    name : $scope.company,
                    // family : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-family'),
                    // style : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-style'),
                    // weight : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-weight'),
                    // size : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('font-size'),
                    // color : $(this).parents('.col-lg-3').find('text[id="logoname"]').css('fill'),
                    family : $(this).parents('.col-lg-3').find('text').css('font-family'),
                    style : $(this).parents('.col-lg-3').find('text').css('font-style'),
                    weight : $(this).parents('.col-lg-3').find('text').css('font-weight'),
                    size : parseInt($(this).parents('.col-lg-3').find('text').css('font-size')),
                    color : $(this).parents('.col-lg-3').find('text').css('fill'),
                    position : {
                        left : $(this).parents('.col-lg-3').attr('logoleft') + 'px',
                        top : $(this).parents('.col-lg-3').attr('logotop') + 'px'
                    },
                    rotate : {
                        degree : '0deg',
                        rad : '0rad'
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
                    icon : svg,
                    size : {
                        width : $(this).parents('.col-lg-3').find('.onlyIconHere').attr('iconwidth') + 'px',
                        height : $(this).parents('.col-lg-3').find('.onlyIconHere').attr('iconheight') + 'px'
                    },
                    position : {
                        left : $(this).parents('.col-lg-3').find('.onlyIconHere').attr('iconleft') + 'px',
                        top : $(this).parents('.col-lg-3').find('.onlyIconHere').attr('icontop') + 'px'
                    },
                    rotate : {
                        degree : '0deg',
                        rad : '0rad'
                    },
                    paths : []
                };

                // $scope.sendSelectedSvg(svgIcon, logoName, slogan);
                $scope.sendSelectedSvg(svgIcon, logoName);
                
                // console.log(svgIcon);
                // console.log(logoName);
                // console.log(slogan);
            }
            else{
                // here comes the buy code
            }
        });
        
        // $('svg').on('click', function(){
        //     $scope.sendSelectedSvg($(this)[0].outerHTML);
        // });
    };

    // $scope.sendSelectedSvg = function(svgIcon, logoName, slogan){
    $scope.sendSelectedSvg = function(svgIcon, logoName){
        // console.log(svg);
        localStorage.setItem('selectedIcon', JSON.stringify(svgIcon));
        localStorage.setItem('selectedLogoName', JSON.stringify(logoName));
        // localStorage.setItem('selectedSloganName', JSON.stringify(slogan));
        window.location.href = "customlogo.html";
    };

    $scope.changeCat = function(){
        $window.location.href = "start.html";
    };


});