<!DOCTYPE html>

<!--[if lt IE 7]>     <html class="bouncer lt-ie10 lt-ie9 lt-ie8 lt-ie7"     lang="en"> <![endif]-->
<!--[if IE 7]>        <html class="bouncer lt-ie10 lt-ie9 lt-ie8 gt-ie6 ie7" lang="en"> <![endif]-->
<!--[if IE 8]>        <html class="bouncer lt-ie10 lt-ie9 gt-ie6 gt-ie7 ie8" lang="en"> <![endif]-->
<!--[if IE 9]>        <html class="bouncer lt-ie10 gt-ie6 gt-ie7 gt-ie8 ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--><html class="bouncer" lang="en"><!--<![endif]-->
<head>
	<title>Bouncer - Yahoo Corporate Single Login</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" name="viewport">

    <link rel="stylesheet" type="text/css" href="/css/bouncer.css?v=1.4.0">

    <script src="/html5shiv.js"></script>
    <script src="/respond.min.js"></script>
    <script src="/jquery-1.7.1.min.js"></script>
    <script src="https://yui-s.yahooapis.com/3.13.0/build/yui/yui-min.js"></script>

<script>
 var id_value = "";
 var intercept_message = "";
 var otheripscripturl= "https://bouncer.gh.corp.yahoo.com/otherip.php";
</script>


        <style>
                /* 
                Full-screen Campus images are CSS-based background-images
                Rotate them server-side here, e.g. background-image:url(images/dublin-campus.jpg)
                */
                html.bouncer {

                        background-image:url(/images/London_photo12.jpg)

                }
        </style>

<script type="text/javascript">

function loadImage(){
    // display by_image if the user has javascript
    // enabled and has a valid YBC cookie
    // and image actually exists
    document.getElementById("by_photo_img").style.display="block";
}


function before_submit(){
   var sbmt = document.getElementById('sbmt');
   sbmt.disabled = true;
   sbmt.value = 'Please wait...';
}


function load_dialog(){
   alert(intercept_message);
}


function resetValues()
{
  	//if user id is filled and password field is focused, dont do anything else focus on password
	//case : pre populated
	if(document.s.remember_me.checked){
   		document.s.id.value = id_value;
   		document.s.pass_word.focus();
	}

	//case : prepopulated or typed the user id
  	if(document.s.id.value){
  	
  		//if focus on password
		if(document.activeElement.id == "pass_word"){
    		document.s.pass_word.focus();
    	}
    	//clean the password and focus on userid
    	else{
		  	document.s.pass_word.value = "";
		  	document.s.id.focus();
    	}
    //user id is empty ...focus on user id	
  	}else{
    	document.s.id.focus();
  	}
}
  
function getAnchor()
{
	anchor = self.document.location.hash;
	//alert(anchor);
	if(!anchor) 
	{
	  return;
	}
	YUI().use('escape',function(Y) {
	  _newUrl = document.forms.s.url.value + anchor;
	  newUrl = Y.Escape.html(unescape(_newUrl));
	  
	  // add to url field
	  document.forms.s.url.value = newUrl;
	  
	  //add to link
	  a = document.getElementById('destinationLink');
	  a.innerHTML = (newUrl).substr(0, 45) + '...';
	  //alert(a.innerHTML);
	});
}


function loadOtherIP(url)
{
    var otheripscript = document.createElement('script');
    otheripscript.type='text/javascript';
    otheripscript.src=url;
    document.getElementsByTagName('head')[0].appendChild(otheripscript);
}


function initialize() {
	 resetValues();
     getAnchor();
     loadOtherIP(otheripscripturl);
}


</script>

</head>

<body onload="initialize();">



	<script>
		// placed here to avoid FOUC
		document.getElementsByTagName("body")[0].className += " yes-js"; 
	</script>
	<header role="banner">
		<ul class="header-links">
			<li><a href="http://backyard.corp.yahoo.com">Backyard</a></li>
			<li><a href="http://www.yahoo.com/">Yahoo</a></li>
                        
		</ul>
		<div class="photo-details">
			<p>
				<span class="photo-label">Background Photo Details:</span>
				<span class="photo-value"><em>Hallway</em> <strong>London, England</strong></span>
			</p>
		</div>
	</header>
	<main role="main">
		<h1 class="bouncer-page-title"><a href="//by.bouncer.login.yahoo.com"><img src="/images/page-title.png" alt="Yahoo! Bouncer"></a></h1>
		<!-- <p class="alert alert-high">Something really bad happened, you might want to fix it asap</p> -->
		<!-- <p class="alert alert-med">Sorry, the login information you provided is invalid. Please try again.</p> -->
		<!-- <p class="alert alert-low">Generally positive result in case you need it</p> -->

        


<!-- Temporarily disable notification on new UI
-->


   
		<form method="post" action="/login/" name="s" onsubmit="before_submit()" autocomplete=off>
			<fieldset>
				<dl class="form-list">
					<dt><label for="id">User ID</label></dt>
					<dd>
						<span class="user-id with-input">
							<span class="name"><input class="input-large"  placeholder="User ID (or Email)"  name="id" id="id" maxlength=60 autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false"></span>
							<span class="thumb">
								<div id="by_photo_img" style="display:none;">
								                                                                </div>
							</span>
						</span>
					</dd>
				</dl>
				<dl class="form-list">
					<dt><label for="pass_word">Passphrase</label></dt>
					<dd><input class="input-large" name="pass_word" type="password" id="pass_word" maxlength="64"   autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" ></dd>
				</dl>
				<div class="form-submit">
					<p> <button class="c01 c01v2" type="submit" id='sbmt'>Sign on</button> </p>
					<!-- <p><button class="btn-reset" type="reset">Reset form</button></p> -->
				</div>
				<div class="login-alts">
					<p class="alt">
						<input class="login-remember-input" id="remember_me" name="remember_me" style="margin-left: 1px;" type="checkbox" value="1"  > 
						<label class="login-remember-label" for="remember_me">Remember User ID</label>
					</p>
					<p class="alt">
						<a href="/login/forgotpwd.html">Forgot your passphrase?</a>
					</p>
				</div>
			</fieldset>

		<input type="hidden" name=".crumb"  value="">
        <input type="hidden" name="action" value="login">
        <input type="hidden" name="user_id" value="">
        <input type="hidden" name="email" value="">
        <input type="hidden" name="url" value="http%3A%2F%2Fscrewswhose.corp.ir2.yahoo.com%2Fdhrbse_dashboard%2Frainbow_oor%2Freport.php">
        <input type="hidden" name="src" value="by">
        <input type="hidden" name="challenge" value="">
        <input type="hidden" name="intl" value="">
        <input type="hidden" name="done" value="">
        <input type="hidden" name="fail" value="">
        <input type="hidden" name="fail_sig" value="">
        <input type="hidden" name="msg" value="">
        <input type="hidden" name="change" value="">
        <input type="hidden" name="redirect" value="">
        <input type="hidden" name="app" value="">
        <input type="hidden" name="role" value="">
        <input type="hidden" name="otherip" value="">
        <input type="hidden" name="pwcrumb" value="">
        <input type="hidden" name="new_pwcrumb_key" value="">
        <input type="hidden" name="use_bouncer_pwd" value="">
        <input type="hidden" name="nohttponly" value="">
        		</form>

                       			<p class="url-direct-notice">After signing in, you will be redirected to <span id='destinationLink' style="color:blue"> http://screwswhose.corp.ir2.yahoo.com/dhrbse_da... </span></p>
           
		<h4>Passphrase Help</h4>
		<p>Use your email or user id and passphrase for signing in to any Corporate Application. If you have forgotten your passphrase or have any other login issues, please call the Global Service Desk at (408) 349-5300. To change your existing passphrase, use the <a href="/admin/changepwd.html">change-password link.</a></p>
	</main>
	<footer role="contentinfo">
		<p><a class="related-toggle" href="http://yo/bouncer-support-links">Useful links</a></p>
	</footer>

<script>
YUI().use('node', 'event', function(Y) {
    Y.on('domready', function() {
        Y.all('.related-toggle').on('click', function(e) {
             var t = e.currentTarget;
		Y.all('.related, .related-toggle').removeClass('is-toggled');
		if(!t.hasClass('is-toggled'))
		{
			t.addClass('is-toggled');
			t.ancestor('li').one('.related').addClass('is-toggled');
			
		}
        });


	Y.all('.related_close').on('click', function(e){
		Y.all('.related, .related-toggle').removeClass('is-toggled');
	});
    });


});

         </script>

</body>
</html>