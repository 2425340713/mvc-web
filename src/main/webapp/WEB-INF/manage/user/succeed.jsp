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
  
  <div id="main" class="wrap">
	<!-- 左半部分 -->
  	<%@ include file="/manage/common/left.jsp" %>
  	
  	
  	<div class="main">
	<h2>提示信息</h2>
	<div class="manage">
		<div class="shadow">
			<em class="corner lb"></em>
			<em class="corner rt"></em>
			<div class="box">
				<div class="msg">
					<p>恭喜：操作成功！</p>
					<p>正在进入用户页面/manage.</p>
					<script type="text/javascript">
						setTimeout("location.href='${sessionScope.path}/UserServlet?methodName=select'", 1000);
					</script>
				</div>
			</div>
		</div>
	</div>
</div>
	
  	
  	
  	<div class="clear"></div>
</div>
<%@ include file="/manage/common/foot.jsp"%>
  
  
  </body>
</html>
