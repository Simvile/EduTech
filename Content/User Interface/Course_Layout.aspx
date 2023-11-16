<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="Course_Layout.aspx.cs" Inherits="BizWiz.Content.User_Interface.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 mb-3 pt-5 p-3 m-auto border " style="width: 85%;">
            <div class="row">
                <div class="col-md-3">
                    <div class="bg-body-tertiary" style="height: 100vh;">
                        <h3 class="bg-body-secondary p-3"><b>Course Layout</b></h3>
                        <ul class="list-group">
                            <li class="list-group-item">
                                <a href="#Introduction" class="btn btn-outline-info w-100">Introduction</a>
                            </li>
                            <li class="list-group-item">
                                <a href="#Material" class="btn btn-outline-info w-100">Study Material</a>
                            </li>
                            <li class="list-group-item">
                                <a href="#Videos" class="btn btn-outline-info w-100">Videos</a>
                            </li>
                            <li class="list-group-item">
                                <a href="#Past" class="btn btn-outline-info w-100">Past Exams</a>
                            </li>
                            <li class="list-group-item">
                                <a href="#Book" class="btn btn-outline-info w-100">Book Test</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="Course_content">
                        <section id="Introduction">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="container">
                                        <asp:DataList ID="DataList4" runat="server">
                                            <ItemTemplate>
                                                <h1 class="text text-capitalize text-decoration-underline">Introduction to <%# Eval("Course Name") %></h1>
                                                <hr />
                                                <p><%# Eval("Introduction") %></p>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                </div>
                                <div class="col-md-4">
                                    <asp:Image ID="Image1" runat="server" />
                                </div>
                            </div>
                        </section>
                        <hr />
                        <section id="Material">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1>Study Documents</h1>
                                    <div class="container w-75 bg-body-secondary rounded-start rounded-end p-3 ">
                                        <h4>Let us assist in your learning. Here is some of study material to explore!</h4>
                                        <ul>
                                            <asp:DataList ID="DataList1" runat="server">
                                                <ItemTemplate>
                                                    <li class="link-underline-light mt-1 mb-1">
                                                        <a href='<%# Eval("documents") %>' target="_blank">
                                                            <p><%# Eval("documents") %></p>
                                                        </a></li>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <hr />
                        <section id="Videos">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1>Videos</h1>
                                       <div class="container w-75 bg-body-secondary rounded-start rounded-end p-3 ">
                                        <h4>Let us assist in your learning. Here is some links to explore!</h4>
                                        <ul>
                                            <asp:DataList ID="DataList2" runat="server">
                                                <ItemTemplate>
                                                    <li class="link-underline-light mt-1 mb-1">
                                                        <a href='<%# Eval("videos") %>' target="_blank">
                                                            <p><%# Eval("videos") %></p>
                                                        </a></li>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <hr />
                        <section id="Past">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1>Past Papers</h1>
                                       <div class="container w-75 bg-body-secondary rounded-start rounded-end p-3 ">
                                        <h4>Let us assist in your learning. Here is some links to questions for practice!</h4>
                                        <ul>
                                            <asp:DataList ID="DataList3" runat="server">
                                                <ItemTemplate>
                                                    <li class="link-underline-light mt-1 mb-1">
                                                        <a href='<%# Eval("QuestionPapers") %>' target="_blank">
                                                            <p><%# Eval("QuestionPapers") %></p>
                                                        </a></li>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <hr />
                        <section id="Book">
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <h1 class="text text-capitalize text-decoration-underline mb-3">Book for Test</h1>
                                    <div class="container bg-light-subtle w-75 rounded-start rounded-end ">
                                        <div class="row">
                                            <h3>Fill in the Below Form to Book for your Test!</h3>
                                            <div class="col-md-12">
                                                <p>Course Code</p>
                                                <asp:TextBox ID="txtCode" runat="server" Enabled="false" placeholder="Course Code"></asp:TextBox>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Venue</p>
                                                <asp:DropDownList ID="DropVenue" runat="server" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" placholder="Select Venue">
                                                    <asp:ListItem>The Order Office</asp:ListItem>
                                                    <asp:ListItem>Mike Writting</asp:ListItem>
                                                    <asp:ListItem>BDO Hall</asp:ListItem>
                                                    <asp:ListItem>Ball Room</asp:ListItem>
                                                    <asp:ListItem>Mathews</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Date</p>
                                                <asp:TextBox ID="txtDate" TextMode="Date" runat="server" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" placeholder="Course Code"></asp:TextBox>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Time</p>
                                                <asp:TextBox ID="txtTime" TextMode="Time" runat="server" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" placeholder="Course Code"></asp:TextBox>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Label ID="lblVerify" runat="server" Visible="false" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" ></asp:Label>
                                                <asp:TextBox ID="emailedCode" TextMode="number" Visible="false" AutoPostBack="true" OnTextChanged="emailedCode_TextChanged" runat="server" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" placeholder="25575"></asp:TextBox>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <asp:Label ID="lblMessage" runat="server" Visible="false" Text="Label"></asp:Label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-outline-info w-100" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <hr />

                    </div>
                </div>
            </div>
    </div>

</asp:Content>
