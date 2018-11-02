<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>登录</title>
	<link href="/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/public-showbox.css" rel="stylesheet">
	<script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
	<style type="text/css">
    	.layui-layer-molv .layui-layer-content { text-align: center; }
    	.layui-layer-molv .layui-layer-btn0 { background: #e70!important; border: 1px solid #e70 }
    	.layui-layer-molv .layui-layer-btn { text-align: center; }
    </style>
</head>

<script type="text/javascript">
$(document).ready(function(){
	
	})
	
</script>
	
<body>
		<div class="layui-layer layer-anim layui-layer-page " id="layui-layer1" type="page" times="1" showtime="0" contype="string" style="z-index: 19891015; width: 340px; height: 450px; top: -72.5px; left: 484.5px;"><div id="" class="layui-layer-content" style="height: 450px;">

	<div class="public-loginbox3" style="padding: 10px 20px">
		<div class="login-close">
			<i class="icon-close-s"></i>
		</div>
		<div class="login3-title">
			<ul>
				<li class="active" id="loginbox">
					<span>登录</span>
				</li>
				<li class="" id="regbox">
					<span>注册</span>
				</li>
			</ul>
		</div>

		<div class="login3-loginbox " id="loginbox-show">
		<div class="login3-box">
			<ul>
				
						<li>
						<div class="inputbox">
						<input type="text" name="username" id="username" placeholder="请输入手机号/邮箱/用户名" class="textbox3">
					    </div>
					    </li>
				
				<li>
					<div class="inputbox">
						<input type="password" name="password" id="password" placeholder="请输入登录密码" class="textbox3">
					</div>
				</li>
				<li>
					<div class="inputbox">
						<input type="text" name="validate" id="validate" placeholder="请输入验证码" class="textbox5">
						<img id="imgCode" src="https://data.justeasy.cn/verifycode.html?w=145&amp;h=36&amp;f=14" style="cursor:pointer;float:left;margin-left: 5px;" onclick="reloadImgcode(145, 36, 14);" alt="点击换一张">
					</div>
					<div class="stxt" id="loginerror">
						
					</div>
						<a href="https://reg.justeasy.cn/user/login/fpstep.php" class="forget">忘记密码？</a>
				</li>
				<li class="last" style="margin-top:20px;">
					<input type="hidden" name="obj" id="obj" value="https://www.justeasy.cn/3d/id-319855.html">
            		<input type="hidden" name="type" id="type" value="4">
					<input type="hidden" name="token" value="7c23cea819266d4b9730ad4468f19bb6" id="token">
					<input type="submit" name="" class="btn btn-org btn-org2" value="登 录" onclick="layer_login();" id="login_btn">
				</li>
			</ul>
		</div>
		<div class="login3-others">
			<h3><span>使用第三方账号登录</span></h3>
			<a href="https://data.justeasy.cn/qqlogin?backurl=https://www.justeasy.cn/3d/id-319855.html" class="login-qq">QQ登录</a>
			<a href="https://data.justeasy.cn/wxlogin.php?backurl=https://www.justeasy.cn/3d/id-319855.html" class="login-wx">微信登录</a>
		</div>   
		</div>

		<div class="login3-regbox none" id="regbox-show">
			<div class="login3-reg">
				<ul>
					<li id="regmobile">
						<div class="inputbox">
						<input type="text" name="mobile" id="mobile" placeholder="请输入手机号" class="textbox3">
						</div>
						<div class="stxt none">
							
						</div>
					</li>
					<li id="regemail" class="none">
						<div class="inputbox">
						<input type="text" name="email" id="email" placeholder="请输入电子邮箱" class="textbox3">
						</div>
						<div class="stxt none">
							
						</div>
					</li>
					<li>
						<div class="inputbox">
						<input type="text" name="validcode" id="validcode" placeholder="请输入验证码" class="textbox3" maxlength="6">
						<input type="button" name="validcode_but" value="发送验证码" class="textbox4" id="validcode_but" onclick="getvalidinfo();">
						</div>
						<div class="stxt-s none">验证码发送失败，请联系客服  <a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&amp;key=XzkzODA2NTczOF80NzMxNDhfNDAwNjAwMjUwN18yXw" class="org" target="_blank">400-600-2507</a></div>
					</li>
					<li>
						<div class="inputbox">
						<input type="password" name="password2" id="password2" placeholder="设置密码，长度为6-18位字母数字组合" class="textbox3" maxlength="18">
						</div>
						<div class="stxt none">
							
						</div>
					</li>
					<li>
						<div class="inputbox">
						<input type="password" name="password3" id="password3" placeholder="确认密码" class="textbox3" maxlength="18">
						</div>
						<div class="stxt" id="regerror">
							
						</div>
					</li>
					<li class="last" style="margin-top:0;">
					<span style="font-size: 12px; color: #999">点击「注册」按钮即代表同意<a href="https://www.justeasy.cn/help/detail/158.html" target="_blank" class="org">《建E网注册协议》</a></span>
					
					<input type="hidden" name="token1" value="7c23cea819266d4b9730ad4468f19bb6" id="token1">
					<input type="hidden" name="regtype" value="1" id="regtype">
					<input type="submit" name="" class="btn btn-org btn-org2" value="注 册" onclick="layer_reg();" id="reg_btn">
					<a href="javascript:;" class="forget" id="email_but">使用邮箱注册</a>					
					<a href="javascript:;" class="forget none" id="mobile_but">使用手机注册</a>
					</li>
				</ul>
			</div>
			<div class="login3-others" style="margin-top: 10px">
			<h3><span>使用第三方账号登录</span></h3>
			<a href="https://data.justeasy.cn/qqlogin?backurl=https://www.justeasy.cn/3d/id-319855.html" class="login-qq">QQ登录</a>
			<a href="https://data.justeasy.cn/wxlogin.php?backurl=https://www.justeasy.cn/3d/id-319855.html" class="login-wx">微信登录</a>		</div>
		</div>
	</div>


<script type="text/javascript">

function layer_login() {
	var $key = 1;
	if ($('#useranme').val() == '') {
		show_eorr('请输入用户名');
		$key = 0;
		return false;
	}
	if ($('#password').val() == '') {
		show_eorr('请输入密码');
		$key = 0;
		return false;
	}
	if ($('#validate').val() == '') {
		show_eorr('请输入验证码');
		$key = 0;
		return false;
	}
		
}
function layer_reg(){
	var $key=1;
	var type =$('#regtype').val();
	var username ='';
	if(type == 1){
		if(!$('#mobile').val()){
			show_eorr('请输入手机号码');
			$key=0;
			return false;
		}else if(!(/^[1][3,4,5,7,8,9][0-9]{9}$/.test($('#mobile').val()))){
			show_eorr('手机号码格式不正确');
			$key=0;
			return false;
		}
		username=$('#mobile').val();
	}else{
		if(!$('#email').val()){
			show_eorr('请输入电子邮箱');
			$key=0;
			return false;
		}else if(!(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test($('#email').val()))){
			show_eorr('电子邮箱格式不正确');
			$key=0;
			return false;
		}
		username=$('#email').val();
	}

	if(!$("#validcode").val()){
		show_eorr('请输入验证码');
		$key=0;
		return false;
	}
	// password
    if($('#password2').val()==''){
        show_eorr('请输入密码');
		$key=0;
		return false;
    }else if(!(/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$/.test($('#password2').val()))){
        show_eorr('密码为6-18位字母数字组合');
		$key=0;
		return false;
    }

    // password1
    if($('#password3').val()==''){
        show_eorr('请输入确认密码');
		$key=0;
		return false;
    }else if($('#password2').val()!=$('#password3').val()){
        show_eorr('两次密码输入不一致');
		$key=0;
		return false;
    }
}
function show_eorr(text){
	$(".stxt").text(text);
}


var clock;
var lasttime = 30;
function getvalidinfo() {
	var type =$('#regtype').val();
	var username ='';
	if(type == 1){
		if(!$('#mobile').val()){
			show_eorr('请输入手机号码');
			return false;
		}else if(!(/^[1][3,4,5,6,7,8,9][0-9]{9}$/.test($('#mobile').val()))){
			show_eorr('手机号码格式不正确');
			return false;
		}
		username=$('#mobile').val();
	}else{
		if(!$('#email').val()){
			show_eorr('请输入电子邮箱');
			return false;
		}else if(!(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test($('#email').val()))){
			show_eorr('电子邮箱格式不正确');
			return false;
		}
	}
	
	
}



</script>



</div><span class="layui-layer-setwin"></span></div>
</body>
</html>