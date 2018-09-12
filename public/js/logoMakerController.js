angular.module('logomaker.controllers', ['colorpicker.module']).controller('logoMakerController', function ($scope, $window, $http) {

    // $scope.fontFamilies = [
    //     { id: 0, text: '', html: '', title: 'Gamja Flower', name : '"Gamja Flower", cursive' },
    //     { name : '"Montserrat", sans-serif' },
    //     { name : '"Lato", sans-serif' },
    //     { name : '"Mukta", sans-serif' },
    //     { name : '"Oswald", sans-serif' },
    //     { name : '"Merriweather", serif' },
    //     { name : '"Ubuntu", sans-serif' },
    //     { name : '"Baloo Tammudu", cursive' },
    //     { name : '"Chango", cursive' },
    //     { name : '"Roboto Mono", monospace' },
    //     { name : '"Indie Flower", cursive' },
    //     { name : '"Anton", sans-serif' },
    //     { name : '"Quicksand", sans-serif' },
    //     { name : '"Lobster", cursive' },
    //     { name : '"Fjalla One", sans-serif' },
    //     { name : '"Pacifico", cursive' },
    //     { name : '"Source Code Pro", monospace' },
    //     { name : '"Bree Serif", serif' },
    //     { name : '"Acme", sans-serif' },
    //     { name : '"Abril Fatface", cursive' },
    //     { name : '"Comfortaa", cursive' },
    //     { name : '"Gloria Hallelujah", cursive' },
    //     { name : '"Patua One", cursive' },
    //     { name : '"Permanent Marker", cursive' },
    //     { name : '"Cuprum", sans-serif' },
    //     { name : '"Satisfy", cursive' },
    //     { name : '"Kaushan Script", cursive' },
    //     { name : '"Jua", sans-serif' },
    //     { name : '"Cookie", cursive' },
    //     { name : '"Quattrocento Sans", sans-serif' },
    //     { name : '"Orbitron", sans-serif' },
    //     { name : '"Lobster Two", cursive' },
    //     { name : '"Monoton", cursive' },
    //     { name : '"Fredoka One", cursive' },
    //     { name : '"Caveat", cursive' },
    //     { name : '"Archivo Black", sans-serif' },
    //     { name : '"Luckiest Guy", cursive' },
    //     { name : '"Pontano Sans", sans-serif' },
    //     { name : '"Alfa Slab One", cursive' },
    //     { name : '"Kalam", cursive' },
    //     { name : '"Sacramento", cursive' },
    //     { name : '"Passion One", cursive' },
    //     { name : '"Patrick Hand", cursive' },
    //     { name : '"Neucha", cursive' },
    //     { name : '"Sigmar One", cursive' },
    //     { name : '"Aldrich", sans-serif' },
    //     { name : '"Merienda", cursive' },
    //     { name : '"Ultra", serif' },
    //     { name : '"Bad Script", cursive' },
    //     { name : '"Marck Script", cursive' },
    //     { name : '"Caveat Brush", cursive' },
    //     { name : '"Advent Pro", sans-serif' },
    //     { name : '"Rancho", cursive' },
    //     { name : '"Bevan", cursive' },
    //     { name : '"Fugaz One", cursive' },
    //     { name : '"Chewy", cursive' },
    //     { name : '"Nothing You Could Do", cursive' },
    //     { name : '"Alegreya Sans SC", sans-serif' },
    //     { name : '"Kirang Haerang", cursive' },
    //     { name : '"IBM Plex Mono", monospace' },
    //     { name : '"Fredericka the Great", cursive' },
    //     { name : '"Gochi Hand", cursive' },
    //     { name : '"Just Another Hand", cursive' },
    //     { name : '"Reenie Beanie", cursive' },
    //     { name : '"Knewave", cursive' },
    //     { name : '"Jaldi", sans-serif' },
    //     { name : '"Pridi", serif' },
    //     { name : '"Carme", sans-serif' },
    //     { name : '"Love Ya Like A Sister", cursive' },
    //     { name : '"Contrail One", cursive' },
    //     { name : '"Voltaire", sans-serif' },
    //     { name : '"Martel Sans", sans-serif' },
    //     { name : '"Cinzel Decorative", cursive' },
    //     { name : '"Aclonica", sans-serif' },
    //     { name : '"Annie Use Your Telescope", cursive' },
    //     { name : '"Rammetto One", cursive' }
    // ];

    $scope.fontFamilies = [
        { id: 0, text: "<div style='font-family: Gamja Flower, cursive'>Gamja Flower</div>", html: "<div style='font-family: Gamja Flower, cursive'>Gamja Flower</div>", title: '"Gamja Flower", cursive'},
        { id: 1, text: "<div style='font-family: Montserrat, sans-serif'>Montserrats</div>", html: "<div style='font-family: Montserrat, sans-serif'>Montserrat</div>", title: '"Montserrat", sans-serif' },
        { id: 2, text: "<div style='font-family: Lato, sans-serif'>Lato</div>", html: "<div style='font-family: Lato, sans-serif'>Lato</div>", title: '"Lato", sans-serif' },
        { id: 3, text: "<div style='font-family: Mukta, sans-serif'>Mukta</div>", html: "<div style='font-family: Mukta, sans-serif'>Mukta</div>", title: '"Mukta", sans-serif' },
        { id: 4, text: "<div style='font-family: Oswald, sans-serif'>Oswald</div>", html: "<div style='font-family: Oswald, sans-serif'>Oswald</div>", title: '"Oswald", sans-serif' },
        { id: 5, text: "<div style='font-family: Merriweather, serif'>Merriweather</div>", html: "<div style='font-family: Merriweather, serif'>Merriweather</div>", title: '"Merriweather", serif' },
        { id: 6, text: "<div style='font-family: Ubuntu, sans-serif'>Ubuntu</div>", html: "<div style='font-family: Ubuntu, sans-serif'>Ubuntu</div>", title: '"Ubuntu", sans-serif' },
        { id: 7, text: "<div style='font-family: Baloo Tammudu, cursive'>Baloo Tammudu</div>", html: "<div style='font-family: Baloo Tammudu, cursive'>Baloo Tammudu</div>", title: '"Baloo Tammudu", cursive' },
        { id: 8, text: "<div style='font-family: Chango, cursive'>Chango</div>", html: "<div style='font-family: Chango, cursive'>Chango</div>", title: '"Chango", cursive' },
        { id: 9, text: "<div style='font-family: Roboto Mono, monospace'>Roboto Mono</div>", html: "<div style='font-family: Roboto Mono, monospace'>Roboto Mono</div>", title: '"Roboto Mono", monospace' },
        { id: 10, text: "<div style='font-family: Indie Flower, cursive'>Indie Flower</div>", html: "<div style='font-family: Indie Flower, cursive'>Indie Flower</div>", title: '"Indie Flower", cursive' },
        { id: 11, text: "<div style='font-family: Anton, sans-serif'>Anton</div>", html: "<div style='font-family: Anton, sans-serif'>Anton</div>", title: '"Anton", sans-serif' },
        { id: 11, text: "<div style='font-family: Anton, sans-serif'>Anton</div>", html: "<div style='font-family: Anton, sans-serif'>Anton</div>", title : '"Anton", sans-serif' },
        { id: 12, text: "<div style='font-family: Quicksand, sans-serif'>Quicksand</div>", html: "<div style='font-family: Quicksand, sans-serif'>Quicksand</div>", title : '"Quicksand", sans-serif' },
        { id: 13, text: "<div style='font-family: Lobster, cursive'>Lobster</div>", html: "<div style='font-family: Lobster, cursive'>Lobster</div>", title : '"Lobster", cursive' },
        { id: 14, text: "<div style='font-family: Fjalla One, sans-serif'>Fjalla One</div>", html: "<div style='font-family: Fjalla One, sans-serif'>Fjalla One</div>", title : '"Fjalla One", sans-serif' },
        { id: 15, text: "<div style='font-family: Pacifico, cursive'>Pacifico</div>", html: "<div style='font-family: Pacifico, cursive'>Pacifico</div>", title : '"Pacifico", cursive' },
        { id: 16, text: "<div style='font-family: Source Code Pro, monospace'>Source Code Pro</div>", html: "<div style='font-family: Source Code Pro, monospace'>Source Code Pro</div>", title : '"Source Code Pro", monospace' },
        { id: 17, text: "<div style='font-family: Bree Serif, serif'>Bree Serif</div>", html: "<div style='font-family: Bree Serif, serif'>Bree Serif</div>", title : '"Bree Serif", serif' },
        { id: 18, text: "<div style='font-family: Acme, sans-serif'>Acme</div>", html: "<div style='font-family: Acme, sans-serif'>Acme</div>", title : '"Acme", sans-serif' },
        { id: 19, text: "<div style='font-family: Abril Fatface, cursive'>Abril Fatface</div>", html: "<div style='font-family: Abril Fatface, cursive'>Abril Fatface</div>", title : '"Abril Fatface", cursive' },
        { id: 20, text: "<div style='font-family: Comfortaa, cursive'>Comfortaa</div>", html: "<div style='font-family: Comfortaa, cursive'>Comfortaa</div>", title : '"Comfortaa", cursive' },
        { id: 21, text: "<div style='font-family: Gloria Hallelujah, cursive'>Gloria Hallelujah</div>", html: "<div style='font-family: Gloria Hallelujah, cursive'>Gloria Hallelujah</div>", title : '"Gloria Hallelujah", cursive' },
        { id: 22, text: "<div style='font-family: Patua One, cursive'>Patua One</div>", html: "<div style='font-family: Patua One, cursive'>Patua One</div>", title : '"Patua One", cursive' },
        { id: 23, text: "<div style='font-family: Permanent Marker, cursive'>Permanent Marker</div>", html: "<div style='font-family: Permanent Marker, cursive'>Permanent Marker</div>", title : '"Permanent Marker", cursive' },
        { id: 24, text: "<div style='font-family: Cuprum, sans-serif'>Cuprum</div>", html: "<div style='font-family: Cuprum, sans-serif'>Cuprum</div>", title : '"Cuprum", sans-serif' },
        { id: 25, text: "<div style='font-family: Satisfy, cursive'>Satisfy</div>", html: "<div style='font-family: Satisfy, cursive'>Satisfy</div>", title : '"Satisfy", cursive' },
        { id: 26, text: "<div style='font-family: Kaushan Script, cursive'>Kaushan Script</div>", html: "<div style='font-family: Kaushan Script, cursive'>Kaushan Script</div>", title : '"Kaushan Script", cursive' },
        { id: 27, text: "<div style='font-family: Jua, sans-serif'>Jua</div>", html: "<div style='font-family: Jua, sans-serif'>Jua</div>", title : '"Jua", sans-serif' },
        { id: 28, text: "<div style='font-family: Cookie, cursive'>Cookie</div>", html: "<div style='font-family: Cookie, cursive'>Cookie</div>", title : '"Cookie", cursive' },
        { id: 29, text: "<div style='font-family: Quattrocento Sans, sans-serif'>Quattrocento Sans</div>", html: "<div style='font-family: Quattrocento Sans, sans-serif'>Quattrocento Sans</div>", title : '"Quattrocento Sans", sans-serif' },
        { id: 30, text: "<div style='font-family: Orbitron, sans-serif'>Orbitron</div>", html: "<div style='font-family: Orbitron, sans-serif'>Orbitron</div>", title : '"Orbitron", sans-serif' },
        { id: 31, text: "<div style='font-family: Lobster Two, cursive'>Lobster Two</div>", html: "<div style='font-family: Lobster Two, cursive'>Lobster Two</div>", title : '"Lobster Two", cursive' },
        { id: 32, text: "<div style='font-family: Monoton, cursive'>Monoton</div>", html: "<div style='font-family: Monoton, cursive'>Monoton</div>", title : '"Monoton", cursive' },
        { id: 33, text: "<div style='font-family: Fredoka One, cursive'>Fredoka One</div>", html: "<div style='font-family: Fredoka One, cursive'>Fredoka One</div>", title : '"Fredoka One", cursive' },
        { id: 34, text: "<div style='font-family: Caveat, cursive'>Caveat</div>", html: "<div style='font-family: Caveat, cursive'>Caveat</div>", title : '"Caveat", cursive' },
        { id: 35, text: "<div style='font-family: Archivo Black, sans-serif'>Archivo Black</div>", html: "<div style='font-family: Archivo Black, sans-serif'>Archivo Black</div>", title : '"Archivo Black", sans-serif' },
        { id: 36, text: "<div style='font-family: Luckiest Guy, cursive'>Luckiest Guy</div>", html: "<div style='font-family: Luckiest Guy, cursive'>Luckiest Guy</div>", title : '"Luckiest Guy", cursive' },
        { id: 37, text: "<div style='font-family: Pontano Sans, sans-serif'>Pontano Sans</div>", html: "<div style='font-family: Pontano Sans, sans-serif'>Pontano Sans</div>", title : '"Pontano Sans", sans-serif' },
        { id: 38, text: "<div style='font-family: Alfa Slab One, cursive'>Alfa Slab One</div>", html: "<div style='font-family: Alfa Slab One, cursive'>Alfa Slab One</div>", title : '"Alfa Slab One", cursive' },
        { id: 39, text: "<div style='font-family: Kalam, cursive'>Kalam</div>", html: "<div style='font-family: Kalam, cursive'>Kalam</div>", title : '"Kalam", cursive' },
        { id: 40, text: "<div style='font-family: Sacramento, cursive'>Sacramento</div>", html: "<div style='font-family: Sacramento, cursive'>Sacramento</div>", title : '"Sacramento", cursive' },
        { id: 41, text: "<div style='font-family: Passion One, cursive'>Passion One</div>", html: "<div style='font-family: Passion One, cursive'>Passion One</div>", title : '"Passion One", cursive' },
        { id: 42, text: "<div style='font-family: Patrick Hand, cursive'>Patrick Hand</div>", html: "<div style='font-family: Patrick Hand, cursive'>Patrick Hand</div>", title : '"Patrick Hand", cursive' },
        { id: 43, text: "<div style='font-family: Neucha, cursive'>Neucha</div>", html: "<div style='font-family: Neucha, cursive'>Neucha</div>", title : '"Neucha", cursive' },
        { id: 44, text: "<div style='font-family: Sigmar One, cursive'>Sigmar One</div>", html: "<div style='font-family: Sigmar One, cursive'>Sigmar One</div>", title : '"Sigmar One", cursive' },
        { id: 45, text: "<div style='font-family: Aldrich, sans-serif'>Aldrich</div>", html: "<div style='font-family: Aldrich, sans-serif'>Aldrich</div>", title : '"Aldrich", sans-serif' },
        { id: 46, text: "<div style='font-family: Merienda, cursive'>Merienda</div>", html: "<div style='font-family: Merienda, cursive'>Merienda</div>", title : '"Merienda", cursive' },
        { id: 47, text: "<div style='font-family: Ultra, serif'>Ultra</div>", html: "<div style='font-family: Ultra, serif'>Ultra</div>", title : '"Ultra", serif' },
        { id: 48, text: "<div style='font-family: Bad Script, cursive'>Bad Script</div>", html: "<div style='font-family: Bad Script, cursive'>Bad Script</div>", title : '"Bad Script", cursive' },
        { id: 49, text: "<div style='font-family: Marck Script, cursive'>Marck Script</div>", html: "<div style='font-family: Marck Script, cursive'>Marck Script</div>", title : '"Marck Script", cursive' },
        { id: 50, text: "<div style='font-family: Caveat Brush, cursive'>Caveat Brush</div>", html: "<div style='font-family: Caveat Brush, cursive'>Caveat Brush</div>", title : '"Caveat Brush", cursive' },
        { id: 51, text: "<div style='font-family: Advent Pro, sans-serif'>Advent Pro</div>", html: "<div style='font-family: Advent Pro, sans-serif'>Advent Pro</div>", title : '"Advent Pro", sans-serif' },
        { id: 52, text: "<div style='font-family: Rancho, cursive'>Rancho</div>", html: "<div style='font-family: Rancho, cursive'>Rancho</div>", title : '"Rancho", cursive' },
        { id: 53, text: "<div style='font-family: Bevan, cursive'>Bevan</div>", html: "<div style='font-family: Bevan, cursive'>Bevan</div>", title : '"Bevan", cursive' },
        { id: 54, text: "<div style='font-family: Fugaz One, cursive'>Fugaz One</div>", html: "<div style='font-family: Fugaz One, cursive'>Fugaz One</div>", title : '"Fugaz One", cursive' },
        { id: 55, text: "<div style='font-family: Chewy, cursive'>Chewy</div>", html: "<div style='font-family: Chewy, cursive'>Chewy</div>", title : '"Chewy", cursive' },
        { id: 56, text: "<div style='font-family: Nothing You Could Do, cursive'>Nothing You Could Do</div>", html: "<div style='font-family: Nothing You Could Do, cursive'>Nothing You Could Do</div>", title : '"Nothing You Could Do", cursive' },
        { id: 57, text: "<div style='font-family: Alegreya Sans SC, sans-serif'>Alegreya Sans SC</div>", html: "<div style='font-family: Alegreya Sans SC, sans-serif'>Alegreya Sans SC</div>", title : '"Alegreya Sans SC", sans-serif' },
        { id: 58, text: "<div style='font-family: Kirang Haerang, cursive'>Kirang Haerang</div>", html: "<div style='font-family: Kirang Haerang, cursive'>Kirang Haerang</div>", title : '"Kirang Haerang", cursive' },
        { id: 59, text: "<div style='font-family: IBM Plex Mono, monospace'>IBM Plex Mono</div>", html: "<div style='font-family: IBM Plex Mono, monospace'>IBM Plex Mono</div>", title : '"IBM Plex Mono", monospace' },
        { id: 60, text: "<div style='font-family: Fredericka the Great, cursive'>Fredericka the Great</div>", html: "<div style='font-family: Fredericka the Great, cursive'>Fredericka the Great</div>", title : '"Fredericka the Great", cursive' },
        { id: 61, text: "<div style='font-family: Gochi Hand, cursive'>Gochi Hand</div>", html: "<div style='font-family: Gochi Hand, cursive'>Gochi Hand</div>", title : '"Gochi Hand", cursive' },
        { id: 62, text: "<div style='font-family: Just Another Hand, cursive'>Just Another Hand</div>", html: "<div style='font-family: Just Another Hand, cursive'>Just Another Hand</div>", title : '"Just Another Hand", cursive' },
        { id: 63, text: "<div style='font-family: Reenie Beanie, cursive'>Reenie Beanie</div>", html: "<div style='font-family: Reenie Beanie, cursive'>Reenie Beanie</div>", title : '"Reenie Beanie", cursive' },
        { id: 64, text: "<div style='font-family: Knewave, cursive'>Knewave</div>", html: "<div style='font-family: Knewave, cursive'>Knewave</div>", title : '"Knewave", cursive' },
        { id: 65, text: "<div style='font-family: Jaldi, sans-serif'>Jaldi</div>", html: "<div style='font-family: Jaldi, sans-serif'>Jaldi</div>", title : '"Jaldi", sans-serif' },
        { id: 66, text: "<div style='font-family: Pridi, serif'>Pridi</div>", html: "<div style='font-family: Pridi, serif'>Pridi</div>", title : '"Pridi", serif' },
        { id: 67, text: "<div style='font-family: Carme, sans-serif'>Carme</div>", html: "<div style='font-family: Carme, sans-serif'>Carme</div>", title : '"Carme", sans-serif' },
        { id: 68, text: "<div style='font-family: Love Ya Like A Sister, cursive'>Love Ya Like A Sister</div>", html: "<div style='font-family: Love Ya Like A Sister, cursive'>Love Ya Like A Sister</div>", title : '"Love Ya Like A Sister", cursive' },
        { id: 69, text: "<div style='font-family: Contrail One, cursive'>Contrail One</div>", html: "<div style='font-family: Contrail One, cursive'>Contrail One</div>", title : '"Contrail One", cursive' },
        { id: 70, text: "<div style='font-family: Voltaire, sans-serif'>Voltaire</div>", html: "<div style='font-family: Voltaire, sans-serif'>Voltaire</div>", title : '"Voltaire", sans-serif' },
        { id: 71, text: "<div style='font-family: Martel Sans, sans-serif'>Martel Sans</div>", html: "<div style='font-family: Martel Sans, sans-serif'>Martel Sans</div>", title : '"Martel Sans", sans-serif' },
        { id: 72, text: "<div style='font-family: Cinzel Decorative, cursive'>Cinzel Decorative</div>", html: "<div style='font-family: Cinzel Decorative, cursive'>Cinzel Decorative</div>", title : '"Cinzel Decorative", cursive' },
        { id: 73, text: "<div style='font-family: Aclonica, sans-serif'>Aclonica</div>", html: "<div style='font-family: Aclonica, sans-serif'>Aclonica</div>", title : '"Aclonica", sans-serif' },
        { id: 74, text: "<div style='font-family: Annie Use Your Telescope, cursive'>Annie Use Your Telescope</div>", html: "<div style='font-family: Annie Use Your Telescope, cursive'>Annie Use Your Telescope</div>", title : '"Annie Use Your Telescope", cursive' },
        { id: 75, text: "<div style='font-family: Rammetto One, cursive'>Rammetto One</div>", html: "<div style='font-family: Rammetto One, cursive'>Rammetto One</div>", title : '"Rammetto One", cursive' }
    ];

    $scope.logoName = JSON.parse(localStorage.getItem('selectedLogoName'));
    // $scope.slogan = JSON.parse(localStorage.getItem('selectedSloganName'));
    $scope.svg = JSON.parse(localStorage.getItem('selectedIcon'));
    $scope.slogan = {
        name : "slogan name here",
        showSlogan : false,
        family : "Gamja Flower, cursive",
        style : "normal",
        weight : "400",
        size : "35",
        color : "rgb(91, 237, 15)",
        position : {
            left : "20px",
            top : "20px"
        },
        rotate : {
            degree : '0deg',
            rad : '0rad'
        }
    };
    $scope.background = "#ffffff";
    $scope.editStep = -1;
    $scope.editHistory = [];
    $scope.completeLogo = {};
    // $scope.showlogosetting = true;
    // $scope.showslogansetting = false;
    // $scope.showiconsetting = false;

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

        // if(!localStorage.getItem('selectedLogoName') || !localStorage.getItem('selectedSloganName') || !localStorage.getItem('selectedIcon')){
        if(!localStorage.getItem('selectedLogoName') || !localStorage.getItem('selectedIcon')){
            window.location.href = "start.html";
        }
        else{
            $scope.loadLogo();
        }
      
        $scope.initSelect2();
        document.onkeydown = $scope.keyPress;
        $scope.reserveUser();

    };

    $scope.reserveUser = function(){
        $("body").on("contextmenu",function(e){
            return false;
        });
    };

    // $scope.checkFont = function(family, name){
    //     if(name.replace(/'/g, '').replace(/"/g, '') == family.replace(/'/g, '').replace(/"/g, '')){
    //         console.log(name);
    //         return true;
    //     }
    //     else{
    //         return false;
    //     }
    // };

    $scope.loadLogo = function() {

        $('#svgIconHere').append($scope.svg.icon); // append list to the editor with logo, name and slogan.
        $scope.initSvgSettings();

        $('#svgIconHere').draggable({
            containment: "#draggableParent",
            start: function(event, ui){
                // $scope.initSettings(event, ui);
                // console.log(ui);
            },
            stop: function(event, ui){
                $scope.svg.position.left = ui.position.left + 'px';
                $scope.svg.position.top = ui.position.top + 'px';
                $scope.updateHistory();
                // console.log($scope.svg);
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
                $scope.updateHistory();
                // console.log($scope.svg);
            }
        }).rotatable({
            wheelRotate : false,
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
                $scope.updateHistory();
                // console.log($scope.svg);
            }
        });

        $('#logoNameHere, #sloganNameHere').draggable({
            containment: "#draggableParent",
            // snap: true,
            // grid: [ 10, 10 ],
            start: function(event, ui){
                // $scope.initSettings(event, ui);
                // console.log(ui);
            },
            stop: function(event, ui){
                $scope.updatePosition(event, ui);
                $scope.updateHistory();
            }
        }).rotatable({
            wheelRotate : false,
            // Callback fired on rotation start.
            start: function(event, ui) {
            },
            // Callback fired during rotation.
            rotate: function(event, ui) {
            },
            // Callback fired on rotation end.
            stop: function(event, ui) {
                $scope.updateRotate(event, ui);
                $scope.updateHistory();
            }
        });

        $scope.initPlugins(); //initializes the tooltip

        // $('#logoNameHere, #sloganNameHere, #svgIconHere').on('click', function(){
        //     $scope.setupSettings($(this).attr('id'));
        // });

    };

    // $scope.initSettings = function (event, ui){
    //     var id = event.currentTarget.id;
    //     $scope.setupSettings(id);
    // };

    $scope.initPlugins = function(){
        
        $('.ui-rotatable-handle').attr('title', "rotate").addClass('tooltipster');
        $('.ui-resizable-handle').attr('title', "resize").addClass('tooltipster');
        $('.switchery').attr('title', "Add Text").addClass('tooltipster');
        
        $('.tooltipster').tooltipster({
            animation: 'fade',
            delay: 0,
            theme: 'tooltipster-borderless'
        });
        
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
            // console.log($scope.logoName);
        }
        else if(id == 'sloganNameHere'){
            $scope.slogan.position.left = ui.position.left + 'px';
            $scope.slogan.position.top = ui.position.top + 'px';
            // console.log($scope.slogan);
        }
    };

    $scope.updateRotate = function (event, ui){
        var id = event.target.id;

        if(id == "logoNameHere"){
            $scope.logoName.rotate.rad = ui.angle.current + 'rad';
            $scope.logoName.rotate.degree = ui.angle.degrees + 'deg';
            // console.log($scope.logoName);
        }
        else if(id == 'sloganNameHere'){
            $scope.slogan.rotate.rad = ui.angle.current + 'rad';
            $scope.slogan.rotate.degree = ui.angle.degrees + 'deg';
            // console.log($scope.slogan);
        }
    };

    $scope.initSvgSettings = function (){

        $('#svgIconHere svg#Layer_2').css({'width':'100%', 'height':'100%', 'display':''});
        // $('#svgIconHere svg text[id="logoname"], #svgIconHere svg text[id="sloganname"]').remove();

        $('#svgIconHere svg path, #svgIconHere svg rect, #svgIconHere svg polygon, #svgIconHere svg circle, #svgIconHere svg ellipse').each(function(index){
            $(this).attr('id', 'vector_id_' + index).attr('pathid', index);
            var fillcolor = $(this).css('fill');
            if(fillcolor.indexOf('linear-gradient') > -1){
                fillcolor = '';
            }
            var path_here = { id : 'vector_id_' + index, fill : fillcolor };
            $scope.svg.paths.push(path_here);
        }).on('click', function(e){

            e.stopPropagation();

            $('#iconSettings').css('display', 'block');
            var pathId = $('#' + $(this).attr('id')).attr('pathid');

            for(var i in $scope.svg.paths) {
                $('#input_' + $scope.svg.paths[i].id + ' input').css('border-bottom', '1px #5d5d5d solid');
            }
            $('#input_' + $scope.svg.paths[pathId].id + ' input').css('border-bottom', '2px #ff3203 solid');

        });

    };

    $scope.updateFillColor = function (id) {
        // console.log(id);
        var onlyId = $('#' + id).attr('pathid');
        $('#' + id).css('fill', $scope.svg.paths[onlyId].fill);
    };

    $scope.updateHistory = function(){
        $scope.editStep++;
        var update = {
            svg : $scope.svg,
            logoname : $scope.logoName,
            slogan : $scope.slogan
        };
        if($scope.editStep < $scope.editHistory.length){
            $scope.editHistory.length = $scope.editStep;
        }
        $scope.editHistory.push(JSON.stringify(update));
        // console.log($scope.editHistory);
    };

    $scope.undoredo = function(check){
            if(check == 'undo'){
                if($scope.editStep > 0){
                    $scope.editStep--;
                    // var undoValue = parseInt($('#draggableParent').attr('undo'));
                    var newsvg = JSON.parse($scope.editHistory[$scope.editStep]);
                    $scope.svg = newsvg.svg;
                    $scope.logoName = newsvg.logoname;
                    $scope.slogan = newsvg.slogan;
                    // $('#draggableParent').attr('undo', undoValue+1);
                }
            }
            else{
                if($scope.editStep < $scope.editHistory.length-1){
                    $scope.editStep++;
                    // var undoValue = parseInt($('#draggableParent').attr('undo'));
                    var newsvg = JSON.parse($scope.editHistory[$scope.editStep]);
                    $scope.svg = newsvg.svg;
                    $scope.logoName = newsvg.logoname;
                    $scope.slogan = newsvg.slogan;
                    // $('#draggableParent').attr('undo', undoValue+1);
                }
            }
        // $scope.svg.position.left = "0px"
    };

    $scope.keyPress = function(e) {
        var evtobj = window.event? event : e
        if (evtobj.keyCode == 90 && evtobj.ctrlKey && !evtobj.shiftKey){
            $('i#undoHere').trigger('click');
        }
        if (evtobj.keyCode == 90 && evtobj.ctrlKey && evtobj.shiftKey){
            $('i#redoHere').trigger('click');
        }

        if(event.keyCode == 123) {
            return false;
        }
        if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
            return false;
        }
        if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
            return false;
        }
        if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
            return false;
        }
        if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
            return false;
        }
    };

    $scope.initSelect2 = function(){
        $(".select2").select2({
            data: $scope.fontFamilies,
            escapeMarkup: function(markup) {
                return markup;
            },
            templateResult: function(data) {
                return data.html;
            },
            templateSelection: function(data) {
                return data.text;
            }
        });
        for(var i in $scope.fontFamilies){
            if($scope.logoName.family.replace(/'/g, '').replace(/"/g, '') == $scope.fontFamilies[i].title.replace(/'/g, '').replace(/"/g, '')){
                $('.select2.font').val(i-1).trigger('change.select2');
                // console.log();
            }
        }
    
        $('.select2.font').on('select2:select', function (e) {
            var data = e.params.data;
            $scope.logoName.family = data.title.replace(/"/g, '').replace(/'/g, '');
            $('#logoNameHere').css('font-family', $scope.logoName.family);
        });
        $('.select2.text').on('select2:select', function (e) {
            var data = e.params.data;
            $scope.slogan.family = data.title.replace(/"/g, '').replace(/'/g, '');
            $('#sloganNameHere').css('font-family', $scope.slogan.family);
        });

        setTimeout(function(){
            var fontWidth = parseInt($('#logoNameHere').css('width')),
            fontLeftValue = 390 - parseInt(fontWidth/2);
            $('#logoNameHere').css('left', fontLeftValue + 'px');
            $scope.logoName.position.left = fontLeftValue + 'px';

            var iconWidth = parseInt($('#svgIconHere').css('width')),
            iconLeftValue = 390 - parseInt(iconWidth/2);
            $('#svgIconHere').css('left', iconLeftValue + 'px');
            $scope.svg.position.left = iconLeftValue + 'px';
        }, 50);

    };

    $scope.changeLogo = function(){
        $window.location.href = "logos.html"
    };
    
    $scope.finish = function(){
        $scope.completeLogo = {
            svg : $scope.svg,
            logoname : $scope.logoName,
            slogan : $scope.slogan,
            email : localStorage.getItem('emailAddress')
        };

        console.log($scope.completeLogo);

        $.ajax({
            type: 'POST',
            url: '../../../check_out.php',
            dataType: "json",
            data: { data: JSON.stringify($scope.completeLogo) },
            success: function(data) {
                //window.location.href = "../../../check_out.php";
            },
            error: function(error) {
                console.log(error.responseText);
                if(error.responseText == "success"){
                    window.location.href = "../../../check_out.php";
                }
            }
        });
        
    };

});