package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String redirectRoot() {
		return "redirect:" + PagesController.PAGE_1_URL;
	}
}
