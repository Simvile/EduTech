<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BizWiz.Content.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 mb-3">
        <div id="content">
            <h1>Admin Dashboard
                <input type="button" class="btn btn-outline-danger p-1" style="width: 150px;" value="Download Report" onclick="exportToPDF('form-container')" /></h1>
            <div id="form-container" class="bg-light shadow border m-2 w-100 p-2 mb-4" style="margin-left:-20px  !important;">
                <canvas id="myChart"></canvas>
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="form-text text-decoration-underline border p-2 mt-3 "><b>Student Table</b></h1>
                        <asp:GridView ID="GridView1" runat="server" CssClass="w-100" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <h1 class="form-text text-decoration-underline border p-2 mt-3 "><b>Student Enrollment Table</b></h1>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_aa15d9_edutechdbConnectionString %>" SelectCommand="SELECT [ID], [First Name] AS First_Name, [Last Name] AS Last_Name, [Email] FROM [Students] ORDER BY [Last Name]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_aa15d9_edutechdbConnectionString %>" SelectCommand="SELECT [Ref], [Student], [Course Code] AS Course_Code, [enrll_date] FROM [Enrollment] ORDER BY [Course Code]"></asp:SqlDataSource>

                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Ref" CssClass="w-100" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Ref" HeaderText="Ref" ReadOnly="True" SortExpression="Ref" />
                                <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
                                <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" SortExpression="Course_Code" />
                                <asp:BoundField DataField="enrll_date" HeaderText="enrll_date" SortExpression="enrll_date" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <h1 class="form-text text-decoration-underline border p-2 mt-3 "><b>Student Course Payment Table</b></h1>
                        <asp:GridView ID="GridView3" runat="server" CssClass="w-100" AutoGenerateColumns="False" DataKeyNames="Ref" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:BoundField DataField="Ref" HeaderText="Ref" ReadOnly="True" SortExpression="Ref" />
                                <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
                                <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" SortExpression="Course_Code" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                <asp:BoundField DataField="payment_date" HeaderText="payment_date" SortExpression="payment_date" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_aa15d9_edutechdbConnectionString %>" SelectCommand="SELECT [Ref], [Student], [Course Code] AS Course_Code, [Amount], [payment_date] FROM [Payment] ORDER BY [payment_date] DESC"></asp:SqlDataSource>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <h1 class="form-text text-decoration-underline border p-2 mt-3 "><b>Courses Table</b></h1>
                        <asp:GridView ID="GridView4" runat="server" CssClass="w-100" AutoGenerateColumns="False" DataKeyNames="Course_Code" DataSourceID="SqlDataSource4">
                            <Columns>
                                <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" InsertVisible="False" ReadOnly="True" SortExpression="Course_Code" />
                                <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                                <asp:BoundField DataField="Pricing" HeaderText="Pricing" SortExpression="Pricing" />
                                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_aa15d9_edutechdbConnectionString %>" SelectCommand="SELECT [Course Code] AS Course_Code, [Course Name] AS Course_Name, [Definition], [Pricing], [Category] FROM [Courses] ORDER BY [Course Code] DESC"></asp:SqlDataSource>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <h1 class="form-text text-decoration-underline border p-2 mt-3 "><b>Course Content Table</b></h1>
                        <asp:GridView ID="GridView6" runat="server" class="w-100" Style="margin-top: -10px;" AutoGenerateColumns="False" DataKeyNames="Ref" DataSourceID="SqlDataSource6">
                            <Columns>
                                <asp:BoundField DataField="Ref" HeaderText="Ref" ReadOnly="True" SortExpression="Ref" />
                                <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
                                <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" SortExpression="Course_Code" />
                                <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:db_aa15d9_edutechdbConnectionString %>" SelectCommand="SELECT [Ref], [Student], [Course Code] AS Course_Code, [Venue], [Date], [Time], [Status] FROM [Booking] ORDER BY [Date]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://rawgit.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>

    <script>
        function exportToPDF(containerId) {
            const pdfOptions = {
                margin: [10, 10], // Optional margins
                filename: 'AdminDashboardReport.pdf', // Optional filename
                image: { type: 'jpeg', quality: 1.00 }, // Optional image settings
                html2canvas: { scale: 8 }, // Optional html2canvas settings
                jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' }, // Optional jsPDF settings
            };

            // Get the container element by ID
            const container = document.getElementById(containerId);

            // Convert the content to PDF using html2pdf
            html2pdf().from(container).set(pdfOptions).save();
        }
    </script>

</asp:Content>
