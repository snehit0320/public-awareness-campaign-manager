<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
  <title>Campaigns • Public Awareness CM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .card-title { font-size: 1.1rem; font-weight: 600; }
    .card-text { font-size: 0.95rem; }
  </style>
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container py-4">
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h1 class="h4 m-0">Campaigns</h1>
    <a class="btn btn-primary" href="/campaign/create">+ New Campaign</a>
  </div>

  <div class="row">
    <c:forEach var="c" items="${campaign}">
      <div class="col-md-4 mb-4">
        <div class="card h-100 shadow-sm">

          <!-- Campaign Image -->
          <c:choose>
            <c:when test="${not empty c.mediaPath}">
              <img src="${c.mediaPath}" class="card-img-top" style="height:200px; object-fit:cover;" />

            </c:when>
            <c:otherwise>
              <img src="https://via.placeholder.com/300x200?text=No+Image" class="card-img-top" />
            </c:otherwise>
          </c:choose>

          <div class="card-body">
            <h5 class="card-title">${c.title}</h5>
            <p class="card-text"><strong>Objective:</strong> ${c.objective}</p>
            <p class="text-muted mb-0"><strong>Start Date:</strong> ${c.startDate}</p>
          </div>
        </div>
      </div>
    </c:forEach> <!-- make sure this has the closing > -->
  </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
