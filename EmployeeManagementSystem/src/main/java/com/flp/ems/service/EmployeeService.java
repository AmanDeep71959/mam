package com.flp.ems.service;

import java.util.List;

import com.flp.ems.domain.Department;
import com.flp.ems.domain.Employee;
import com.flp.ems.domain.Project;
import com.flp.ems.domain.Role;

public interface EmployeeService {
	public void saveEmployee(Employee employee);
	public List<Department> getAllDepartments();
	public List<Project> getAllProjects();
	public List<Role> getAllRoles();
	public List<Employee> getAllEmployees();
}
