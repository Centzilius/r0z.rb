function soon(tm){
	console.log("SOON");
	console.log(tm);
	swal('Coming Soon('+tm+')')
}
var fullscreenmode = 0;
var elements = [];
function doResize(){
  swffit.fit("flash", "1", "1", width, height, true, false)
}
function makeNormalScreen(){
	fullscreenmode = 0;
	
	if(document.exitFullscreen) {
		document.exitFullscreen();
	} else if(document.webkitExitFullscreen) {
		document.webkitExitFullscreen();
	} else if(document.mozCancelFullScreen) {
		document.mozCancelFullScreen();
	}
	document.getElementById('buttons').style.display = "inline";
	document.getElementById('quicklinks').style.display = "inline";
	document.getElementById('table').style.display = "inline";
	document.getElementById('disqus').style.display = "inline";
	swffit.fit("flash", "1", "1", "100%", "100%", true, false)
}
function makeFullScreen(){
	fullscreenmode = 1;
	var el = document.documentElement, 
	rfs = el.requestFullScreen
	|| el.webkitRequestFullScreen
	|| el.mozRequestFullScreen;
	rfs.call(el);

  window.onresize = "";

	document.body.innerHTML = "<div id='flash'><div id='swf'></div></div>";
  embed();
  $("#flash").css("width", "100%");
  $("#flash").css("height", "100%");

  swffit.fit("swf", "1", "1", $(window).width(), $(window).height(), true, false)
  $("html").css("overflow", "hidden");
  //$("body").css("visibility", "visible");
  //$("#main").css("visibility", "visible");
  //$("#flash").css("visibility", "visible");
  //$("#swf").css("visibility", "visible");
  //swffit.fit("flash", "1", "1", $(window).width(), $(window).height(), true, false);

	//var swf = $("#flash");

	//swf.css("display", "block");
	//swf.css("width", $(window).width());
	//swf.css("height", $(window).height());
	//swf.css("position", "absolute");
	
	//document.getElementById('buttons').style.display = "none";
	//document.getElementById('quicklinks').style.display = "none";
	//document.getElementById('table').style.display = "none";
	//document.getElementById('disqus').style.display = "none";
  //swffit.fit("flash", "1", "1", $(window).width(), $(window).height(), true, false)
}
$(document).ready(function() {
  window.onresize = doResize;
  doResize();
});