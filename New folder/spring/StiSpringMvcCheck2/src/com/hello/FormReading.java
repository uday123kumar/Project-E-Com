package com.hello;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hello.model.Employee;

@Controller
@RequestMapping("/form")
public class FormReading {
	
	@RequestMapping("/read")
	public String read(Model model) {
		
		model.addAttribute("emp", new Employee());// Employee emp = new Employee
		
		return "readform";
	}
	
	@RequestMapping("/write")
	public String write(@ModelAttribute("emp") Employee empl, Model model) {// Employee empl = emp;
		
		model.addAttribute("empl", empl);
		//System.out.println(empl.getFirstName());
		return "writeform";
	}
}
