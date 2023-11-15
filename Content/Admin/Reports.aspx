<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="BizWiz.Content.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
                #report-form {
            margin: 20px auto;
            /* Center the form horizontally */
            width: 80%;
            /* Adjust form width as needed */
            max-width: 400px;
            /* Set a maximum width for the form */
        }

        #report-form select,
        #report-form input {
            margin-bottom: 10px;
        }

        #report-form button {
            margin-top: 10px;
        }
    </style>
        <div id="content" class="align-content-center">
        <form id="report-form" class="center">
            <h2>Download Reports</h2>

            <div class="form-group">
                <label for="reportType">Report Type</label>
                <select class="form-control" id="reportType" name="reportType">
                    <option value="sales">Students Registered</option>
                    <option value="sales">Courses Enrolled</option>
                    <option value="expenses">Expenses Report</option>
                    <option value="userActivity"></option>
                    <option value="expenses"></option>
                    <option value="userActivity"></option>
                    <option value="expenses"></option>
                    <option value="userActivity"></option>
                    <!-- Add more options as needed -->
                </select>
            </div>

            <div class="form-group">
                <label for="startDate">Start Date</label>
                <input type="date" class="form-control" id="startDate" name="startDate">
            </div>

            <div class="form-group">
                <label for="endDate">End Date</label>
                <input type="date" class="form-control" id="endDate" name="endDate">
            </div>
            <br />
            <br />

            <button type="submit" class="btn btn-primary">Download Report</button>
        </form>
    </div>
</asp:Content>
