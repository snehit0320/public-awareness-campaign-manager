<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Audience • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <h1 class="h4 mb-3">Audience Segmentation</h1>
  <div class="row g-3">
    <div class="col-lg-4">
      <div class="card shadow-sm">
        <div class="card-header">Filters</div>
        <div class="card-body">
          <label class="form-label">Region</label>
          <select class="form-select mb-3">
            <option>All</option>
            <option>Coastal</option>
            <option>Low-lying</option>
            <option>Urban</option>
            <option>Rural</option>
          </select>

          <label class="form-label">Age</label>
          <div class="input-group mb-3">
            <input type="number" class="form-control" placeholder="Min">
            <input type="number" class="form-control" placeholder="Max">
          </div>

          <label class="form-label">Language</label>
          <select class="form-select mb-3">
            <option>Any</option>
            <option>English</option>
            <option>Hindi</option>
            <option>Tamil</option>
            <option>Telugu</option>
          </select>

          <label class="form-label">Risk Tags</label>
          <div class="form-check"><input class="form-check-input" type="checkbox" id="rt1"><label class="form-check-label" for="rt1">Flood-prone</label></div>
          <div class="form-check"><input class="form-check-input" type="checkbox" id="rt2"><label class="form-check-label" for="rt2">Dengue hotspot</label></div>
          <div class="form-check"><input class="form-check-input" type="checkbox" id="rt3"><label class="form-check-label" for="rt3">Water scarcity</label></div>

          <div class="d-grid mt-3">
            <button class="btn btn-primary">Save Segment</button>
          </div>
        </div>
      </div>
    </div>

    <div class="col-lg-8">
      <div class="card shadow-sm">
        <div class="card-header d-flex justify-content-between align-items-center">
          <span>Saved Segments</span>
          <input class="form-control form-control-sm w-auto" placeholder="Search segments">
        </div>
        <div class="list-group list-group-flush">
          <a class="list-group-item list-group-item-action d-flex justify-content-between">
            <span>Coastal Wards 18–60 (Tamil)</span><span class="badge bg-secondary">12,340</span>
          </a>
          <a class="list-group-item list-group-item-action d-flex justify-content-between">
            <span>Urban Dengue Hotspots</span><span class="badge bg-secondary">48,901</span>
          </a>
          <a class="list-group-item list-group-item-action d-flex justify-content-between">
            <span>Rural Water Conservation</span><span class="badge bg-secondary">73,115</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
