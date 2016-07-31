<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jspf/head.jspf"%>
<title>Post Form</title>
</head>
<body>
	<section class="container">
		<h2>글쓰기</h2>
		<hr />
		<form method="post"
			action="${requestScope['javax.servlet.forward.servlet_path']}">
			<fieldset class="form-group">
				<label for="formBookTitle">bookTitle</label>
				<input id="formBookTitle" type="text" class="form-control"
					name="bookTitle" value="${post.bookTitle}"
					placeholder="Title input" /> 
			</fieldset>
			<fieldset class="form-group">
				<label for="formContent">Content</label>
				<textarea id="formContent" class="form-control" name="content"
					rows="3">${post.content}</textarea>
			</fieldset>
			<input type="submit" class="btn btn-primary" value="저장" />
		</form>
	</section>
	<%@ include file="/WEB-INF/jspf/footer.jspf"%> <!-- ① -->
	<script type="text/javascript"> <!-- ②  -->
		$('form').submit(function(event) { <!-- ③ -->
			$('form input:text, textarea').each(function() { <!-- ④ -->
				if (!($.trim($(this).val())).length) { <!-- ⑤ -->
					alert("모든 값을 입력해 주세요!");
					event.preventDefault();
					return false;
				}
			});
		});
	</script>
</body>
</html>
