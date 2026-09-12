@template.fragments.layout(
  title = "Parent Child",
  content = @`
    <%-- docs:start page --%>
    <h1 class="title">ParentChild-Page</h1>
    <div class="area-border p-1">
        @template.fragments.s04parent(greeting = "hello")
    </div>
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/00_jte/s04/">Docs</a>
`
)
