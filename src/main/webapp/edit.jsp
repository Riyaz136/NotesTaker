<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-center">Edit your note</h1>
		<br>
		<%
		int noteId= Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getfactory().openSession();
		Note note = (Note)s.get(Note.class, noteId);
		%>

		<!-- this is add note form -->
		<form action="UpdateServlet" method="post">
		
		<input value="<%= note.getId()%> " name="noteId" type="hidden"/>
		
			<div class="form-group">
				<label for="title">Note Title </label> <input required="required"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here " name="title"
					value="<%=note.getTitle()%>">
			</div>


			<div class="form-group">
				<label for="content"> Note content </label>
				<textarea required="required" name="content" id="content"
					placeholder="Enter your content here " class="form-control"
					style="height: 300px;"> <%=note.getContent()%></textarea>
			</div>

			<div class="container  text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>


		</form>


	</div>

</body>
</html>