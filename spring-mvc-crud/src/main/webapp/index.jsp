<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://source.unsplash.com/1600x900/?office,work') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .container {
            text-align: center;
            background: rgba(0, 0, 0, 0.6);
            padding: 40px 60px;
            border-radius: 20px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            width: 90%;
            animation: fadeIn 1s ease-out;
        }

        h1 {
            font-size: 2.8rem;
            margin-bottom: 40px;
            font-weight: 700;
            color: #f9f9f9;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        a {
            display: block;
            margin: 15px 0;
            padding: 15px 25px;
            text-decoration: none;
            color: #fff;
            background: linear-gradient(45deg, #ff6f61, #d500f9);
            border-radius: 30px;
            font-size: 1.2rem;
            font-weight: 500;
            transition: all 0.4s ease;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        a:hover {
            background: linear-gradient(45deg, #d500f9, #ff6f61);
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.4);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        @media screen and (max-width: 768px) {
            .container {
                padding: 30px;
            }

            h1 {
                font-size: 2.2rem;
            }

            a {
                font-size: 1rem;
                padding: 12px 22px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Employee Management</h1>
        <a href="${pageContext.request.contextPath}/add">Add Employee</a>
        <a href="${pageContext.request.contextPath}/view">View Employees</a>
    </div>
</body>
</html>