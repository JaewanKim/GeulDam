$(function() {
    $('.writingModalPopup').on('click', function( e ) {
        Custombox.open({
            target:    '#modal',
            effect:    'fadein'
        });
        e.preventDefault();
    });
});

$(function() {
    $('.viewingModalPopup').on('click', function( e ) {
        Custombox.open({
            target:    '#modal2',
            effect:    'fadein'
        });
        e.preventDefault();
    });
});