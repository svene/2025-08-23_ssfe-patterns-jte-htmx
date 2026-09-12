@param String greeting

<%--
  Custom Page pattern (Template-Inclusion): unlike the Content-Page pattern
  (d01/d02), this page has the active role — it builds the whole document
  itself and only reuses the small `pagehead` fragment via a plain
  @template call (no Content parameter).

  JTE does not allow unclosed tags in a template, so `pagehead` cannot itself
  open <body> for this page to close later. The workaround is to put the
  enclosing tag in the consumer, as done here. For non-simple cases it is
  better to use the Content-Page pattern (JTE Content parameters) instead.
--%>
<!DOCTYPE html>
<html lang="en">
@template.fragments.pagehead(title = "Custom Page")
<body>
<div class="container mt-1">
    <div class="p-1 mt-1">
        <h1 class="title">Custom Page with Param says: ${greeting}</h1>

        <div class="content">
            <p>Recommended for special-case pages of an application.</p>
            <p>This page does not use a layout fragment. Instead it assembles the
                document by pulling in the common parts (head, and — in a real app —
                navigation and footer) itself.</p>
            <p>So this page has an <em>active</em> role in constructing the document,
                not the <em>passive</em> role it has in the Content-Page pattern (d01).</p>
            <p>In the Content-Page pattern the whole layout is reusable; here only the
                individual parts are.</p>
        </div>
    </div>
</div>
</body>
</html>
