package org.svenehrke.demo.web.s03pages;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * s03 — Page Patterns. How to assemble a whole page:
 * <ul>
 *   <li>d01 — content page: a reusable {@code layout} fragment pulls in the page's content.</li>
 *   <li>d02 — same, but the page takes a request parameter.</li>
 *   <li>d03 — custom page: no shared layout; the page builds the document itself
 *       from the smaller {@code pagehead} fragment.</li>
 *   <li>d04 — MPA example: two pages ({@code d04p1}, {@code d04p2}) share a nav
 *       layout that highlights the current page.</li>
 * </ul>
 */
@Controller
public class S03Controller {

	public static final String D01_URL = "/s03/d01";
	public static final String D02_URL = "/s03/d02";
	public static final String D03_URL = "/s03/d03";
	public static final String D04P1_URL = "/s03/d04p1";
	public static final String D04P2_URL = "/s03/d04p2";

	/** URLs the landing page needs for this module's menu cards. */
	public static Map<String, String> menuUrls() {
		return Map.of(
			"s03d01", D01_URL,
			"s03d02", D02_URL,
			"s03d03", D03_URL,
			"s03d04", D04P1_URL
		);
	}

	@GetMapping(D01_URL)
	public String d01() {
		return "s03pages/d01";
	}

	@GetMapping(D02_URL)
	public String d02(
		@RequestParam(name = "greeting", defaultValue = "Hello") String greeting,
		Model model
	) {
		model.addAttribute("greeting", greeting);
		return "s03pages/d02";
	}

	@GetMapping(D03_URL)
	public String d03(
		@RequestParam(name = "greeting", defaultValue = "Hello") String greeting,
		Model model
	) {
		model.addAttribute("greeting", greeting);
		return "s03pages/d03";
	}

	@GetMapping(D04P1_URL)
	public String d04p1(Model model) {
		addMpaModel(model, "page1");
		return "s03pages/d04p1";
	}

	@GetMapping(D04P2_URL)
	public String d04p2(Model model) {
		addMpaModel(model, "page2");
		return "s03pages/d04p2";
	}

	private void addMpaModel(Model model, String selectedMenu) {
		model.addAttribute("selectedMenu", selectedMenu);
		model.addAttribute("p1Url", D04P1_URL);
		model.addAttribute("p2Url", D04P2_URL);
	}
}
