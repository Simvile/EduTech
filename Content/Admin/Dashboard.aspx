<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BizWiz.Content.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="myContent mt-5 mb-3 w-100 pt-5 p-3 m-auto ">
        <div id="content">
            <h1>Admin Dashboard</h1>
            <canvas id="myChart" width="400" height="200"></canvas>
            <div id="form-container">
                <form>
                    <!-- Your form elements go here -->
                </form>
            </div>
        </div>
    </div>


</asp:Content>
