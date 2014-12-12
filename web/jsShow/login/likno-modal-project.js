//---- Created using Likno Web Modal Windows Builder ver. 2.2.274.1 -----

// Copyright (c) Likno Software 2008-2014
// This code is property of Likno Software and licensed for use in *websites* only. It is *not* licensed for use in distributable implementations (applications or CD-based webs), unless the related license is provided by Likno Software.
// Any unauthorized use, reverse-engineering, alteration, transmission, transformation, or copying of any means (electronic or not) is strictly prohibited and will be prosecuted.
// *Removal of the present copyright notice is strictly prohibited*
// This project has been compiled for (and will work under): localhost

var $u = 'undefined';
var lwmwjQ = 'jquery.js';
var lwmwLib = 'likno-modal-lib.js';
var lwmwName = 'likno-modal-project';

var nua=navigator.userAgent,scriptNo=(nua.indexOf('Chrome')>-1)?2:((nua.indexOf('Safari')>-1)?7:(nua.indexOf('Gecko')>-1)?2:((document.layers)?3:((nua.indexOf('Opera')>-1)?4:((nua.indexOf('Mac')>-1)?5:1))));var lwmwmpi=document.location,xt="";
var mpa=lwmwmpi.protocol+"//"+lwmwmpi.host;
var lwmwmpi=lwmwmpi.protocol+"//"+lwmwmpi.host+lwmwmpi.pathname;
if(scriptNo==1){oBC=document.all.tags("BASE");if(oBC && oBC.length) if(oBC[0].href) lwmwmpi=oBC[0].href;}
while (lwmwmpi.search(/\\/)>-1) lwmwmpi=lwmwmpi.replace("\\","/");
lwmwmpi=lwmwmpi.substring(0,lwmwmpi.lastIndexOf("/")+1);
var lwmwmpin=lwmwmpi;
var e=document.getElementsByTagName("SCRIPT");
for (var i=0;i<e.length;i++){if (e[i].src){if (e[i].src.indexOf(lwmwName+".js")!=-1){xt=e[i].src.split("/");if (xt[xt.length-1]==lwmwName+".js"){xt=e[i].src.substring(0,e[i].src.length-lwmwName.length-3);if (e[i].src.indexOf("://")!=-1){lwmwmpi=xt;}else{if(xt.substring(0,1)=="/")lwmwmpi=mpa+xt; else lwmwmpi+=xt;}}}}}
while (lwmwmpi.search(/\/\.\//)>-1) {lwmwmpi=lwmwmpi.replace("/./","/");}

var likno_modal_project,cart,likno_modal_project_cart_options;
var LWMWloaded_likno_modal_project = false;
var likno_modal_project_lwmwmpi = lwmwmpi;
if (typeof(loading_lwmw_lib)==$u) loading_lwmw_lib = false;
if (typeof(loading_lQuery)==$u) loading_lQuery = false;
var headID = document.getElementsByTagName("head")[0];

function likno_modal_project_load_lquery() {
	if (typeof(lQuery) == $u) setTimeout(likno_modal_project_load_lquery,50);
	else lwmwjQloaded_next_likno_modal_project();
}

function likno_modal_project_load_lib() {
	if (typeof(lQuery.liknoModal) == $u) setTimeout(likno_modal_project_load_lib,50);
	else load_likno_modal_project();
}


if (loading_lQuery == true) {
	likno_modal_project_load_lquery();
} else if (typeof(lQuery) == $u && (typeof(jQuery) == $u || jQuery.fn.jquery<"1.4.1" || jQuery.fn.jquery.substring(0,3)>="1.9")){
	loading_lQuery = true;
	var newScript_jQ = document.createElement('script');
	newScript_jQ.type = 'text/javascript';
	newScript_jQ.onload = lwmwjQloaded_likno_modal_project;
	newScript_jQ.onreadystatechange = lwmwjQloaded_likno_modal_project;
	newScript_jQ.src = lwmwmpi+lwmwjQ;
	headID.appendChild(newScript_jQ);
} else lwmwjQloaded_next_likno_modal_project();

function lwmwjQloaded_likno_modal_project(){
	if (typeof(lQuery) == $u && typeof(jQuery) == $u) return;
	jQuery.noConflict();
	lwmwjQloaded_next_likno_modal_project();
}

function lwmwjQloaded_next_likno_modal_project(){
	if (typeof(lQuery) == $u) lQuery = jQuery;
	if (loading_lwmw_lib == true) likno_modal_project_load_lib();
	else if (typeof(lQuery.liknoModal) != $u) load_likno_modal_project();
	else {
		loading_lwmw_lib = true;
		var newScript_lib = document.createElement('script');
		newScript_lib.type = 'text/javascript';
		newScript_lib.src = lwmwmpi+lwmwLib;
		newScript_lib.onload = load_likno_modal_project;
		newScript_lib.onreadystatechange = load_likno_modal_project;
		headID.appendChild(newScript_lib);
	}
}function load_likno_modal_project() {if (typeof(lQuery) != 'undefined' && typeof(lQuery.liknoModal) != 'undefined'){if (!LWMWloaded_likno_modal_project) {LWMWloaded_likno_modal_project = true;lQuery.likno_modal_project = lQuery.extend(true, {}, lQuery.liknoModal);var likno_modal_project_defaults = lQuery.extend(true, {}, lQuery.likno_modal_project.impl.defaults, {modalClass: 'likno_modal_project',overlayId: 'likno_modal_project-overlay',containerId: 'likno_modal_project-container',hideScrollbars:false,lockWindowScroll:true,overlayCss:{backgroundColor:'#000000'},opacity:50,close:{closeClass: 'likno-modal-project-close',overlayClose:true,escClose:true,show:true, closeImage: ""+likno_modal_project_lwmwmpi+"/close.gif",text:"<div name='myLiknoModalCloseName'><span title='Close'><img src='"+likno_modal_project_lwmwmpi+"/close.gif' /></span></div>", textCss:nRTC("font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; top: 10px; right: 10px; ")},positionType:0,position:[0,0],positionTargetAnchor:8,positionModalAnchor:8,positionTarget: '',containerCss:nRTC("width:250px;height:200px;overflow: hidden;font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; padding: 0px 0px 0px 0px; border: 3px solid #CFDEF1; z-index: 2000;"),domainCode:'246C373D5B223638373437343730222C22334132463246222C223643364636333631364336383646373337343246225D2C246C352C246C363D5B223636363936433635222C223643364636333631364336383646373337343246222C223233373536453643363936443639373436353634333132333246225D3B',ajaxLoadImage:""+likno_modal_project_lwmwmpi+"/ajax-loader-clock.gif", ajaxLoadDiv:"<div style=\"background-color: #ffffff; border: solid 1px #000000; padding: 10px;\"><img src=\""+likno_modal_project_lwmwmpi+"/ajax-loader-clock.gif\">Loading...</div>",header:{show:true,text:"Join our Newsletter",textCss:nRTC("text-align: center; padding: 10px 0px 0px 0px; border-top: 1px none #000000; border-right: 1px none #000000; border-bottom: 3px solid #CFDEF1; border-left: 1px none #000000; background-color: #E1EDFB; height: 25px; ")},footer:{show:false},wrapCss:nRTC("text-align: center; padding: 20px 20px 20px 20px; background-color: #EAF1FB;  "),isMultiSheet:false,currentSheet:0,loop:true,play:{autoStart:false,pauseByMouse:false,direction:0,delay:1500},navigationBar: {maxSheets:9,cssClasses:".likno_modal_project{border-width:0px;margin:0px;padding:0px;} .likno_modal_project.navigationBarArea { text-align: center; background-image:url('"+likno_modal_project_lwmwmpi+"/navbar064_navbarset_bg.png');background-position:center center; background-color: #CFDEF1; height: 19px;  }   .likno_modal_project.navigationBarCenterSection { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; text-align: center;  }   .likno_modal_project.navigationBarSheetSection {  }   .likno_modal_project.navigationBarFirst { padding: 0px 1px 0px 0px;  }   .likno_modal_project.navigationBarPrev {  }   .likno_modal_project.navigationBarNext {  }   .likno_modal_project.navigationBarLast { padding: 0px 0px 0px 1px;  }   .likno_modal_project.navigationBarPlayPause { margin: 0px 5px 0px 0px;  }   .likno_modal_project.navigationBarText { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: #425080; margin: 0px 5px 0px 0px;  }   .likno_modal_project.navigationBarSheetLink { font-weight: normal; font-style: normal; text-decoration: underline; font-variant: normal; text-transform: none; color: #425080; cursor: pointer;  }   .likno_modal_project .likno_modal_project.navigationBarSheetLinkHover { color: #6475B0;  }   .likno_modal_project.navigationBarSheetSelected { font-weight: bold; font-style: normal; text-decoration: none;  font-variant: normal; text-transform: none; color: #425080;  }   .likno_modal_project.navigationBarSheetDots { color: #6475B0;  }  .navigationBarSheetSpacer { width: 4px;  }  .navigationBarBulletsNormal { cursor: pointer;  }  .navigationBarBulletsOver { cursor: pointer;  }  .navigationBarBulletsSelected { cursor: pointer;  }",show:true,showFirst:true,showPlayPause:true,showPrev:true,showNext:true,showLast:true,showSheets:true,text:"Sheets:",showSheetType:0,showBulletsOnly:true,opacity:100,opacityOver:100,showWhere:0,offset:[0,0],images:{butFirst:likno_modal_project_lwmwmpi+'/navbar064_navbarset_first.png',butFirstOver:likno_modal_project_lwmwmpi+'/navbar064_navbarset_first_over.png',butPrev:likno_modal_project_lwmwmpi+'/navbar064_navbarset_previous.png',butPrevOver:likno_modal_project_lwmwmpi+'/navbar064_navbarset_previous_over.png',butPlay:likno_modal_project_lwmwmpi+'/navbar064_navbarset_play.png',butPlayOver:likno_modal_project_lwmwmpi+'/navbar064_navbarset_play_over.png',butPause:likno_modal_project_lwmwmpi+'/navbar064_navbarset_pause.png',butPauseOver:likno_modal_project_lwmwmpi+'/navbar064_navbarset_pause_over.png',butNext:likno_modal_project_lwmwmpi+'/navbar064_navbarset_next.png',butNextOver:likno_modal_project_lwmwmpi+'/navbar064_navbarset_next_over.png',butLast:likno_modal_project_lwmwmpi+'/navbar064_navbarset_last.png',butLastOver:likno_modal_project_lwmwmpi+'/navbar064_navbarset_last_over.png',bulletNormal:likno_modal_project_lwmwmpi+'/bullet_034_normal.png',bulletOver:likno_modal_project_lwmwmpi+'/bullet_034_over.png',bulletSelected:likno_modal_project_lwmwmpi+'/bullet_034_selected.png'}},keyboardNavigation:true,transition:{openWhat:{height:'show'}, openHow: {easing: 'linear', duration: 0}, closeWhat:{height:'hide'}, closeHow: {easing: 'linear', duration: 0}},floatingArrows: { show: false },dataId: "likno_modal_project-data"});lwmw_preloadImages(likno_modal_project_defaults);lQuery(function () {});likno_modal_project = function (data, options) {return lQuery.likno_modal_project.impl.init(data, lQuery.extend(true,{},likno_modal_project_defaults,options));};likno_modal_project.close = function (doNext) {return lQuery.likno_modal_project.impl.close(doNext);};likno_modal_project_cart_options = lQuery.extend(true,{ }, likno_modal_project_defaults, {isMultiSheet:true,modalFullId: "likno_modal_project_cart",containerId: "cart-container"});lwmw_preloadImages(likno_modal_project_cart_options, "<div>Please use this modal window with a page link, imagemap area, or form.</div>");likno_modal_project.cart=cart=function(options){if (typeof options == "number" || typeof options == "string") options = {currentSheet: options};lQuery.likno_modal_project.impl.init("<div>Please use this modal window with a page link, imagemap area, or form.</div>",lQuery.extend(true, {}, likno_modal_project_cart_options,options));};lQuery(function () { lQuery.liknoModal.makePageLinks('cart', likno_modal_project_cart_options); });lwmw_checkVarUrl('likno-modal-project', 'cart');}}}
/*274.1*/