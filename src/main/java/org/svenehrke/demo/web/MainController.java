package org.svenehrke.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.svenehrke.demo.web.s01simplepages.S01Controller;
import org.svenehrke.demo.web.s03pages.S03Controller;
import org.svenehrke.demo.web.s04uipatterns.S04Controller;

/**
 * Serves the landing page at {@code /}. The page lists every demo, grouped by
 * module; each module contributes its menu-card URLs here and its own menu
 * section to {@code s00main/index.jte}.
 */
@Controller
public class MainController {

	@GetMapping("/")
	public String main(Model model) {
		model.addAllAttributes(S01Controller.menuUrls());
		model.addAllAttributes(S03Controller.menuUrls());
		model.addAllAttributes(S04Controller.menuUrls());
		return "s00main/index";
	}
}
