var person = person || {}
person = (function(){
	let _, javascript, session
	let init = function(){
		 _ = sessionStorage.getItem('context')
		 javascript = sessionStorage.getItem('javascript')
		 session = sessionStorage.getItem('session')
	}
	
	let join = function(payload){
		$.ajax({
			url : _+`/member/users`,
			type: 'POST',
			data: JSON.stringify(payload),
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			success: function(res){
				location.href = _+'/location/member/loginForm'
			},
			error: function(err){
				alert("잘못입력했습니다.")
			}
		})
	}
	
	let login = function(payload){
		$.ajax({
			url : _+`/member/users/${payload.userid}`,
			type: 'POST',
			data: JSON.stringify(payload),
			dataType: 'json',
			contentType: 'application/json; charset=UTF-8',
			success: function(res){
				alert('성공')
				location.href = _+'/user/main/home'
			},
			error: function(err){
				alert('실패')
				location.href = _+'/location/member/loginForm'
			}
		})
	}
	
	let logout = function(){
		alert('로그아웃')
		sessionStorage.removeItem('userid')
		sessionStorage.removeItem('context')
		sessionStorage.removeItem('javascript')
		sessionStorage.removeItem('css')
		sessionStorage.removeItem('image')
		location.href = _+'/' 
	}

	let remove = function(){
		alert('탈퇴')
		$.ajax()
		sessionStorage.removeItem('userid')
		sessionStorage.removeItem('context')
		sessionStorage.removeItem('javascript')
		sessionStorage.removeItem('css')
		sessionStorage.removeItem('image')
		location.href = _+`/`
	}
	return {init, join, login, logout, remove}
})()