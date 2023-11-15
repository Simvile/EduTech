<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="Course Listing.aspx.cs" EnableEventValidation="false" Inherits="BizWiz.Content.User_Interface.Course_Listing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 mb-3 pt-5 p-3 m-auto " style="width: 85%;">
        <form runat="server">
            <h1>Course Listing</h1>
            <div class="row">
                <div class="col-md-7">
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Numquam laboriosam omnis eligendi asperiores porro laborum ut. Culpa quam fuga adipisci alias natus facere atque itaque ut eligendi distinctio. Incidunt, officiis...</p>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <label for="Search" class="text bold-text">
                                <h4>Search Course :</h4>
                            </label>
                            <br>
                            <input type="search" id="searchInput" class="srchbox" placeholder="Search ...">
                        </div>
                    </div>
                </div>
                <div class="col-md-12 mt-5">
                    <ul class="list-group">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <li class="mt-3 list-group-item bg-light">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <asp:Image ID="Image1" runat="server" Width="375" Height="210" ImageUrl='<%# Eval("imageOrLogo") %>' />
                                        </div>
                                        <div class="col-md-7">
                                            <asp:Label ID="Label1" runat="server" class="bg-light  mb-2 " Style="font-size:20px; text-decoration:underline; font-weight:400;" Text='<%# Eval("Course Name") %>'></asp:Label>
                                            <br>
                                            <asp:Label ID="Label2" runat="server" class="mt-3 justify-content-md-start" Style="font-size:20px; font-weight:300;" Text='<%# Eval("Definition") %>'></asp:Label>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <p class="mt-3">Course Price: R <%# Eval("Pricing") %></p>
                                                </div>
                                                <div class="col-md-4"></div>
                                                <div class="col-md-4">
                                                    <asp:Button ID="BtnEnroll" runat="server" Text="Enroll" OnClick="BtnEnroll_Click" class="btn btn-outline-primary mt-3 w-100 p-2 btn_apply" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>
                </div>
            </div>
        </form>
    </div>



    <script>
        document.getElementById("searchInput").addEventListener("input", function () {
            let filter = this.value.toLowerCase();
            let rows = document.getElementById("<%= DataList1.ClientID %>").getElementsByTagName("li");

            for (let row of rows) {
                let rowData = row.textContent.toLowerCase();
                if (rowData.includes(filter)) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            }
        });

    </script>



</asp:Content>
