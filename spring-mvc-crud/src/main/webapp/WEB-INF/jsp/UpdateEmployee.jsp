<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f7f7f7, #dcdcdc);
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

        .form-container {
            width: 100%;
            max-width: 600px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        input[type="submit"] {
            padding: 12px 25px;
            margin-top: 10px;
            background: linear-gradient(135deg, #ffc107, #e0a800);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s, transform 0.3s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #e0a800, #c69500);
            transform: scale(1.05);
        }

        .buttons-container {
            margin-top: 20px;
        }

        .buttons-container input {
            padding: 10px 20px;
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
            .form-container {
                width: 90%;
            }

            h1 {
                font-size: 2rem;
            }

            input[type="submit"] {
                font-size: 0.9rem;
            }

            .buttons-container input {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

<h1>Edit Employee</h1>

<div class="form-container">
    <form:form method="POST" action="${pageContext.request.contextPath}/update">
        <table>
            <tr>
                <td>ID:</td>
                <td><form:hidden path="id" readonly="true" /></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Salary:</td>
                <td><form:input path="salary" /></td>
            </tr>
            <tr>
                <td>Designation:</td>
                <td><form:input path="designation" /></td>
            </tr>
            <tr>
                <td>Department:</td>
                <td><form:input path="department" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" value="Update Employee" />
                </td>
            </tr>
        </table>
    </form:form>
</div>

<div class="buttons-container">
    <input type="button" onclick="location.href='${pageContext.request.contextPath}/view';" value="Back to Employee List" />
</div>

</body>
</html>
