<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Dashboard • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h1 class="h4 m-0">Dashboard</h1>
    <a class="btn btn-primary" href="/campaigns/create">+ New Campaign</a>
  </div>

  <div class="row g-3">
    <div class="col-md-3">
      <div class="card shadow-sm stat-card">
        <div class="card-body">
          <div class="small text-muted">Active Campaigns</div>
          <div class="display-6">8</div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card shadow-sm stat-card">
        <div class="card-body">
          <div class="small text-muted">Total Reach (30d)</div>
          <div class="display-6">1.2M</div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card shadow-sm stat-card">
        <div class="card-body">
          <div class="small text-muted">Avg Engagement</div>
          <div class="display-6">6.3%</div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card shadow-sm stat-card">
        <div class="card-body">
          <div class="small text-muted">Scheduled Sends (24h)</div>
          <div class="display-6">14</div>
        </div>
      </div>
    </div>
  </div>

  <div class="row g-3 mt-1">
    <div class="col-lg-8">
      <div class="card shadow-sm">
        <div class="card-header">Reach & Engagement</div>
        <div class="card-body">
          <canvas id="reachChart" height="110"></canvas>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="card shadow-sm">
        <div class="card-header">Upcoming Schedules</div>
        <div class="card-body">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Dengue Awareness SMS • 07:30</li>
            <li class="list-group-item">Flood Helpline Tweet • 09:00</li>
            <li class="list-group-item">Water Conservation Email • 17:00</li>
          </ul>
          <a href="/scheduler" class="btn btn-outline-secondary w-100 mt-3">View Scheduler</a>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="/js/dashboard.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
