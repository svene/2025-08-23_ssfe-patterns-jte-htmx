@param String url
@param String title
@param String subtitle
@param String recommendation

<%--
  One card in the landing-page menu. title / subtitle / recommendation are
  rendered as raw text; recommendation and subtitle may be null.
--%>
<div class="cell is-flex is-justify-content-start is-align-items-center">
    <div class="card" style="width: 50%; height: 100%">
        <a href="${url}" target="_blank">
            <div class="card-content">
                <p class="title is-4 mb-1">${title}</p>
                @if(subtitle != null && !subtitle.isEmpty())
                    <p class="title is-6 mb-1">${subtitle}</p>
                @endif
                @if(recommendation != null && !recommendation.isEmpty())
                    <p class="subtitle is-6 mb-1">${recommendation}</p>
                @endif
            </div>
            <div class="card-content">Demo...</div>
        </a>
    </div>
</div>
