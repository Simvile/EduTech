<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add Material.aspx.cs" Inherits="BizWiz.Content.Admin.Add_Material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="mt-5 mb-3 pt-5 p-5 m-auto bg-secondary-subtle" style="width: 85%; height: 90vh; overflow: auto;">
        <h1>Add Course material</h1>
        <section id="Introduction">
            <h5>Add Introduction or Layout</h5>
            <div class="row">
                <div class="col-md-6">
                    <p>Course Name</p>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="w-100 rounded-start rounded-end p-1 mb-3"></asp:DropDownList>
                </div>
                <div class="col-md-12">
                    <h7 class="mt-3">Enter Text</h7>
                    <asp:TextBox ID="txtAreaDescr" runat="server" class="w-100 rounded-start rounded-end p-1" Height="280" style="max-height:280px; min-height:280px;" required TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-8">
                            <asp:Label ID="MessageIntro" runat="server" Visible="false"></asp:Label>
                        </div>
                        <div class="col-md-4">
                     
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr />

        <section id="AddDocuments">
            <h5>Add Documents</h5>
            <div class="row">
                <div class="col-md-12">
                    <h7 class="mt-3">Select File</h7>
                    <asp:FileUpload ID="FileDocuments" AllowMultiple="true" runat="server" CssClass="form-control rounded-start rounded-end p-1 mb-3" />
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Label ID="MessageDocument" runat="server" Visible="false"></asp:Label>
                        </div>
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr />

        <section id="AddVideos">
            <h5>Add Video URLs</h5>
            <div class="row">
                <div class="col-md-12">
                    <h7 class="mt-3">For multiple urls sperate by (,)</h7>
                    <asp:TextBox ID="Videos" runat="server" TextMode="Url" CssClass="form-control rounded-start rounded-end p-1 mb-3" placeholder="https://Example/number1, https://Example/number2"></asp:TextBox>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Label ID="MessageVideo" runat="server" Visible="false"></asp:Label>
                        </div>
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr />

        <section id="AddPapers">
            <h5>Add Past paper URLs</h5>
            <div class="row">
                <div class="col-md-12">
                    <h7 class="mt-3">For multiple urls sperate by (,)</h7>
                    <asp:TextBox ID="questions" runat="server" TextMode="Url" CssClass="form-control rounded-start rounded-end p-1  mb-3" placeholder="https://ecstudies/bio-tech.pdf"></asp:TextBox>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Label ID="MessagePapers" runat="server" Visible="false"></asp:Label>
                        </div>
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <asp:Button ID="BtnAddPaper" runat="server" OnClick="BtnAddPaper_Click" Text="Add" CssClass="btn btn-outline-dark w-100" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr />

    </div>


</asp:Content>
