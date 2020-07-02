<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="vm--container" style="padding: 10px 500px 0px;">
	<div data-modal="login" aria-expanded="true" class="vm--overlay">
		<div class="vm--top-right-slot"></div>
	</div>
	<div aria-expanded="true" role="dialog" aria-modal="true"
		class="vm--modal"
		style="top: 27px; left: 266px; width: 490px; height: 700px;">
		<div>
			<div class="card">
				<div class="login-box">
					<div class="login-snip">
						<input id="tab-1" type="radio" name="tab" checked="checked" class="sign-in">
							<label for="tab-1" class="tab">Login</label>
							<input id="tab-2" type="radio" name="tab" class="sign-up">
							<label for="tab-2" class="tab">Sign Up</label>
						<div class="login-space">
							<div class="login">
								<div class="group">
									<br> <br> <br> 
									<label for="login_id" class="label">UserID</label>
									<input id="login_id" type="text" placeholder="Enter your UserID" class="input">
								</div>
								<div class="group">
									<label for="login_passwd" class="label">Password</label>
									<input id="login_passwd" type="password" data-type="password" placeholder="Enter your password" class="input">
								</div>
								<div class="group">
									<input id="check" type="checkbox" checked="checked" class="check">
									<label for="check"> <span class="icon"></span> Keep me Signed in </label>
								</div>
								<div class="group">
									<input id="login_btn" type="submit" value="Sign In" class="button">
								</div>
								<div class="hr"></div>
								<div class="foot">
									<label for="tab-2"> I'm New </label>
								</div>
							</div>
							<div class="sign-up-form">
								<div class="group">
									<br> 
									<label for="join_id" class="label">UserID</label>
									<input id="join_id" type="text" placeholder="Create your UserID" class="input">
									<br>
									<button type="button" class="v-btn v-btn--contained theme--light v-size--small error">
										<span class="v-btn__content">check</span>
									</button>
								</div>
								<div class="group">
									<label for="join_passwd" class="label">Password</label>
									<input id="join_passwd" type="password" data-type="password" placeholder="Create your password" class="input">
								</div>
								<div class="group">
									<label for="name" class="label">Name</label>
									<input id="name" type="text" placeholder="Enter your Name" class="input">
								</div>
								<div class="group">
									<label for="email" class="label">Email Address</label>
									<input id="email" type="text" placeholder="Enter your email address" class="input">
								</div>
								<div class="group">
									<!---->
									<label id="signup_btn" type="submit" class="button"> Sign Up </label>
								</div>
								<div class="hr"></div>
								<div class="foot">
									<label for="tab-1">Already Member?</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!---->
		<!---->
	</div>
</div>

