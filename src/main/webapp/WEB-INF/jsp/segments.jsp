<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <title>Audience • Public Awareness CM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
<div class="container py-4">
    <h1 class="h4 mb-3">Audience Segmentation</h1>
    <div class="row g-3">

        <!-- Left: Form -->
        <div class="col-lg-4">
            <div class="card shadow-sm">
                <div class="card-header">Create Segment</div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/segments/create" method="post">

                        <label class="form-label">Region</label>
                        <select class="form-select mb-3" name="region">
                            <option>All</option>
                            <option>Coastal</option>
                            <option>Low-lying</option>
                            <option>Urban</option>
                            <option>Rural</option>
                        </select>

                        <label class="form-label">Age</label>
                        <div class="input-group mb-3">
                            <input type="number" class="form-control" name="minAge" placeholder="Min">
                            <input type="number" class="form-control" name="maxAge" placeholder="Max">
                        </div>

                        <label class="form-label">Language</label>
                        <select class="form-select mb-3" name="language">
                            <option>Any</option>
                            <option>English</option>
                            <option>Hindi</option>
                            <option>Tamil</option>
                            <option>Telugu</option>
                        </select>

                        <label class="form-label">Risk Tags</label>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="riskTags" value="Flood-prone" id="rt1">
                            <label class="form-check-label" for="rt1">Flood-prone</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="riskTags" value="Dengue hotspot" id="rt2">
                            <label class="form-check-label" for="rt2">Dengue hotspot</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="riskTags" value="Water scarcity" id="rt3">
                            <label class="form-check-label" for="rt3">Water scarcity</label>
                        </div>

                        <div class="d-grid mt-3">
                            <button type="submit" class="btn btn-primary">Save Segment</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Right: Saved Segments -->
        <div class="col-lg-8">
            <div class="card shadow-sm">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <span>Saved Segments</span>
                    <input class="form-control form-control-sm w-auto" placeholder="Search segments">
                </div>
                <div class="list-group list-group-flush">
                    <c:forEach var="seg" items="${segments}">
                        <div class="list-group-item d-flex justify-content-between align-items-center">
                            <span>${seg.segmentName}</span>
                            <span class="badge bg-secondary">${seg.audienceCount}</span>
                            <form action="${pageContext.request.contextPath}/segments/delete/${seg.id}" method="post" style="margin:0;">
                                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                 <a href="/segments/select/${seg.id}?redirect=${param.redirect}" class="btn btn-primary btn-sm">Select</a>
                            </form>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
