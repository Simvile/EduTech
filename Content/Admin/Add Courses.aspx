<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add Courses.aspx.cs" Inherits="BizWiz.Content.Admin.Add_Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 90%;
        height: 91px;
        overflow: auto;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="mt-5 mb-3 pt-5 p-5 m-auto bg-secondary-subtle" style="width: 85%; height: 90vh; overflow: auto;">
        <div class="row">
            <div class="col-md-12">
                <h2 id="add-content-heading">Add Course</h2>
            </div>
            <div class="col-md-4">
                <div class="form-group mt-3">
                    <label for="courseName">Course Name:</label>
                    <asp:TextBox ID="courseName" class="w-100 p-1 rounded-start rounded-end" runat="server" placeholder="Informatics" required></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group mt-3">
                    <label for="courseCode">Course Category</label>
                    <asp:DropDownList ID="courseCode" class="w-100 p-1 rounded-start rounded-end" runat="server">
                        <asp:ListItem>Select Category</asp:ListItem>
                        <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Information Technology</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Sports</asp:ListItem>
                        <asp:ListItem>Education</asp:ListItem>
                        <asp:ListItem>Affiliate</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group mt-3">
                    <label for="pastPapers">Add Course Price:</label>
                    <asp:TextBox ID="txtPrice" runat="server" class="w-100 p-1 rounded-start rounded-end" placeholder="1250.00" ></asp:TextBox>
                </div>
            </div>
             <div class="col-md-12">
                <div class="form-group mt-3">
                    <label for="pastPapers">Add Description:</label>
                    <asp:TextBox ID="descript" runat="server" TextMode="MultiLine" class="w-100 p-1 rounded-start rounded-end" style="min-height:170px; max-height:170px;" ></asp:TextBox>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group mt-3">
                    <label for="pastPapers">Add Image:</label>
                    <asp:FileUpload ID="pastPaper" runat="server" class="form-control p-1 rounded-start rounded-end" />
                </div>
            </div>
            <div class="col-md-12 mt-3">
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="MessageImage" runat="server" Visible="false"></asp:Label><br />
                        <asp:Label ID="MessageSuccess" runat="server" Visible="false"></asp:Label>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div id="buttons-container">
                            <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Add Course" CssClass="w-100 p-1 btn btn-outline-primary mt-3" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                
                <div class="mt-5 mb-3 pt-2 p-1 m-auto bg-light-subtle" style="width: 90%; height: 43vh; overflow: auto;">
                    <h4 class="text text-decoration-underline"><b>Existing Courses!</b></h4>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Course_Code" DataSourceID="SqlDataSource1" CssClass="w-100 mt-5 border-0">
                        <Columns>
                            <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" InsertVisible="False" ReadOnly="True" SortExpression="Course_Code" />
                            <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_aa15d9_edutechdbConnectionString %>" SelectCommand="SELECT [Course Code] AS Course_Code, [Course Name] AS Course_Name, [Category] FROM [Courses] ORDER BY [Course Code] DESC"></asp:SqlDataSource>

                </div>
            </div>
        </div>
</asp:Content>
