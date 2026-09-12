@param String s01d01
@param String s01d02
@param String s01d03
@param String s01d04
@param String s01d05
@param String s03d01
@param String s03d02
@param String s03d03
@param String s03d04
@param String s04d01
@param String s04d02

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

    <section class="section">
        <h1 class="title">Page Patterns</h1>
        <h2 class="subtitle">Assembling a whole page — for MPAs or a single page.</h2>

        <div class="fixed-grid">
            <div class="grid">
                @template.fragments.maincard(url = s03d01, title = "Content Page", subtitle = null, recommendation = "Recommended for most use cases")
                @template.fragments.maincard(url = s03d02 + "?greeting=Hey You!", title = "Content Page", subtitle = "taking a parameter", recommendation = "When the page itself needs a parameter")
                @template.fragments.maincard(url = s03d03 + "?greeting=Hey You!", title = "Custom Page", subtitle = "taking a parameter", recommendation = "When the opinionated content page does not fit")
                @template.fragments.maincard(url = s03d04, title = "MPA Example", subtitle = "with menu", recommendation = null)
            </div>
        </div>
    </section>

    <section class="section">
        <h1 class="title">UI Patterns</h1>
        <h2 class="subtitle">For reusable UI parts and components.</h2>

        <div class="fixed-grid">
            <div class="grid">
                @template.fragments.maincard(url = s04d01, title = "Parent Child", subtitle = null, recommendation = null)
                @template.fragments.maincard(url = s04d02, title = "Forwarder", subtitle = null, recommendation = null)
            </div>
        </div>
    </section>
</div>
</body>
</html>
