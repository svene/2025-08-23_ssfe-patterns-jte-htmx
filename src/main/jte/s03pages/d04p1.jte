@param String selectedMenu
@param String p1Url
@param String p2Url

@template.fragments.s03d04mpalayout(
  content = @`
    <%-- docs:start page --%>
    <div class="content">
        <p>The pages of this application all share one layout fragment.</p>
        <p>Unlike the custom-page pattern (d03), here the <strong>layout</strong> has
            the active role: it pulls in the page content. The page is passive.</p>
        <p>Because the content is injected into the layout, the layout is reusable
            for every page of the application.</p>
        <p>The injected content sits inside the coloured border; everything outside
            it comes from the layout.</p>
    </div>
    <%-- docs:end page --%>
`,
  selectedMenu = selectedMenu,
  p1Url = p1Url,
  p2Url = p2Url
)
