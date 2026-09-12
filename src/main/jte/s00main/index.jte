@param String s01d01
@param String s01d02
@param String s01d03
@param String s01d04
@param String s01d05

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hypermedia Patterns</title>
    <script src="/js/htmx.org/4.0.0/htmx.js"></script>
    <link rel="stylesheet" href="/css/bulma/1.0.4/bulma.min.css"/>
    <link rel="stylesheet" href="/main.css"/>
</head>
<body>
<div class="container">
    <section class="section">
        <div class="container">
            <h1 class="title">Hypermedia Patterns</h1>
            <p class="subtitle">with Spring Boot and plain JTE</p>
        </div>
    </section>

    <%-- One <section> per module. s02 is intentionally skipped: it is only
         used by variants that have a View-Component (or JSX) concept, which
         this plain-JTE variant deliberately does not have. --%>

    <section class="section">
        <h1 class="title">Simple Pages</h1>
        <h2 class="subtitle">For basic use cases. Needs a Spring controller.</h2>

        <div class="fixed-grid">
            <div class="grid">
                @template.fragments.maincard(url = s01d01, title = "Basic Page", subtitle = "made using a template", recommendation = null)
                @template.fragments.maincard(url = s01d02, title = "Basic Page", subtitle = "using a fragment", recommendation = null)
                @template.fragments.maincard(url = s01d03 + "?greetee=You", title = "Page and Component", subtitle = "with parameters", recommendation = "When page and/or component need parameters")
                @template.fragments.maincard(url = s01d04, title = "Content parameter", subtitle = "passed from page to component", recommendation = "When HTML needs to be passed into a component")
                @template.fragments.maincard(url = s01d05, title = "Nested components", subtitle = "or: template in template", recommendation = "If you need components in content parameters")
            </div>
        </div>
    </section>
</div>
</body>
</html>
