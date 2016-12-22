//sử lý đăng nhập thành công thì xóa đi đăng nhập và đăng ký

var $headernav = $('#bs-example-navbar-collapse-1 ul.mynav');   
function isLogin(){
	var bool = Math.floor($headernav.attr('noLogin'));	
	var lsLi = $headernav.children('li');
	// nếu chưa login thì bool = 1
	if(bool === 1){
		lsLi.each(function(index, item){
			item.classList.remove("hidden");
			if(item.classList.contains('mypage')){
				item.classList.add("hidden");
			}
		});
	}
	// hay login rồi thì bool = 0
	else if(bool === 0) {
		lsLi.each(function(index, item){
			item.classList.remove("hidden");
			if(item.classList.contains('register') || item.classList.contains('login')){
				item.classList.add("hidden");

			}
		});
	}
}
//thây đổi giá trị noLogin khi Login thành công

/***********************************************User tabs Click*************************************************************/

var $anchor = $('#nav-bar-collapse').find('a');
//reload lại page với achor đang active
//gán event cho các anchor khi click vào sử dụng ajax
$anchor.each(function(index, anchor){
	var anchor = $anchor[index];
	anchor.addEventListener('click', function(e){
		e.preventDefault();
		var $content = $("#center");
		var $li = $anchor.parents('ul').find('li');
		var href = anchor.attributes['href'].value;
		//remove active anchor
		$li.removeAttr("class", "actived");// đây là một object collection
		this.parentElement.setAttribute("class", "actived");// đây là một element
		console.log('sideload ' + href );
		//clear child
		//$user.load(href);
		// 4 bước XMLHttp
		//$content.load(href);
		//new
		var xhr = new XMLHttpRequest();
		// callback
		xhr.onreadystatechange = function(){
			if(xhr.readyState === 4 && xhr.status === 200){
				$content.html(xhr.responseText);	
				console.log("loaded");
			}
		}		
		// open
		xhr.open('GET', href);
		//send
		xhr.send();
	})
})



/******************************************Scroll to top*********************************************************/
$(function() {
	$(document).on('scroll', function() {
		if ($(window).scrollTop() > 100) {
			$('.scroll-top-wrapper').addClass('show');
		} else {
			$('.scroll-top-wrapper').removeClass('show');
		}
	});
	$('.scroll-top-wrapper').on('click', scrollToTop);
});
function scrollToTop() {
	verticalOffset = typeof (verticalOffset) != 'undefined' ? verticalOffset : 0;
	element = $('body');
	offset = element.offset();
	offsetTop = offset.top;
	$('html, body').animate({
		scrollTop : offsetTop
	}, 500, 'linear');
}
/******************************************Simple Sidebar*****************************************************/
$("#menu-toggle").click(function(e) {
	e.preventDefault();
	$("#wrapper").toggleClass("toggled");
	if($("#wrapper").hasClass("toggled")){
		$(".float-left-area").css("width", "0%");
		$(".float-right-area").css("width", "100%");
	}
	else{
		$(".float-left-area").css("width", "20%");
		$(".float-right-area").css("width", "80%");
	}
});
/******************************************Simple Sidebar hide*****************************************************/
var sidebar = document.getElementById("wrapper");
var onResize = function(e){
	if(window.outerWidth < 780){
		sidebar.hide();
	}
	else{
		sidebar.show();
	}
};
window.onresize = onResize;
/******************************************Nav-bar fixed top**************************************************/
var nav = document.getElementsByTagName("nav")[0];
var navOnResize = function(e){
	if(window.outerWidth < 640){
		nav.classList.remove("navbar-fixed-top");
		nav.classList.add("navbar-static-top");
	}
	else{
		nav.classList.add("navbar-fixed-top");
		nav.classList.remove("navbar-static-top");
	}
};
window.onresize = navOnResize;
jQuery(document).ready(navOnResize).ready(isLogin);


