<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f0f0f0, #e0e0e0);
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            overflow: auto;
        }

        h1 {
            font-family: 'Merriweather', serif;
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #4a4a4a;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f4;
        }

        td a {
            color: #007bff;
            text-decoration: none;
        }

        td a:hover {
            text-decoration: underline;
        }

        .buttons-container {
            text-align: center;
            margin-top: 20px;
        }

        .buttons-container input {
            padding: 12px 25px;
            margin: 5px;
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s, transform 0.3s;
        }

        .buttons-container input:hover {
            background: linear-gradient(135deg, #0056b3, #004080);
            transform: scale(1.05);
        }

        @media screen and (max-width: 768px) {
            table {
                width: 95%;
            }

            h1 {
                font-size: 2rem;
            }

            th, td {
                font-size: 0.9rem;
            }

            .buttons-container input {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

<h1>Employee List</h1>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
            <th>Designation</th>
            <th>Department</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="emp" items="${list}">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.designation}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/edit/${emp.id}">Edit</a>
                    <a href="${pageContext.request.contextPath}/delete/${emp.id}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<div class="buttons-container">
    <input type="button" onclick="location.href='${pageContext.request.contextPath}/add';" value="Add New Employee" />
</div>

</body>
</html>