package org.svenehrke.demo.web.s04uipatterns;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * s04 — UI Patterns for reusable fragments.
 * <ul>
 *   <li>d01 — parent/child: a parent fragment passes slot content down into a
 *       nested child fragment.</li>
 *   <li>d02 — forwarder: a fragment decides, from its parameter, whether to
 *       render itself or delegate to another fragment.</li>
 * </ul>
 */
// docs:start class
@Controller
public class S04Controller {
// docs:end class

	public static final String D01_URL = "/s04/d01";// docs: d01
	public static final String D02_URL = "/s04/d02";// docs: d02

	/** URLs the landing page needs for this module's menu cards. */
	public static Map<String, String> menuUrls() {
		return Map.of(
			"s04d01", D01_URL,
			"s04d02", D02_URL
		);
	}

	// docs:start d01
	@GetMapping(D01_URL)
	public String d01() {
		return "s04uipatterns/d01";
	}
	// docs:end d01

	// docs:start d02
	@GetMapping(D02_URL)
	public String d02() {
		return "s04uipatterns/d02";
	}
	// docs:end d02
}// docs: class
