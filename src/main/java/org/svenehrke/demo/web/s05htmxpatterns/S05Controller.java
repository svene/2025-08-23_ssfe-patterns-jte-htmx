package org.svenehrke.demo.web.s05htmxpatterns;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * s05 — htmx Patterns.
 * <ul>
 *   <li>d01 — URL components: a button {@code hx-get}s a fragment by its URL
 *       and htmx swaps the response into the page. The fragment endpoint
 *       ({@link #D01_MESSAGE_URL}) is just another handler on this
 *       controller.</li>
 * </ul>
 */
// docs:start class
@Controller
public class S05Controller {
// docs:end class

	public static final String D01_URL = "/s05/d01";// docs: d01
	public static final String D01_MESSAGE_URL = "/s05/d01/message";// docs: d01

	/** URLs the landing page needs for this module's menu cards. */
	public static Map<String, String> menuUrls() {
		return Map.of(
			"s05d01", D01_URL
		);
	}

	// docs:start d01
	@GetMapping(D01_URL)
	public String d01(Model model) {
		model.addAttribute("messageUrl", D01_MESSAGE_URL);
		return "s05htmxpatterns/d01";
	}

	/** The fragment the d01 button pulls in. Returns just the {@code <h3>}. */
	@GetMapping(D01_MESSAGE_URL)
	public String message(
		@RequestParam(name = "message", defaultValue = "Hello from the message fragment") String message,
		Model model
	) {
		model.addAttribute("message", message);
		return "s05htmxpatterns/d01message";
	}
	// docs:end d01
}// docs: class
