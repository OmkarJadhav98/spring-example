<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employees List</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Merriweather:wght@700&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #fff;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        h1 {
            align-self: flex-start;
            font-family: 'Merriweather', serif;
            font-size: 2.8rem;
            margin-bottom: 20px;
            color: #d4af37;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        .table-container {
            width: 80%;
            position: relative;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
            background: rgba(22, 34, 51, 0.9);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
            transition: all 0.3s ease;
        }

        table:hover {
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 15px;
            text-align: left;
            color: #f0f0f0;
        }

        th {
            background: linear-gradient(135deg, #2c5364, #203a43, #0f2027);
            font-weight: 600;
            font-size: 1rem;
        }

        tr {
            transition: background 0.3s ease-in-out;
        }

        tr:hover {
            background: rgba(233, 69, 96, 0.2);
        }

        td {
            font-size: 0.9rem;
            border-bottom: 1px solid rgba(15, 52, 96, 0.6);
        }

        td:last-child, th:last-child {
            text-align: center;
        }

        a {
            text-decoration: none;
            color: #e94560;
            transition: color 0.2s, transform 0.2s;
        }

        a:hover {
            color: #f0a500;
            transform: scale(1.1);
        }

        .add-button {
            position: absolute;
            right: 0;
            top: -60px;
            padding: 12px 25px;
            background: linear-gradient(135deg, #f0a500, #e94560);
            color: #fff;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-size: 1rem;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .add-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        @media screen and (max-width: 768px) {
            .table-container {
                width: 95%;
            }

            h1 {
                font-size: 2rem;
            }

            th, td {
                font-size: 0.8rem;
            }

            .add-button {
                width: 100%;
                top: -40px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

<h1>Employees List</h1>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Designation</th>
                <th>Department</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="emp" items="${list}">
                <tr>
                    <td>${emp.id}</td>
                    <td>${emp.name}</td>
                    <td>${emp.salary}</td>
                    <td>${emp.designation}</td>
                    <td>${emp.department}</td>
                    <td><a href="edit/${emp.id}">Edit</a></td>
                    <td><a href="delete/${emp.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <input type="button" class="add-button" onclick="location.href='add';" value="Add New Employee" />
</div>

</body>
</html>