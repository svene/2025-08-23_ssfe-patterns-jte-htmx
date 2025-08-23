package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PagesController {
	@GetMapping("/")
	public String redirectRoot() {
		return "redirect:/ui/pages/page1";
	}

	@GetMapping("/ui/pages/page1")
	public String page1() {
		return "pages/page1";
	}

}
