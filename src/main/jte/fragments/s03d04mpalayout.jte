@import gg.jte.Content

@param Content content
@param String selectedMenu
@param String p1Url
@param String p2Url

<%--
  MPA layout shared by d04p1 and d04p2. The nav highlights the current page
  from the `selectedMenu` parameter; `p1Url` / `p2Url` also come from the
  controller.
--%>
<%-- docs:start page --%>
<!DOCTYPE html>
<html lang="en">
@template.fragments.pagehead(title = "Application/Page Patterns")
<body>
<section class="hero is-link">
    <div class="hero-body">
        <p class="title">Template Based Application/Page Patterns</p>
        <p class="subtitle">Hypermedia-Patterns Demo with Spring Boot and Plain JTE</p>
    </div>
</section>

<div class="container mt-1">
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item ${selectedMenu.equals("page1") ? "is-selected" : ""}" href="${p1Url}">Page 1</a>
                <a class="navbar-item ${selectedMenu.equals("page2") ? "is-selected" : ""}" href="${p2Url}">Page 2</a>
            </div>
        </div>
    </nav>

    <div class="p-1 mt-1 area-border" style="min-height: 300px">
        ${content}
    </div>
    <%-- docs:end page --%>

    <hr>
    <a href="http://localhost:4321/technologies/00_jte/s03/">Docs</a>
    <%-- docs:start page --%>
</div>
</body>
</html>
<%-- docs:end page --%>
