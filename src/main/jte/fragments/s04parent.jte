@param String greeting

<%--
  Parent fragment: builds a chunk of slot markup (interpolating its own
  `greeting` parameter) and passes it down into the child fragment.
--%>
<div>
    <h3>Parent</h3>
    <div class="area-border p-1">
        @template.fragments.s04child(
          slot1 = @`slot-content from parent. Greeting: ${greeting}`
        )
    </div>
</div>
