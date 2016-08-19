package com.flp.ems.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.flp.ems.domain.Employee;
import com.flp.ems.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/empForm")
	public String showEmployeeForm(ModelMap map){
		map.put("employee",new Employee());
		map.put("departments", employeeService.getAllDepartments());
		map.put("projects", employeeService.getAllProjects());
		map.put("roles", employeeService.getAllRoles());
		map.put("employees", employeeService.getAllEmployees());
		return "empPage";
	}
}
