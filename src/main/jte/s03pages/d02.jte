@param String greeting

@template.fragments.layout(
  title = "Content Page with Param",
  content = @`
    <%-- docs:start page --%>
    <h1 class="title">Content Page with Param says: ${greeting}</h1>
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/00_jte/s03/">Docs</a>
`
)
