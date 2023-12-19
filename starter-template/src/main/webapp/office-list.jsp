<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Classic Model Online</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 20px;
        }

        .card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .card-body {
            border-radius: 10px;
            transition: background-color 0.3s;
        }

        .card-body:hover {
            background-color: #f8d7da;
        }
        .barcolor {
            background-color: darksalmon
        }
        .editcolor {
            background-color: lightslategray;
            color: white;
        }
        .searchcolor {
            background-color: #DD571C;
            color: white;

        }
        .addofficecolor {
            background-color: #051094;
            color: white;
        }
    </style>
</head>
<body>
<div class="container mt-5 mx-auto">
    <div class="row barcolor text-black p-3 mb-3">
        <h2>Classic Model Offices</h2>
    </div>
    <div class="row mb-3">
        <form class="input-group col-lg-4 mx-auto" action="office-list" method="get">
            <input type="text" class="form-control" name="cityOrCountry" placeholder="Search" value="${param.cityOrCountry}">
            <button class="btn searchcolor" type="submit">Search</button>
            <a href="office-action"class="btn addofficecolor">
                <i class="bi bi-plus"></i> Add Office
            </a>
        </form>
    </div>

    <div class="row">
        <c:forEach items="${offices}" var="office">
            <div class="card col-lg-3 m-2 mx-4 mb-4">
                <div class="card-body ${office.officeCode == selectedOffice.officeCode ? 'bg-warning' : ''}">
                    <h5 class="card-title">${office.city}, ${office.country}</h5>
                    <p class="card-text">${office.phone}</p>
                    <form action="office-action" method="get">
                        <input type="hidden" name="action" value="update"/>
                        <input type="hidden" name="officeCode" value="${office.officeCode}"/>
                        <button type="submit" class="btn editcolor ">
                            <i class="bi bi-pencil-square"></i> Edit
                        </button>
                    </form>

                    <form action="office-action" method="post">
                        <input type="hidden" name="action" value="delete"/>
                        <input type="hidden" name="officeCode" value="${office.officeCode}"/>
                        <button type="submit" class="btn btn-danger mt-2">
                            <i class="bi bi-trash-fill"></i> Delete
                        </button>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>