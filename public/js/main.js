var $inputItem = $(".js-inputWrapper");
$inputItem.length &&
    $inputItem.each(function() {
        var $this = $(this),
            $input = $this.find(".formRow--input"),
            placeholderTxt = $input.attr("placeholder"),
            $placeholder;

        $input.after('<span class="placeholder">' + placeholderTxt + "</span>"),
            $input.attr("placeholder", ""),
            ($placeholder = $this.find(".placeholder")),
            // $input.val().length ?
            // $this.addClass("active") :
            // $this.removeClass("active"),
            $input
            .on("focusout", function() {
                $input.val().length ?
                    $this.addClass("active") :
                    $this.removeClass("active");
            })
            .on("focus", function() {
                $this.addClass("active");
            });

    });

// $(document).ready(function() {
//     $('.js-example-basic-multiple').select2();

// });

// $('.js-example-basic-multiple').select2({
//     placeholder: "Select"
// });

// "use strict";

// $(document).ready(function domReady() {
//     $(".js-select2").select2({
//         placeholder: "Choose Category",
//         theme: "material"
//     });

//     $(".select2-selection__arrow")
//         .addClass("material-icons")
//         .html("arrow_drop_down");
// });