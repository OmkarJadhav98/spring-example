<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Employee</title>
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
            font-family: 'Merriweather', serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #d4af37;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        table {
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            background: rgba(22, 34, 51, 0.9);
            border-radius: 10px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 15px;
            text-align: left;
            color: #f0f0f0;
            font-size: 1rem;
        }

        th {
            background: linear-gradient(135deg, #2c5364, #203a43, #0f2027);
            font-weight: 600;
        }

        td {
            border-bottom: 1px solid rgba(15, 52, 96, 0.6);
        }

        input[type="submit"], input[type="button"] {
            padding: 12px 25px;
            margin-top: 10px;
            background: linear-gradient(135deg, #f0a500, #e94560);
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-size: 1rem;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        input[type="submit"]:hover, input[type="button"]:hover {
            transform: translateY(-3px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        .buttons-container {
            text-align: center;
            margin-top: 20px;
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

            input[type="submit"], input[type="button"] {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

<h1>Add New Employee</h1>

<form:form method="post" action="save">
    <table align="center">
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
            <td><form:input path="department"/></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <input type="submit" value="Save" />
            </td>
        </tr>
    </table>
</form:form>

<div class="buttons-container">
    <input type="button" onclick="location.href='view';" value="View All Employees" />
</div>

</body>
</html>