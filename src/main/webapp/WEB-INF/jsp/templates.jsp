<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Templates • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h1 class="h4 m-0">Template Library</h1>
    <div class="d-flex gap-2">
      <input class="form-control" placeholder="Search templates">
      <a href="/campaigns/create" class="btn btn-primary">Use in Campaign</a>
    </div>
  </div>

  <div class="row g-3">
    <div class="col-md-3">
      <div class="card template-card h-100 shadow-sm">
        <img class="card-img-top" src="https://via.placeholder.com/600x400?text=Flood+Alert" alt="">
        <div class="card-body">
          <h6 class="card-title">Flood Alert Poster</h6>
          <p class="card-text small text-muted">Bold helpline & safe routes</p>
          <button class="btn btn-outline-primary btn-sm w-100">Select</button>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card template-card h-100 shadow-sm">
        <img class="card-img-top" src="https://via.placeholder.com/600x400?text=Dengue+Checklist" alt="">
        <div class="card-body">
          <h6 class="card-title">Dengue Checklist</h6>
          <p class="card-text small text-muted">Drain water • Cover tanks</p>
          <button class="btn btn-outline-primary btn-sm w-100">Select</button>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card template-card h-100 shadow-sm">
        <img class="card-img-top" src="https://via.placeholder.com/600x400?text=Water+Saving+Tips" alt="">
        <div class="card-body">
          <h6 class="card-title">Water Saving Tips</h6>
          <p class="card-text small text-muted">Reduce, reuse, repair leaks</p>
          <button class="btn btn-outline-primary btn-sm w-100">Select</button>
        </div>
      </div>
    </div>
    <!-- Add more template cards -->
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
