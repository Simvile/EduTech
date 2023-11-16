<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="User_LogIn.aspx.cs" Inherits="BizWiz.Content.User_Interface.User_LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="h-100">
        <div class="mt-5 w-100 form-signin m-auto p-4">
            <center>
                <img class="mb-4" src="../Resources/Images/logo.jpg" alt="" width="92" height="77" />
            </center>
            <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
            <div class="row">
            <div class="coll-md-12">
                <asp:DropDownList ID="DropUser" runat="server" class="mt-3 form-control rounded-start rounded-end border p-2">
                    <asp:ListItem>Select User</asp:ListItem>
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-12">
                <asp:TextBox id="floatingInput" TextMode="Email" runat="server" class="mt-3 w-100 py-2 mb-3 rounded-start rounded-end border p-2" placeholder="example@yahoo.com"></asp:TextBox>
            </div>
            <div class="col-md-12">
                <asp:TextBox id="floatingPassword" TextMode="Password" runat="server" class="mt-3 w-100 py-2 mb-3 rounded-start rounded-end border p-2" placeholder="***********"></asp:TextBox>
            </div>

            <div class="col-md-12">
                <a href="User_Reagister.aspx" class="link link-underline-light ml-0">Don't have an account ?
            </a>
            </div>
            <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="Sign in" class="btn btn-outline-primary w-100 py-2 mb-3 mt-3" />
                </div>
        </div>
    </main>


</asp:Content>
