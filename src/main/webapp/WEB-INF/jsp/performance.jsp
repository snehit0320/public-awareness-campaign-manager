<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Performance • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <div class="d-flex align-items-center justify-content-between mb-3">
    <h1 class="h4 m-0">Performance</h1>
    <select class="form-select w-auto">
      <option>Dengue Prevention Drive</option>
      <option>Flood Relief Helpline</option>
      <option>Water Conservation Tips</option>
    </select>
  </div>

  <div class="row g-3">
    <div class="col-lg-8">
      <div class="card shadow-sm">
        <div class="card-header">Reach Over Time</div>
        <div class="card-body"><canvas id="reachOverTime" height="120"></canvas></div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="card shadow-sm">
        <div class="card-header">Engagement by Channel</div>
        <div class="card-body"><canvas id="engagementByChannel" height="120"></canvas></div>
      </div>
    </div>
  </div>

  <div class="card shadow-sm mt-3">
    <div class="card-header">Recent Posts</div>
    <div class="table-responsive">
      <table class="table mb-0 align-middle">
        <thead class="table-light"><tr><th>Time</th><th>Channel</th><th>Message</th><th>Reach</th><th>Clicks</th><th>Engagement</th></tr></thead>
        <tbody>
        <tr><td>Today 07:30</td><td>SMS</td><td>“Clear stagnant water…”</td><td>12,100</td><td>—</td><td>5.2%</td></tr>
        <tr><td>Yesterday 17:00</td><td>Email</td><td>“5 Water-saving tips”</td><td>22,430</td><td>2,104</td><td>9.3%</td></tr>
        <tr><td>Yesterday 09:00</td><td>Social</td><td>“Flood helpline 1800…”</td><td>55,001</td><td>3,112</td><td>7.8%</td></tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

<script>
  // Simple demo charts (replace with backend data later)
  new Chart(document.getElementById('reachOverTime'), {
    type: 'line',
    data: { labels: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
      datasets: [{ label: 'Reach', data: [120k, 150k, 130k, 160k, 180k, 170k, 210k] }] }
  });
  new Chart(document.getElementById('engagementByChannel'), {
    type: 'doughnut',
    data: { labels: ['SMS','Email','Social'],
      datasets: [{ data: [5.5, 9.8, 7.2] }] }
  });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
