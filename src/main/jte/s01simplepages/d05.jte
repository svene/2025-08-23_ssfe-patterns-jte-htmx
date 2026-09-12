<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/simplepage.css"/>
</head>
<body class="page">
<div>
    <%-- docs:start page --%>
    <h1>Page with Nested Components</h1>

    @template.fragments.helloworldcontent(
      greetingText = @`
        <p>before nested content</p>
        @template.fragments.helloworldcontent(
          greetingText = @`
            <p>NESTED CONTENT</p>
        `)
        <p>after nested content</p>
    `)
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/00_jte/s01/">Docs</a>
</div>
</body>
</html>
