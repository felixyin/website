/*-----------------------------------------------------------------------------------
/*
/* Custom JS
 /*
-----------------------------------------------------------------------------------*/

/* Start Document */
$(function () {


    /*----------------------------------------------------*/
    /*	Responsive Menu
    /*----------------------------------------------------*/
    $("<h3 style=\"\n" +
        "    display: inline-block;\n" +
        "    margin-top: 0;\n" +
        "    font-size: 25px;\n" +
        "    color: white;\n" +
        "    font-weight: bold;\n" +
        "\">尹彬的博客</h3>").appendTo('#navigation');
    // Create the dropdown bases
    $("<select />").appendTo("#navigation");

    // Create default option "Go to..."
    $("<option />", {
        "selected": "selected",
        "value": "",
        "text": "导航菜单"
    }).appendTo("#navigation select");


    // Populate dropdowns with the first menu items
    $("#navigation li a").each(function () {
        var el = $(this);
        $("<option />", {
            "value": el.attr("href"),
            "text": el.text()
        }).appendTo("#navigation select");
    });


    //make responsive dropdown menu actually work
    $("#navigation select").change(function () {
        window.location = $(this).find("option:selected").val();
    });

    /*----------------------------------------------------*/
    /*	Back To Top Button
    /*----------------------------------------------------*/
    var pxShow = 300;//height on which the button will show
    var fadeInTime = 400;//how slow/fast you want the button to show
    var fadeOutTime = 400;//how slow/fast you want the button to hide
    var scrollSpeed = 400;//how slow/fast you want the button to scroll to top. can be a value, 'slow', 'normal' or 'fast'

    jQuery(window).scroll(function () {
        if (jQuery(window).scrollTop() >= pxShow) {
            jQuery("#backtotop").fadeIn(fadeInTime);
        } else {
            jQuery("#backtotop").fadeOut(fadeOutTime);
        }
    });

    jQuery('#backtotop a').click(function () {
        jQuery('html, body').animate({scrollTop: 0}, scrollSpeed);
        return false;
    });

    /* End Document */


    // TODO 顶部导航栏高亮，临时用，支持无限多级导航
    var is_first_page = false;
    var path = window.location.pathname;
    $('#navigation>ul>li>a').each(function (idx, ele) {
        $(ele).parent().find('a').each(function (idx2, ele2) {
            var href = $(ele2).attr('href');
            href = href.replace('/', '');
            console.log(path, href);
            if (href) {
                if (path.indexOf(href) !== -1 && href) {
                    $(ele).attr('id', 'current');
                    is_first_page = false;
                }
            } else {
                is_first_page = true;
            }
            return false;
        });
    });
    if (is_first_page) {
        $('#navigation>ul>li>a').first().attr('id', 'current');
    }

    var $optionSets = $('#filters .option-set'),
        $optionLinks = $optionSets.find('a');
    var $projectSets = $('#portfolio-wrapper').children('div');

    $optionLinks.click(function () {
        $optionLinks.removeClass('selected');
        $(this).addClass('selected');
        var ov = $(this).data('option-value');
        $projectSets.each(function () {
            var sn = $(this).data('service-name');
            if (ov === 'All') {
                $(this).show();
            } else {
                if (ov === sn) {
                    $(this).fadeIn(500);
                } else {
                    $(this).fadeOut(500)
                }
            }
        });
        return false;
    });

    /*----------------------------------------------------*/
    /*	Isotope Portfolio Filter
    /*----------------------------------------------------*/

    try {
        var $container = $('#portfolio-wrapper');
        // initialize Isotope
        // $container.isotope({
        //     // options...
        //     resizable: true, // disable normal resizing
        //     // set columnWidth to a percentage of container width
        //     masonry: {columnWidth: $container.width() / 12}
        // });

        // update columnWidth on window resize
        // $(window).bind('debouncedresize', function () {
        //     $container.isotope({
        //         // update columnWidth to a percentage of container width
        //         masonry: {columnWidth: $container.width() / 12}
        //     });
        // });


        $container.isotope({
            itemSelector: '.portfolio-item'
        });


    } catch (e) {
    }

});
