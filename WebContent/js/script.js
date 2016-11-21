

$(document).ready(function() {

	var $toggleButton = $('.toggle-button'),
    	$menuWrap = $('.menu-wrap'),
    	$sidebarArrow = $('.sidebar-menu-arrow');

	// Hamburger button

	$toggleButton.on('click', function() {
		$(this).toggleClass('button-open');
		$menuWrap.toggleClass('menu-show');
	});

	// Sidebar navigation arrows

	$sidebarArrow.click(function() {
		$(this).next().slideToggle(300);
	});

});


$(window).scroll(function(){
  // Change this to target a different percentage
  var targetPercentage = 50;
  //Change this to the ID of the content you are trying to show.
  var targetID = "#navigation";
  //Window Math
  var scrollTo = $(window).scrollTop(),
      docHeight = $(document).height(),
      windowHeight = $(window).height();
      scrollPercent = (scrollTo / (docHeight-windowHeight)) * 100;

  //네비바 보이기
  if(scrollPercent > targetPercentage) {
    $(targetID).css({ top: '0' });
  } else {
    $(targetID).css({ top: '-'+$(targetID).height+'px' });
  }
}).trigger('scroll');