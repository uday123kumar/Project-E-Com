<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"-%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Employee details</title>
</head>
<body>

	<h4>Enter details</h4>
	<s:form action="write" modelAttribute="emp">
	
	First Name: <s:input path="firstName" />
	Last Name: <s:input path="lastName" />

		<s:select path="department">
			<s:option value="Software Engineer" label="Software Engineer"></s:option>
			<s:option value="Software Test Engineer"
				label="Software Test Engineer"></s:option>
			<s:option value="Admin" label="Admin"></s:option>
			<s:option value="Worker" label="Worker"></s:option>
		</s:select>
		<input type="submit" value="Submit Details">
	</s:form>
</body>
</html>