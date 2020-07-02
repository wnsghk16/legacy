<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<div id="back">
		<div class="backRight"></div>
		<div class="backLeft"></div>
	</div>

	<div id="slideBox">
		<div class="topLayer">
			<div class="left">
				<div class="content">
					<h2>Sign Up</h2>
					<form method="post" onsubmit="return false;">
						<div class="form-group">
							<input id="join_id" type="text" placeholder="Create your UserID" />
							<label class="check">check</label>
						</div>					
						<div class="form-group">
							<input id="join_passwd" type="password" placeholder="Create your password"/>
						</div>
						<div class="form-group">
							<input id="name" type="text" placeholder="Enter your Name"/>
						</div>
						<div class="form-group">
							<input id="email" type="text" placeholder="Enter your email address"/>
						</div>
					</form>
					<button id="signup">Sign up</button>
					<label id="goLeft" class="off">Already Member?</label>
					<div class="foot">
							<img id="home1" style="width:50px; heigth:50px;" src="https://image.flaticon.com/icons/svg/2948/2948210.svg"/>
					</div>
				</div>
			</div>
			<div class="right">
				<div class="content">
					<h2>Login</h2>
					<form method="post" onsubmit="return false;">
						<div class="form-group">
							<br>
							<label for="login_id" class="form-label">UserID</label> 
							<br>
							<input id="login_id" type="text" />
						</div>
						<div class="form-group">
							<br>
							<label for="login_passwd" class="form-label">Password</label> 
							<br>
							<input id="login_passwd" type="password"/>
						</div>
						<button id="login" type="submit">Login</button>
						<label id="goRight" class="off"> I'm New </label>
						<div class="foot">
							<img id="home2" style="width:50px; heigth:50px;" src="https://image.flaticon.com/icons/svg/2948/2948210.svg"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</article>
<script src="${javascript}/store/person.js"></script>
<script>
$(document).ready(function(){
	  $('#goRight').on('click', function(){
	    $('#slideBox').animate({
	      'marginLeft' : '0'
	    });
	    $('.topLayer').animate({
	      'marginLeft' : '100%'
	    });
	  });
	  $('#goLeft').on('click', function(){
	    $('#slideBox').animate({
	      'marginLeft' : '50%'
	    });
	    $('.topLayer').animate({
	      'marginLeft': '0'
	    });
	  });
});
document.getElementById('signup').addEventListener('click',function(e){
	e.preventDefault()
	person.init()
	person.join({"userid": document.getElementById('join_id').value,
        		"passwd": document.getElementById('join_passwd').value,
        		"name": document.getElementById('name').value,
        		"email": document.getElementById('email').value
        		})
})
document.getElementById('login').addEventListener('click',function(e){
	e.preventDefault()
	person.init()
	person.login({"userid": document.getElementById('login_id').value,
        		"passwd": document.getElementById('login_passwd').value})
})
$('#home1').click(function(e){
	e.preventDefault
	location.href= `${context}/`
})	
$('#home2').click(function(e){
	e.preventDefault
	location.href= `${context}/`
})	
</script>
<style>
article {
	height: 100%;
	overflow: hidden;
	width: 100px !important;
	box-sizing: border-box;
	font-family: 'Roboto', sans-serif;
}

.backRight {
	position: absolute;
	right: 0;
	width: 50%;
	height: 100%;
	background: #3498db
		url(https://post-phinf.pstatic.net/MjAyMDAxMTFfMjg3/MDAxNTc4NzA3NDUwMTg1.QAQeAudv1I_uw6QwuF-V4YlE0iB2kbJvCGwB_OqF3S8g.paVyFROT1qqF694lQF83AsX830GGOn0gpLkUp1AI0Jcg.JPEG/71342796_1326552970834167_1401856391743799296_o.jpg?type=w1200);
	background-size: cover;
	background-position: 50% 50%;
}

.backLeft {
	position: absolute;
	left: 0;
	width: 50%;
	height: 100%;
	background: #e74c3c
		url(https://w.namu.la/s/3e688f9e93b88b02a8fcf9fcdc14b466bdc0aca7b427b9017c380cdcfc1d016fa3af2e85a537c9023566c7d7e3b243cf539e8575f9cc4c38a4df2e7110748b39aa6a3d5d2345937c60de456f09cbce9f198d8292840e2dc83659f28c73b6a0e4);
	background-size: cover;
	background-position: 50% 50%;
}

#back {
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: -999;
}

#slideBox {
	width: 50%;
	max-height: 100%;
	height: 100%;
	overflow: hidden;
	margin-left: 50%;
	position: absolute;
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
}

.topLayer {
	width: 200%;
	height: 100%;
	position: relative;
	left: 0;
	left: -100%;
}

.left {
	width: 50%;
	height: 100%;
	background: #2C3034;
	left: 0;
	position: absolute;
}

.right {
	width: 50%;
	height: 100%;
	background: #f9f9f9;
	right: 0;
	position: absolute;
}

.content {
	width: 350px;
	margin: 0 auto;
	top: 25%;
	position: absolute;
	left: 50%;
	margin-left: -125px;
}

.content h2 {
	color: #03A9F4;
	font-weight: 300;
	font-size: 35px;
}

button {
	background: #03A9F4;
	padding: 10px 16px;
	width: auto;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 14px;
	color: #fff;
	line-height: 16px;
	letter-spacing: 0.5px;
	border-radius: 2px;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1), 0 3px 6px rgba(0, 0, 0, 0.1);
	border: 0;
	outline: 0;
	margin: 15px 15px 15px 0;
	transition: all 0.25s;
}

button:hover {
	background: #0288D1;
	box-shadow: 0 4px 7px rgba(0, 0, 0, 0.1), 0 3px 6px rgba(0, 0, 0, 0.1);
}

.off {
	background: none;
	color: #03A9F4;
	box-shadow: none;
}

.right .off:hover {
	background: #eee;
	color: #03A9F4;
	box-shadow: none;
}

.left .off:hover {
	box-shadow: none;
	color: #03A9F4;
	background: #363A3D;
}

input {
	background: transparent;
	border: 0;
	outline: 0;
	border-bottom: 1px solid #45494C;
	font-size: 14px;
	color: #959595;
	padding: 8px 0;
	margin-top: 20px;
}
.check{
	background: none;
	box-shadow: none;
	font-size: 14px;
	color: #f00;
	font-weight: 600;
	margin-left:20px;
}
.foot {
	margin-top: 50px;
	margin-left:60px;
  }
</style>