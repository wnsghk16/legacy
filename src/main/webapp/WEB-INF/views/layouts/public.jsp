<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
<tiles:insertAttribute name="header"/>
</head>
<body>
<tiles:insertAttribute name="navigator"/>
<tiles:insertAttribute name="content"/>
<footer class="v-footer py-4 v-sheet theme--dark" data-booted="true">
	<tiles:insertAttribute name="footer"/>
</footer>
</body>
<script>
$('#join').click(function(){
	location.href= "${context}/join/joinForm"
})	
$('#home').click(function(){
	location.href= "${context}/"
})	
$('#owplayer').click(function(){
	location.href= "${context}/overwatch/owplayer"
})
$('#owteam').click(function(){
	location.href= "${context}/overwatch/owteam"
})
</script>
<style>
  .font{
    color: #ffffff;
  }
  body {
    margin: 0;
    color: #6a6f8c;
    font: 600 13px/15px 'Open Sans', sans-serif
  }

  .login-box {
    width: 500px;
    margin: auto;
    max-width: 525px;
    min-height: 700px;
    position: relative;
    background: url(https://w.namu.la/s/3e688f9e93b88b02a8fcf9fcdc14b466bdc0aca7b427b9017c380cdcfc1d016fa3af2e85a537c9023566c7d7e3b243cf539e8575f9cc4c38a4df2e7110748b39aa6a3d5d2345937c60de456f09cbce9f198d8292840e2dc83659f28c73b6a0e4) no-repeat center;
    box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19)
  }

  .login-snip {
    width: 100%;
    height: 100%;
    position: absolute;
    padding: 50px 70px 50px 70px;
    background: rgba(101, 99, 99, 0.7)
  }

  .login-snip .login,
  .login-snip .sign-up-form {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    position: absolute;
    transform: rotateY(180deg);
    backface-visibility: hidden;
    transition: all .4s linear
  }

  .login-snip .sign-in,
  .login-snip .sign-up,
  .login-space .group .check {
    display: none
  }

  .login-snip .tab,
  .login-space .group .label,
  .login-space .group .button {
    text-transform: uppercase
  }

  .login-snip .tab {
    font-size: 22px;
    margin-right: 15px;
    padding-bottom: 5px;
    margin: 0 15px 10px 0;
    display: inline-block;
    border-bottom: 2px solid transparent
  }

  .login-snip .sign-in:checked+.tab,
  .login-snip .sign-up:checked+.tab {
    color: #fff;
    border-color: #1161ee
  }

  .login-space {
    min-height: 345px;
    position: relative;
    perspective: 1000px;
    transform-style: preserve-3d
  }

  .login-space .group {
    margin-bottom: 15px
  }

  .login-space .group .label,
  .login-space .group .input,
  .login-space .group .button {
    width: 100%;
    color: #fff;
    display: block
  }

  .login-space .group .input,
  .login-space .group .button {
    border: none;
    padding: 15px 20px;
    border-radius: 25px;
    background: rgba(255, 255, 255, .1)
  }

  .login-space .group input[data-type="password"] {
    text-security: circle;
    -webkit-text-security: circle
  }

  .login-space .group .label {
    color: #ffffff;
    font-size: 12px
  }

  .login-space .group .button {
    background: #1161ee
  }

  .login-space .group label .icon {
    width: 15px;
    height: 15px;
    border-radius: 2px;
    position: relative;
    display: inline-block;
    background: rgba(255, 255, 255, .1)
  }

  .login-space .group label .icon:before,
  .login-space .group label .icon:after {
    content: '';
    width: 10px;
    height: 2px;
    background: #fff;
    position: absolute;
    transition: all .2s ease-in-out 0s
  }

  .login-space .group label .icon:before {
    left: 3px;
    width: 5px;
    bottom: 6px;
    transform: scale(0) rotate(0)
  }

  .login-space .group label .icon:after {
    top: 6px;
    right: 0;
    transform: scale(0) rotate(0)
  }

  .login-space .group .check:checked+label {
    color: #fff
  }

  .login-space .group .check:checked+label .icon {
    background: #1161ee
  }

  .login-space .group .check:checked+label .icon:before {
    transform: scale(1) rotate(45deg)
  }

  .login-space .group .check:checked+label .icon:after {
    transform: scale(1) rotate(-45deg)
  }

  .login-snip .sign-in:checked+.tab+.sign-up+.tab+.login-space .login {
    transform: rotate(0)
  }

  .login-snip .sign-up:checked+.tab+.login-space .sign-up-form {
    transform: rotate(0)
  }

  *,
  :after,
  :before {
    box-sizing: border-box
  }

  .clearfix:after,
  .clearfix:before {
    content: '';
    display: table
  }

  .clearfix:after {
    clear: both;
    display: block
  }

  a {
    color: inherit;
    text-decoration: none
  }

  .hr {
    height: 2px;
    margin: 30px 0 30px 0;
    background: rgba(255, 255, 255, .2)
  }

  .foot {
    text-align: center;
    color: #f3dd17;
    font-size: 20px
  }

  .card {
    width: 500px;
    left: 100px
  }

  ::placeholder {
    color: #b3b3b3
  }
  .button{
    text-align: center;
  }
  .login-space .group2 .button2 {
    text-transform: uppercase;
    color: #ef1212;
    width: 100%;
    display: block
  }
  .google{
        width: 140px;
        height: 45px;
        margin-right: 20px;
    }
    .search{
        width: 550px;
        height: 40px;
        font-size: 15pt;
        box-shadow: 3px 3px 5px #C3C3C3;
        border: 1px solid #EAEAEA;
    }
    .top{
        text-align: center;
        margin: 10px;
    }
    .image{
        width: 100px;
        height : 100px;
    }
    .google{
        width: 140px;
        height: 45px;
        margin-right: 20px;
    }
    .search{
        width: 550px;
        height: 40px;
        font-size: 15pt;
        box-shadow: 3px 3px 5px #C3C3C3;
        border: 1px solid #EAEAEA;
    }
    .top{
        text-align: center;
        margin: 10px;
    }
    .image{
        width: 250px;
        height : 250px;
    }
    .divition_logo{
        width: 30px;
        height : 30px;
    }
</style>
</html>

