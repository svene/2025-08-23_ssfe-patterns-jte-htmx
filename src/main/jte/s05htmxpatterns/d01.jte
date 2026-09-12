@param String messageUrl

@template.fragments.layout(
  title = "URL Components",
  content = @`
    <h1 class="title">UrlComponent-Page</h1>

    <button class="button" hx-get="${messageUrl}?message=hello" hx-target="#my-message">Include Component</button>

    <div id="my-message"></div>
    <hr>
    <p>The message component is fetched by its URL and swapped in, using:</p>
    <pre>hx-get=${messageUrl}?message=hello</pre>
`
)
