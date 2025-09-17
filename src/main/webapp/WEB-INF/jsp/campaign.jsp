<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Campaigns • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h1 class="h4 m-0">Campaigns</h1>
    <a class="btn btn-primary" href="/campaigns/create">+ New Campaign</a>
  </div>

  <div class="card shadow-sm">
    <div class="card-body p-0">
      <div class="table-responsive">
        <table class="table align-middle mb-0">
          <thead class="table-light">
          <tr>
            <th>Title</th>
            <th>Objective</th>
            <th>Channels</th>
            <th>Status</th>
            <th>Schedule</th>
            <th></th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>Dengue Prevention Drive</td>
            <td>Reduce cases by 20%</td>
            <td>SMS, Social</td>
            <td><span class="badge bg-success">Active</span></td>
            <td>Daily 08:00</td>
            <td class="text-end">
              <a class="btn btn-sm btn-outline-secondary" href="/performance">Metrics</a>
              <a class="btn btn-sm btn-outline-primary" href="/scheduler">Schedule</a>
            </td>
          </tr>
          <tr>
            <td>Flood Relief Helpline</td>
            <td>Promote 24x7 helpline</td>
            <td>Social, Email</td>
            <td><span class="badge bg-warning text-dark">Paused</span></td>
            <td>Ad-hoc</td>
            <td class="text-end">
              <a class="btn btn-sm btn-outline-secondary" href="/performance">Metrics</a>
              <a class="btn btn-sm btn-outline-primary" href="/scheduler">Schedule</a>
            </td>
          </tr>
          <!-- Add more rows from backend later -->
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
