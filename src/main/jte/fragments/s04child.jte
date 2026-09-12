@import gg.jte.Content

@param Content slot1

<%-- Child fragment: renders whatever slot content the parent handed down. --%>
<%-- docs:start component --%>
<div>
    Child: <span style="color: var(--bulma-warning)">${slot1}</span>
</div>
<%-- docs:end component --%>
