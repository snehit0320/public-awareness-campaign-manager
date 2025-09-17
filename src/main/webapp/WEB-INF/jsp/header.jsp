<%-- Shared top navbar (include with <%@ include file="/WEB-INF/jsp/header.jsp" %>) --%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="/">Public Awareness CM</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topNav"
            aria-controls="topNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="topNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="/campaign">Campaigns</a></li>
        <li class="nav-item"><a class="nav-link" href="/segments">Audience</a></li>
        <li class="nav-item"><a class="nav-link" href="/scheduler">Scheduler</a></li>
        <li class="nav-item"><a class="nav-link" href="/performance">Performance</a></li>
        <li class="nav-item"><a class="nav-link" href="/templates">Templates</a></li>
        <li class="nav-item"><a class="nav-link" href="/collaboration">Collab</a></li>
      </ul>
    </div>
  </div>
</nav>
