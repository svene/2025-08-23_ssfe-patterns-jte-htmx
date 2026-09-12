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
@Controller
public class S01Controller {

	public static final String D01_URL = "/s01/d01";
	public static final String D02_URL = "/s01/d02";
	public static final String D03_URL = "/s01/d03";
	public static final String D04_URL = "/s01/d04";
	public static final String D05_URL = "/s01/d05";

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

	@GetMapping(D01_URL)
	public String d01() {
		return "s01simplepages/d01";
	}

	@GetMapping(D02_URL)
	public String d02() {
		return "s01simplepages/d02";
	}

	@GetMapping(D03_URL)
	public String d03(
		@RequestParam(name = "greetee", defaultValue = "You") String greetee,
		Model model
	) {
		model.addAttribute("greetee", greetee);
		return "s01simplepages/d03";
	}

	@GetMapping(D04_URL)
	public String d04() {
		return "s01simplepages/d04";
	}

	@GetMapping(D05_URL)
	public String d05() {
		return "s01simplepages/d05";
	}
}
