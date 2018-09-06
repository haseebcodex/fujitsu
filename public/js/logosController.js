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

    $scope.fontFamilies = [
        { name : "'Gamja Flower', cursive" },
        { name : "'Montserrat', sans-serif" },
        { name : "'Lato', sans-serif" },
        { name : "'Mukta', sans-serif" },
        { name : "'Oswald', sans-serif" },
        { name : "'Merriweather', serif" },
        { name : "'Ubuntu', sans-serif" },
        { name : "'Baloo Tammudu', cursive" },
        { name : "'Chango', cursive" },
        { name : "'Roboto Mono', monospace" },
        { name : "'Indie Flower', cursive" },
        { name : "'Anton', sans-serif" },
        { name : "'Quicksand', sans-serif" },
        { name : "'Lobster', cursive" },
        { name : "'Fjalla One', sans-serif" },
        { name : "'Pacifico', cursive" },
        { name : "'Source Code Pro', monospace" },
        { name : "'Bree Serif', serif" },
        { name : "'Acme', sans-serif" },
        { name : "'Abril Fatface', cursive" },
        { name : "'Comfortaa', cursive" },
        { name : "'Gloria Hallelujah', cursive" },
        { name : "'Patua One', cursive" },
        { name : "'Permanent Marker', cursive" },
        { name : "'Cuprum', sans-serif" },
        { name : "'Satisfy', cursive" },
        { name : "'Kaushan Script', cursive" },
        { name : "'Jua', sans-serif" },
        { name : "'Cookie', cursive" },
        { name : "'Quattrocento Sans', sans-serif" },
        { name : "'Orbitron', sans-serif" },
        { name : "'Lobster Two', cursive" },
        { name : "'Monoton', cursive" },
        { name : "'Fredoka One', cursive" },
        { name : "'Caveat', cursive" },
        { name : "'Archivo Black', sans-serif" },
        { name : "'Luckiest Guy', cursive" },
        { name : "'Pontano Sans', sans-serif" },
        { name : "'Alfa Slab One', cursive" },
        { name : "'Kalam', cursive" },
        { name : "'Sacramento', cursive" },
        { name : "'Passion One', cursive" },
        { name : "'Patrick Hand', cursive" },
        { name : "'Neucha', cursive" },
        { name : "'Sigmar One', cursive" },
        { name : "'Aldrich', sans-serif" },
        { name : "'Merienda', cursive" },
        { name : "'Ultra', serif" },
        { name : "'Bad Script', cursive" },
        { name : "'Marck Script', cursive" },
        { name : "'Caveat Brush', cursive" },
        { name : "'Advent Pro', sans-serif" },
        { name : "'Rancho', cursive" },
        { name : "'Bevan', cursive" },
        { name : "'Fugaz One', cursive" },
        { name : "'Chewy', cursive" },
        { name : "'Nothing You Could Do', cursive" },
        { name : "'Alegreya Sans SC', sans-serif" },
        { name : "'Kirang Haerang', cursive" },
        { name : "'IBM Plex Mono', monospace" },
        { name : "'Fredericka the Great', cursive" },
        { name : "'Gochi Hand', cursive" },
        { name : "'Just Another Hand', cursive" },
        { name : "'Reenie Beanie', cursive" },
        { name : "'Knewave', cursive" },
        { name : "'Jaldi', sans-serif" },
        { name : "'Pridi', serif" },
        { name : "'Carme', sans-serif" },
        { name : "'Love Ya Like A Sister', cursive" },
        { name : "'Contrail One', cursive" },
        { name : "'Voltaire', sans-serif" },
        { name : "'Martel Sans', sans-serif" },
        { name : "'Cinzel Decorative', cursive" },
        { name : "'Aclonica', sans-serif" },
        { name : "'Annie Use Your Telescope', cursive" },
        { name : "'Rammetto One', cursive" }
    ];

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
        $('svg text').each(function(index){
            var randomIndex = Math.floor(Math.random() * 75);
            $(this).css('font-family', $scope.fontFamilies[randomIndex].name);
            console.log($scope.fontFamilies[randomIndex].name, randomIndex);
        });
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