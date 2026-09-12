package org.svenehrke.demo.web.s01simplepages;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * s01 — Simple Pages. Five ways to render a page from a plain JTE template
 * plus fragments, from a bare template up to nested content slots. One
 * controller for the whole module.
 */
// docs:start class
@Controller
public class S01Controller {
// docs:end class

	public static final String D01_URL = "/s01/d01";// docs: d01
	public static final String D02_URL = "/s01/d02";// docs: d02
	public static final String D03_URL = "/s01/d03";// docs: d03
	public static final String D04_URL = "/s01/d04";// docs: d04
	public static final String D05_URL = "/s01/d05";// docs: d05

	/** URLs the landing page needs for this module's menu cards. */
	public static Map<String, String> menuUrls() {
		return Map.of(
			"s01d01", D01_URL,
			"s01d02", D02_URL,
			"s01d03", D03_URL,
			"s01d04", D04_URL,
			"s01d05", D05_URL
		);
	}

	// docs:start d01
	@GetMapping(D01_URL)
	public String d01() {
		return "s01simplepages/d01";
	}
	// docs:end d01

	// docs:start d02
	@GetMapping(D02_URL)
	public String d02() {
		return "s01simplepages/d02";
	}
	// docs:end d02

	// docs:start d03
	@GetMapping(D03_URL)
	public String d03(
		@RequestParam(name = "greetee", defaultValue = "You") String greetee,
		Model model
	) {
		model.addAttribute("greetee", greetee);
		return "s01simplepages/d03";
	}
	// docs:end d03

	// docs:start d04
	@GetMapping(D04_URL)
	public String d04() {
		return "s01simplepages/d04";
	}
	// docs:end d04

	// docs:start d05
	@GetMapping(D05_URL)
	public String d05() {
		return "s01simplepages/d05";
	}
	// docs:end d05
}// docs: class
