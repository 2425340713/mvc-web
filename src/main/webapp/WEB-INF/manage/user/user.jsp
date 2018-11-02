<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
	
  </head>
   
  <body>
  <!-- 上半部分 -->
  
<%@ include file="/manage/common/head.jsp"%>
 
  <div id="main" class="wrap">
	<!-- 左半部分 -->
  	<%@ include file="/manage/common/left.jsp" %>
  	
  	<div class="main">
		<h2>用户管理<font color="red">${sessionScope.flag eq null?"":sessionScope.flag}</font></h2>
		<c:remove var="flag" scope="session"/>
		<div class="manage">
			<table class="list">
				<tbody><tr>
					<th>ID</th>
					<th>姓名</th>
					<th>性别</th>
					<th>Email</th>
					<th>手机</th>
					<th>操作</th>
				</tr>
				
				<c:forEach var="user" items="${listUser}" varStatus="status">
				<tr>
				
					<td class="first w4 c">${status.count}</td>
					<td class="w1 c">${user.loginname}</td>
					<td class="w2 c">${user.sex}</td>
					<td>${user.email}</td>
					<td class="w4 c">${user.mobile}</td>
					<td class="w1 c"><a href="${sessionScope.path }/user/userAction!edit.action?id=${list.id}">修改</a> <a href="${sessionScope.path }/user/userAction!delete.action?id=${list.id}">删除</a></td>
				</tr>
				</c:forEach>
			</tbody></table>
			
			
			
			
			
			<div class="pager">
				<ul class="clearfix">
					<c:choose>
						<c:when test="${ requestScope.paging.pageNo eq 1}">
							<li>上一页</li>
						</c:when>
						<c:otherwise>
							<li><a href="${sessionScope.path }/user/userAction.action?page=${ requestScope.paging.pageNo-1}">上一页</a></li>
						</c:otherwise>
					</c:choose>
					
					<c:forEach var="page" begin="1" end="${requestScope.paging.pageCount }">
						<c:choose>
						<c:when test="${ requestScope.paging.pageNo eq page}">
							<li class="current">${page}</li>
						</c:when>
						<c:otherwise>
							<li><a href="${sessionScope.path }/user/userAction.action?page=${page}">${page}</a></li>
						</c:otherwise>
					</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${ requestScope.paging.pageNo eq requestScope.paging.pageCount}">
							<li>下一页</li>
						</c:when>
						<c:otherwise>
							<li><a href="${sessionScope.path }/user/userAction.action?page=${ requestScope.paging.pageNo+1}">下一页</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			
			<form action="/user/userAction!export.action" method="post" >
				
				<input type="submit" name="submit" value="导出" />
			</form>
			
		</div>
	</div>
  	 
  	
  	
  	<div class="clear"></div>
</div>
<%@ include file="/manage/common/foot.jsp"%>
 
  
  </body>
</html>
