@template.fragments.layout(
  title = "Forwarder",
  content = @`
    <h1 class="title">Forwarder-Page</h1>
    <div class="area-border p-1">
        @template.fragments.s04forwarderfirst(greeting = "hello")
        @template.fragments.s04forwarderfirst(greeting = "hello with forward")
    </div>
`
)
