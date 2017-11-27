<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>Save Customer</title>

<link type="text/css" rel="stylesheet" 
 	href="${pageContext.request.contextPath}/resources/bootstrap-4.0.0-beta.2-dist/css/bootstrap.min.css" /> 
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			
			<table class ="table table-striped">
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input class="form-control" path="firstName" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><form:input class="form-control" path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input class="form-control" path="email" /></td>
					</tr>

					<tr>
						<td><label>Home address:</label></td>
						<td><form:input class="form-control" path="customerDetail.homeAddress" /></td>
					</tr>
					<tr>
						<td><label>Work address:</label></td>
						<td><form:input class="form-control" path="customerDetail.workAddress" /></td>
					</tr>
					<tr>
						<td><label>Mobile:</label></td>
						<td><form:input class="form-control" path="customerDetail.mobile" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="btn btn-primary" /></td>
					</tr>


				</tbody>
			</table>


		</form:form>

		<div style=""></div>

		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>

	</div>

</body>

</html>










