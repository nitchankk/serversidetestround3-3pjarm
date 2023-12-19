<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Classic Model Online</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        .barcolor {
            background-color: darksalmon
        }
        .insertcolor{
            border-color: blue;
            border-radius: 10px;
            border-width: 2px;
            background-color: white;
        }

        .insertcolor:hover {
            background-color: blue;
            color: white;
        }
    </style>
</head>
<body class="container mt-4">
<div class="row barcolor p-3 text-black">
    <h2>Classic Model Online</h2>
</div>
<div class="row mt-4">
    <form action="office-action" method="post" class="col-md-8 offset-md-2 bg-light p-4 rounded shadow">
        <input type="hidden" name="action" value="${requestScope.action == 'add' ? 'add' : 'update'}" />

        <div class="row">
            <div class="mb-3 col-md-6">
                <label for="officeCode" class="form-label">Office Code</label>
                <input type="text" ${requestScope.action == 'add' ? '' : 'readonly'} class="form-control" id="officeCode" name="officeCode" value="${requestScope.office.officeCode}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="city" class="form-label">City</label>
                <input type="text" class="form-control" id="city" name="city" value="${requestScope.office.city}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" value="${requestScope.office.phone}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="addressLine1" class="form-label">addressLine1</label>
                <input type="text" class="form-control" id="addressLine1" name="addressLine1" value="${requestScope.office.addressLine1}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="addressLine2" class="form-label">addressLine2</label>
                <input type="text" class="form-control" id="addressLine2" name="addressLine2" value="${requestScope.office.addressLine2}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="state" class="form-label">state</label>
                <input type="text" class="form-control" id="state" name="state" value="${requestScope.office.state}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="country" class="form-label">country</label>
                <input type="text" class="form-control" id="country" name="country" value="${requestScope.office.country}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="postalCode" class="form-label">postalCode</label>
                <input type="text" class="form-control" id="postalCode" name="postalCode" value="${requestScope.office.postalCode}">
            </div>

            <div class="mb-3 col-md-6">
                <label for="territory" class="form-label">territory</label>
                <input type="text" class="form-control" id="territory" name="territory" value="${requestScope.office.territory}">
            </div>

        </div>

        <button type="submit" class="btn insertcolor">
            ${requestScope.action == 'add' ? 'Insert' : 'Update'}
        </button>
    </form>
</div>
</body>
</html>
