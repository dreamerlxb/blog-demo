(function() {
    var ready;
    ready = void 0;
    ready = function() {
        // $('.tray-toggle').click(function (e) {
        //     console.log('click1');
        //     console.log(e)
        //     $(this).addClass('active')
        //     $(this).next('.tray-dropdown').show();
        // })

        $('.tray-li').hover(function () {
            $(this).addClass('active')
            // $(this).css({background: 'red'})
            $(this).children('.tray-dropdown').show();
        }, function() {
            $(this).removeClass('active')
            $(this).children('.tray-dropdown').hide()
        })

        // $('.tray-dropdown').hover(function() {
        //     $(this).prev('.tray-toggle').addClass('active')
        //     $(this).show();
        // }, function () {
        //     $(this).hide();
        //     $(this).prev('.tray-toggle').removeClass('active')
        // })
    };

    $(document).ready(ready);
}).call(this);