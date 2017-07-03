<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<ul>
		<c:forEach var="announcement" items="${announcements}">
			<li>Id: <c:out value="${announcement.id}" /><br />
			</li>
			<li>Title: <c:out value="${announcement.title}" /><br />
			</li>
			<li>Content: <c:out value="${announcement.content}" /><br />
			</li>
			<li>Location <c:out value="${announcement.location}" /><br />
			</li>
			<li>Confirmation Code: <c:out
					value="${announcement.confirmationCode}" /><br />
			</li>
			<li>Create Date: <c:out value="${announcement.createDate}" /><br />
			</li>
			<li>Owner Email: <c:out value="${announcement.ownerEmail}" /><br />
			</li>
			<li>Owner First Name <c:out
					value="${announcement.ownerFirstName}" /><br />
			</li>
			<li>Owner Last Name: <c:out
					value="${announcement.ownerLastName}" /><br />
			</li>
			<li>Owner Phone: <c:out value="${announcement.ownerPhone}" /><br />
			</li>
			<li>Category Name: <c:out value="${announcement.categoryName}" /><br />
			</li>
			<li>Category Description: <c:out
					value="${announcement.categoryDescription}" /><br />
			</li>
			<br />
			<br />
			<br />
		</c:forEach>
	</ul>
	<ul>
		<li>Id: <c:out value="${newAnnouncement.id}" /><br />
		</li>
		<li>Title: <c:out value="${newAnnouncement.title}" /><br />
		</li>
		<li>Content: <c:out value="${newAnnouncement.content}" /><br />
		</li>
		<li>Location <c:out value="${newAnnouncement.location}" /><br />
		</li>
		<li>Confirmation Code: <c:out
				value="${newAnnouncement.confirmationCode}" /><br />
		</li>
		<li>Create Date: <c:out value="${newAnnouncement.createDate}" /><br />
		</li>
		<li>Owner Email: <c:out value="${newAnnouncement.ownerEmail}" /><br />
		</li>
		<li>Owner First Name <c:out
				value="${newAnnouncement.ownerFirstName}" /><br />
		</li>
		<li>Owner Last Name: <c:out
				value="${newAnnouncement.ownerLastName}" /><br />
		</li>
		<li>Owner Phone: <c:out value="${newAnnouncement.ownerPhone}" /><br />
		</li>
		<li>Category Name: <c:out value="${newAnnouncement.categoryName}" /><br />
		</li>
		<li>Category Description: <c:out
				value="${newAnnouncement.categoryDescription}" /><br />
		</li>
	</ul>

	<form action="/announcement/add.do" method="post">
		First name:<br> <input type="text" name="firstname" value="${newAnnouncement.ownerFirstName}"><br>
		Last name:<br> <input type="text" name="lastname" value="${newAnnouncement.ownerLastName}"><br>
		<br> <input type="submit" value="Submit">
	</form>
</body>
</html>