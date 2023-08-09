//Nav actions
$('#navigation li > i').parent().addClass('toggleable');

$('#navigation .toggleable > a').on('click', function(e) {
	e.preventDefault();
	$(this).next('i').toggleClass('fa-caret-down fa-caret-up');
	$(this).parent().toggleClass('open');
});

$('#navigation .not-mobile-search').on('click', function() {
	$(this).parent().parent().next().toggleClass('show-search');
});
$('#navigation .mobile-search').on('click', function() {
	$(this).parent().next().next().toggleClass('show-search');
});


//Back to top
var offset = 300,
	scroll_top_duration = 700;
	$back_to_top = $('.btt');
	
$(window).scroll(function(){
	( $(this).scrollTop() > offset ) ? $back_to_top.addClass('btt-is-visible') : $back_to_top.removeClass('btt-is-visible');
});
//Smooth scroll to top
$back_to_top.on('click', function(event){
	event.preventDefault();
	$('body,html').animate({
		scrollTop: 0 ,
	 	}, scroll_top_duration
	);
});


//Slide Home
$('.statist-slider .slider').slick({
	autoplay: true,
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: false,
	fade: false
});


//Breadcrumnb
$('<li class="breadcrumb-item"><a class="breadcrumb-link" href="/"><span class="breadcrumb-text-truncate">Trang chủ</span></a></li>').insertBefore(".breadcrumb > li:first-child");


//Panel
$('.card .card-header').on('click', function() {
	$(this).children('i').toggleClass('fa-angle-down fa-angle-up');
});


//Tài liệu - Báo cáo công bố
$('.table-fake.content-full').parent().addClass('full-content');
$('.table-fake.content-full').parent().parent().prev().addClass('hide');