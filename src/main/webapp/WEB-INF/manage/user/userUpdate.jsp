<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
  
  </head>
  
  <body>
  <!-- 上半部分 -->
 <%@ include file="/manage/common/head.jsp"%>
  	<script src="${pageContext.request.contextPath }/js/My97DatePicker/WdatePicker.js"></script>
  <div id="main" class="wrap">
	<!-- 左半部分 -->
  	<%@ include file="/manage/common/left.jsp" %>
  	
  	<div class="main">
		<h2>修改用户<font color="red">${requestScope.flag eq null?"":requestScope.flag}</font>
			<c:remove var="flag" scope="request"/></h2>
		<div class="manage">
			<s:form action="/user/userAction!update.action" method="post" theme="simple">
				<table class="form">
					<tbody>
					<tr>
					<td>
						<s:hidden name="id"></s:hidden>
					</td>
					</tr>
						
					<tr>
						<td class="field">登录名：</td>
						<td>
						<s:textfield name="loginname"></s:textfield>
						</td>
					</tr>
					<tr>
						<td class="field">用户名：</td>
						<td><s:textfield name="username"></s:textfield></td>
					</tr>
					<tr>
						<td class="field">密码：</td>
						<td><s:textfield name="password"></s:textfield></td>
					</tr>
					<tr>
						<td class="field">性别：</td>
						<td>
							<s:radio list="#{'1':'男','0':'女'}" name="sex"></s:radio>
						</td>
					</tr>
					<tr>
							<td class="field">出生日期：</td>
								<td><s:textfield name="birthday" onclick="WdatePicker()" readonly="readonly"> <s:param name="value"><s:date  name="birthday" format="yyyy-MM-dd hh:mm:ss"/></s:param> </s:textfield></td>
					</tr>
					<tr>
						<td class="field">手机号码：</td>
						<td><s:textfield name="mobile"></s:textfield></td>
					</tr>
					<tr>
						<td class="field">送货地址：</td>
						<td><s:textfield name="address"></s:textfield></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><s:submit value="修改"></s:submit></label></label></td>
					</tr>
				</tbody></table>
			</s:form>
		</div>
	</div>
  	
  	<div class="clear"></div>
</div>
<%@ include file="/manage/common/foot.jsp"%>
  
  
  </body>
</html>
