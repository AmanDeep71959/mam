<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Management System</title>
</head>
<body>

<h1 align="center">Employee Management System</h1>

<hr>

<form:form action="" method="post" commandName="employee">
	<table>
		<tr>
			<td>EmployeeName:</td>
			<td>
				<form:input path="eName"/>
			</td>
		
		</tr>
		<tr>
			<td>KinId:</td>
			<td>
				<form:input path="kinId"/>
			</td>
		
		</tr>
		<tr>
			<td>EmailId:</td>
			<td>
				<form:input path="emailId"/>
			</td>
		
		</tr>
		<tr>
			<td>PhoneNumber:</td>
			<td>
				<form:input path="phoneno"/>
			</td>
		
		</tr>
		<tr>
			<td>Address:</td>
			<td>
				<form:input path="address"/>
			</td>
		
		</tr>
		<tr>
			<td>Date of birth:</td>
			<td>
				<form:input path="empdob"/>
			</td>
		
		</tr>
		<tr>
			<td>Date Of joining:</td>
			<td>
				<form:input path="empdoj"/>
			</td>
		
		</tr>
		<tr>
			<td>Choose Role:</td>
			<td>
				<c:if test="${!empty roles }">
				<form:select path="role">
					<c:forEach var="role" items="${roles}">
						<form:option value="${role.roleId}"> ${role.roleName}</form:option>
					</c:forEach>
				
				</form:select>
				</c:if>
			</td>
		
		</tr>
		
		<tr>
			<td>Choose Department:</td>
			<td>
				<c:if test="${!empty departments }">
				<form:select path="department">
					<c:forEach var="project" items="${projects}">
						<form:option value="${project.projectId}"> ${project.projectName}</form:option>
					</c:forEach>
				
				</form:select>
				</c:if>
			</td>
		
		</tr>
		
		<tr>
			<td>Choose Project:</td>
			<td>
				<c:if test="${!empty departments }">
				<form:select path="department">
					<c:forEach var="depart" items="${departments}">
						<form:option value="${depart.deptId}"> ${depart.deptName}</form:option>
					</c:forEach>
				
				</form:select>
				</c:if>
			</td>
		
		</tr>
	
		<tr>
			<td></td>
			<td>
				<input type="submit" value="Save">
				
			</td>
		</tr>
	
	</table>

</form:form>

<c:if test="${!empty employees}">
	<table>
		<tr>
			<th>Employee Id</th>
			<th>EmployeeName</th>
			<th>KinId</th>
			<th>EmailId</th>
			<th>PhoneNumber</th>
			<th>Address</th>
			<th>DateOf Birth</th>
			<th>DateOf joining</th>
			<th>Department</th>
		</tr>
		
		<c:forEach var="emp" items="${employees}">
		<tr>
			<td>${emp.empId }</td>
			<td>${emp.eName }</td>
			<td>${emp.kinId }</td>
			<td>${emp.emailId }</td>
			<td>${emp.phoneno }</td>
			<td>${emp.address }</td>
			<td>${emp.empdob }</td>
			<td>${emp.empdoj }</td>
			<td>${emp.department.deptName }</td>
		</tr>
		
		</c:forEach>
	
	</table>

 </c:if>















</body>
</html>