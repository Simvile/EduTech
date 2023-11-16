<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="User_Reagister.aspx.cs" Inherits="BizWiz.Content.User_Interface.User_Reagister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="form-signin w-100 m-auto p-4">
        <div class="mt-5">
            <center>
                <img class="mb-4" src="../Resources/Images/logo.jpg" alt="" width="92" height="77" />
            </center>
            <h1 class="h3 mb-3 fw-normal">Create your account</h1>

            <div class="form-floating">
                <asp:TextBox class="mt-3 form-control rounded-start rounded-end border p-2" id="floatingInput" runat="server"></asp:TextBox>
                <label for="floatingInput">First Name</label>
            </div>
            <div class="form-floating">
                <asp:TextBox class="mt-3 form-control rounded-start rounded-end border p-2" id="floatinglast" runat="server"></asp:TextBox>
                <label for="floatinglast">Last Name</label>
            </div>
            <div class="form-floating">
                <asp:TextBox class="mt-3 form-control rounded-start rounded-end border p-2" id="floatingUser" runat="server"></asp:TextBox>
                <label for="floatingUser">Username</label>
            </div>
            <div class="form-floating">
                <asp:TextBox class="mt-3 form-control rounded-start rounded-end border p-2" id="floatingEmail" runat="server"></asp:TextBox>
                <label for="floatingEmail">Email</label>
            </div>
            <div class="form-floating">
                <asp:TextBox class="mt-3 form-control rounded-start rounded-end border p-2" id="floatingReEmail" runat="server"></asp:TextBox>
                <label for="floatingReEmail">Re-enter Email</label>
            </div>
            <div class="form-floating">
                <asp:TextBox class="mt-3 form-control rounded-start rounded-end border p-2" id="floatingPassword" runat="server"></asp:TextBox>
                <label for="floatingPassword">Password</label>
            </div>
            <asp:Button ID="btnregister" runat="server" Text="Create" OnClick="btnregister_Click" class="btn btn-outline-primary w-100 py-2 mb-3 mt-3"  />
            <a class=" mt-5 mb-3 link-underline-light" href="User_LogIn.aspx">Already have an account ?
            </a>
        </div>
    </main>
</asp:Content>
