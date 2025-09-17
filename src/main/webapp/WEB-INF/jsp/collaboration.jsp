<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Collaboration • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <h1 class="h4 mb-3">Collaboration</h1>

  <div class="row g-3">
    <div class="col-lg-5">
      <div class="card shadow-sm">
        <div class="card-header">Invite Partner</div>
        <div class="card-body">
          <div class="mb-3">
            <label class="form-label">Organization Name</label>
            <input class="form-control" placeholder="e.g., Coastal Relief NGO">
          </div>
          <div class="mb-3">
            <label class="form-label">Contact Email</label>
            <input type="email" class="form-control" placeholder="name@org.org">
          </div>
          <div class="mb-3">
            <label class="form-label">Role</label>
            <select class="form-select">
              <option>Viewer</option>
              <option>Editor</option>
              <option>Approver</option>
            </select>
          </div>
          <button class="btn btn-primary">Send Invite</button>
        </div>
      </div>
    </div>

    <div class="col-lg-7">
      <div class="card shadow-sm">
        <div class="card-header">Partners</div>
        <div class="table-responsive">
          <table class="table mb-0 align-middle">
            <thead class="table-light"><tr><th>Organization</th><th>Role</th><th>Status</th><th></th></tr></thead>
            <tbody>
              <tr><td>Coastal Relief NGO</td><td>Editor</td><td><span class="badge bg-success">Active</span></td><td class="text-end"><button class="btn btn-sm btn-outline-danger">Remove</button></td></tr>
              <tr><td>District Health Office</td><td>Approver</td><td><span class="badge bg-warning text-dark">Pending</span></td><td class="text-end"><button class="btn btn-sm btn-outline-secondary">Resend</button></td></tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
