$(function() {
    $('.writingModalPopup').on('click', function( e ) {
        Custombox.open({
            target:    '#modal',
            effect:    'fadein'
        });
        e.preventDefault();
    });
});
