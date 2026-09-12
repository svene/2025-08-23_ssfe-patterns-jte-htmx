@template.fragments.layout(
  title = "Parent Child",
  content = @`
    <h1 class="title">ParentChild-Page</h1>
    <div class="area-border p-1">
        @template.fragments.s04parent(greeting = "hello")
    </div>
`
)
