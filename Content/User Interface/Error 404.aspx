<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error 404.aspx.cs" Inherits="BizWiz.Content.User_Interface.Error_404" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: lightgrey;
            color: #495057;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .error-container {
            text-align: center;
            padding: 30px;
            width:50%;
            height:20%;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        h1 {
            color: #dc3545;
        }

        p {
            margin-top: 20px;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Oops! Something went wrong.</h1>
        <p>We're sorry, but it seems there was an error processing your request.</p>
        <p>Please try again later or contact support if the problem persists.</p>
    </div>
</body>
</html>
