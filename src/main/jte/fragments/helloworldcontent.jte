@import gg.jte.Content

<%-- docs:start component --%>
@param Content greetingText

<%-- A component with a content slot: the caller passes a markup fragment as
     the `greetingText` parameter and this component decides where it goes. --%>
<div class="area-border">
    <p>Hi there!</p>
    ${greetingText}
</div>
<%-- docs:end component --%>
