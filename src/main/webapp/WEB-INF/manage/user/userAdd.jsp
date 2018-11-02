<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
	
	<!-- 上半部分 -->
<%@ include file="/manage/common/head.jsp"%>
	
	
	
	<div id="main" class="wrap">
		<!-- 左半部分 -->
		<%@ include file="/manage/common/left.jsp"%>

		

		<div class="main">
			<h2>新增用户</h2>
			<div class="manage">
				<form action="/user/userAction!save.action" method="post" >
					<table class="form">
						<tbody>
							<tr>
								<td class="field">登录名：</td>
								<td><input type="text" class="text" name="loginname"
									value="" />
									<font id="nameDiv" color="red" size="2px"></font>
								</td>
							</tr>
							<tr>
								<td class="field">用户名：</td>
								<td><input type="text" class="text" name="username" value="" />
								</td>
							</tr>
							<tr>
								<td class="field">密码：</td>
								<td><input type="text" class="text" name="password"
									value="" />
								</td>
							</tr>
							<tr>
								<td class="field">性别：</td>
								<td><input type="radio" name="sex" value="1"
									checked="checked" />男 <input type="radio" name="sex" value="0" />女</td>
							</tr>
							<tr>
								<td class="field">出生日期：</td>
								<td><input type="text" class="text" name="birthday"
									onclick="WdatePicker()" /></td>
							</tr>
							<tr>
								<td class="field">手机号码：</td>
								<td><input type="text" class="text" name="mobile" value="" />
								</td>
							</tr>
							<tr>
								<td class="field">送货地址：</td>
								<td><input type="text" class="text" name="address" value="" />
								</td>
							</tr>
							<tr>
								<td class="field">用户类型：</td>
								<td><select name="status">
										<option value="0">管理员</option>
										<option value="1">审核员</option>
										<option value="2">配货员</option>
										<option value="3">送货员</option>
								</select></td>
							</tr>
							<tr>
								<td></td>
								<td><label class="ui-blue">
								<input type="submit" name="submit" value="添加" />
								</label>
								</td>
							</tr>
							
						</tbody>
					</table>
				</form>
			</div>
		</div>


		<div class="clear"></div>
	</div>
	<%@ include file="/manage/common/foot.jsp"%>


</body>
</html>
