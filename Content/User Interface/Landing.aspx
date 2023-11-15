<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="BizWiz.Content.User_Interface.Landing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form runat="server" class="form p-5 h-100">
    <div class="row">
        <div class="col-md-6">
            <h1><b>EduTech: Where Education Meets E-Commerce</b></h1>
            <p>
               Welcome to EduTech, your gateway to unlocking the world of e-commerce success! Our cutting-edge online learning platform is dedicated to equipping individuals with the essential skills and knowledge needed to thrive in the dynamic realm of electronic commerce. EduTech offers a comprehensive and user-friendly curriculum designed to empower learners of all backgrounds, from budding entrepreneurs to seasoned professionals. Whether you're looking to launch your own e-commerce venture or enhance your existing online business, we've got you covered.
            </p>
            <div class="row">
                <div class="col-md-4">
                    <a href="User_Reagister.aspx" Class="btn btn-outline-primary w-100">Register!</a>
                </div>
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <div class="col-md-6">
            <img src="../Resources/Images/LandingPage.jpg" class="w-100 h-100 rounded-start rounded-end"/>
        </div>
    </div>
</form>

</asp:Content>
