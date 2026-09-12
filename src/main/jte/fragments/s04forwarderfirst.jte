@param String greeting

<%--
  Forwarder: if `greeting` mentions "forward", delegate to the `second`
  fragment; otherwise render here.
--%>
<%-- docs:start component --%>
@if(greeting != null && greeting.contains("forward"))
    @template.fragments.s04forwardersecond(greeting = greeting)
@else
    <div>First: ${greeting}</div>
@endif
<%-- docs:end component --%>
