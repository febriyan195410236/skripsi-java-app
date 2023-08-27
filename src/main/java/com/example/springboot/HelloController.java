package com.example.springboot;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/")
	public String index() {
		return "<b>Ini adalah halaman web aplikasi java v17.0.8</b> - Febriyan Adji Saputro (195410236)";
	}

}
