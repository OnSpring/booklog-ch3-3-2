<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jspf/head.jspf"%> <!-- ① -->
<title>${title}</title>
</head>
<body>
	<section class="container">
		<h1><%=request.getAttribute("title")%></h1>
		<div>${message}</div>
		<div>${nowDate}</div>
		<a href="/post/list" role="button" class="btn btn-info">List</a>
		<a href="/post/write">
			<button type="button" class="btn btn-success">Write</button>
		</a>
	</section>
	<%@ include file="/WEB-INF/jspf/footer.jspf"%> <!-- ② -->
</body>
</html>
