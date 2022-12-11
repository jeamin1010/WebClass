/**
 * cookie.js
 */

function setCookie( cname, cvalue,  expiresdays) {
    	var now = new Date();   
    	now.setDate(  now.getDate() + expiresdays );
		 document.cookie =  cname +  "=" + escape(cvalue) + "; expires=" + now.toUTCString() ;
	}
	
	function getAllCookies() { 
		var cookies =  document.cookie; 
		return  cookies;
	}
	 
	function getCookie( cname ) {
		var cvalue = null;		
		var cookies =  document.cookie; 
		
		var cookieArray = cookies.split( /;\s/ );   // string or regexp
		for (var i = 0; i < cookieArray.length; i++) {
			 var cnv = cookieArray[i].split("="); 
			  if(  cname == cnv[0] ){
				  var cvalue =  cnv[1];
				  return   unescape( cvalue );
			  }
		}
		
		return cvalue;
		
	}
	function delCookie( cname ) { 	      
    	var now = new Date();   
    	now.setDate(  now.getDate() - 10 ); 
		 document.cookie =  cname +  "=; expires=" + now.toUTCString() ;  
	}