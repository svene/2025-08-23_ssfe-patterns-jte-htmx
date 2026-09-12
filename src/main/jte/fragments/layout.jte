@import gg.jte.Content

@param String title
@param Content content

<%--
  Opinionated page layout (Content-Page pattern / Template-Injection): a demo
  page has the passive role and is injected into this reusable layout via its
  `content` parameter.
--%>
<!DOCTYPE html>
<html lang="en">
@template.fragments.pagehead(title = title)
<body>
<div class="container mt-1">
    <div class="p-1 mt-1">
        ${content}
    </div>
</div>
</body>
</html>
