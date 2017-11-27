<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<title>List Customers</title>

<!-- reference our style sheet -->
<link type="text/css" rel="stylesheet" 
 	href="${pageContext.request.contextPath}/resources/bootstrap-4.0.0-beta.2-dist/css/bootstrap.min.css" /> 
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">

			<!-- put new button: Add Customer -->

			<input type="button" value="Add Customer"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="btn btn-primary" />

			<!--  add our html table here -->

			<table class="table table-striped">
			
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Home Address</th>
					<th>Work Address</th>
					<th>Mobile</th>
					<th>Action</th>
				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">

					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td> ${tempCustomer.customerDetail.homeAddress} </td>
						<td> ${tempCustomer.customerDetail.workAddress} </td>
						<td> ${tempCustomer.customerDetail.mobile} </td>

						<td>
							<!-- display the update link --> <a href="${updateLink}">Update</a>
							| <a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>

					</tr>

				</c:forEach>

			</table>

		</div>

	</div>


</body>

</html>









