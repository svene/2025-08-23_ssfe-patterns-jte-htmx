@template.fragments.layout(
  title = "Forwarder",
  content = @`
    <%-- docs:start page --%>
    <h1 class="title">Forwarder-Page</h1>
    <div class="area-border p-1">
        @template.fragments.s04forwarderfirst(greeting = "hello")
        @template.fragments.s04forwarderfirst(greeting = "hello with forward")
    </div>
    <%-- docs:end page --%>
    <hr>
    <a href="http://localhost:4321/technologies/00_jte/s04/">Docs</a>
`
)
