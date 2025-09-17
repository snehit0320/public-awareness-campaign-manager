<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Scheduler • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h1 class="h4 m-0">Scheduler</h1>
    <a href="/campaigns/create" class="btn btn-primary">+ Schedule New</a>
  </div>

  <div class="card shadow-sm">
    <div class="table-responsive">
      <table class="table align-middle mb-0">
        <thead class="table-light">
        <tr>
          <th>Campaign</th><th>Channel</th><th>Audience</th><th>Next Send</th><th>Frequency</th><th>Status</th><th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td>Dengue Prevention Drive</td>
          <td>SMS</td>
          <td>Urban Dengue Hotspots</td>
          <td>Today 07:30</td>
          <td>Daily</td>
          <td><span class="badge bg-success">Active</span></td>
          <td class="text-end"><button class="btn btn-sm btn-outline-warning">Pause</button></td>
        </tr>
        <tr>
          <td>Flood Relief Helpline</td>
          <td>Social</td>
          <td>Coastal Wards</td>
          <td>09:00</td>
          <td>Once</td>
          <td><span class="badge bg-secondary">Queued</span></td>
          <td class="text-end"><button class="btn btn-sm btn-outline-danger">Cancel</button></td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
