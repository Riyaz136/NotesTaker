<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add your Notes</title>

<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1 class="text-center"> please fill your note detail here</h1>

         <!-- this is add note form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title </label> <input required="required"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here " name="title"> 
			</div>
			
			
			<div class="form-group">
				<label for="content"> Note content </label> 
				<textarea  required="required"  name="content" id="content" placeholder="Enter your content here " class="form-control" style="height: 300px;"></textarea>
			</div>
			
			<div class="container  text-center"  ><button type="submit" class="btn btn-primary">Submit</button></div>
			
			
		</form>

	</div>

</body>
</html>