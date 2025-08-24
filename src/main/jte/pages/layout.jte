@import gg.jte.Content
@import org.svenehrke.demo.web.PagesController

@param Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SSFE-Patterns Demo with Plain JTE</title>
	<script src="/webjars/htmx.org/2.0.4/dist/htmx.js"></script>
</head>

<body>
<nav>
    <a href="${PagesController.PAGE_1_URL}">Page 1</a>
    <a href="${PagesController.PAGE_2_URL}">Page 2</a>
</nav>
		${content}
</body>

<footer>Footer</footer>
</html>
