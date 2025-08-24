package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PagesController {

	public static final String PAGE_1_URL = "/ui/pages/page1";
	public static final String PAGE_2_URL = "/ui/pages/page2";

	@GetMapping(PAGE_1_URL)
	public String page1() {
		return "pages/page1";
	}

	@GetMapping(PAGE_2_URL)
	public String page2() {
		return "pages/page2";
	}

}
