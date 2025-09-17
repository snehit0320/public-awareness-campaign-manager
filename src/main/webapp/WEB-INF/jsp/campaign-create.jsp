<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>Create Campaign • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/css/app.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <h1 class="h4 mb-3">Create Campaign</h1>

  <form action="/campaigns/create" method="post" enctype="multipart/form-data" class="card shadow-sm">
    <div class="card-body">
      <div class="row g-3">
        <div class="col-md-6">
          <label class="form-label">Title</label>
          <input type="text" name="title" class="form-control" placeholder="e.g., Dengue Prevention Drive" required>
        </div>
        <div class="col-md-6">
          <label class="form-label">Objective</label>
          <input type="text" name="objective" class="form-control" placeholder="e.g., Reduce cases by 20%">
        </div>

        <div class="col-12">
          <label class="form-label">Message / Caption</label>
          <textarea name="message" class="form-control" rows="3" placeholder="Short message for your audience"></textarea>
        </div>

        <div class="col-md-6">
          <label class="form-label">Upload Media (images/video/pdf)</label>
          <input class="form-control" type="file" name="media" multiple>
          <div class="form-text">You can attach posters, flyers, or short clips.</div>
        </div>

        <div class="col-md-6">
          <label class="form-label">Channels</label>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" name="channels" value="SMS" id="c1">
            <label class="form-check-label" for="c1">SMS</label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" name="channels" value="Email" id="c2">
            <label class="form-check-label" for="c2">Email</label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" name="channels" value="Social" id="c3">
            <label class="form-check-label" for="c3">Social Media</label>
          </div>
        </div>

        <div class="col-md-6">
          <label class="form-label">Target Audience</label>
          <div class="input-group">
            <input type="text" class="form-control" name="segmentSummary"
                   placeholder="e.g., Coastal wards, age 18–60">
            <a href="/segments" class="btn btn-outline-secondary">Open Audience Builder</a>
          </div>
        </div>

        <div class="col-md-6">
          <label class="form-label">Schedule</label>
          <div class="row g-2">
            <div class="col-6">
              <input type="date" name="startDate" class="form-control" required>
            </div>
            <div class="col-6">
              <input type="time" name="startTime" class="form-control" required>
            </div>
            <div class="col-12">
              <select class="form-select mt-2" name="frequency">
                <option value="once">Once</option>
                <option value="daily">Daily</option>
                <option value="weekly">Weekly</option>
              </select>
            </div>
          </div>
        </div>

        <div class="col-12">
          <label class="form-label">Select a Template (optional)</label>
          <div class="d-flex gap-2 flex-wrap">
            <label class="template-tile">
              <input type="radio" name="templateId" value="tpl1"> <span>Flood Alert Poster</span>
            </label>
            <label class="template-tile">
              <input type="radio" name="templateId" value="tpl2"> <span>Dengue Checklist</span>
            </label>
            <label class="template-tile">
              <input type="radio" name="templateId" value="tpl3"> <span>Water Saving Tips</span>
            </label>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer d-flex justify-content-end gap-2">
      <a href="/campaigns" class="btn btn-outline-secondary">Cancel</a>
      <button class="btn btn-primary" type="submit">Save Campaign</button>
    </div>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
