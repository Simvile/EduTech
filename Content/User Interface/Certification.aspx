<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="Certification.aspx.cs" Inherits="BizWiz.Content.User_Interface.Certification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="mt-5 mb-3 pt-5 p-3 m-auto " style="width: 85%;">
        <form id="form1" runat="server">
            <div class="outer-border h-75 bg-info-subtle">
                <div class="inner-dotted-border">
                    <span class="certification">Certificate of Completion</span>
                    <br>
                    <br>
                    <span class="certify"><i>This is to certify that</i></span>
                    <br>
                    <br>
                    <span class="name"><b>Daniel Vitorrie</b></span><br />
                    <br />
                    <span class="certify"><i>has successfully completed the certification</i></span>
                    <br />
                    <br />
                    <span class="fs-30">Social Media Strategist</span>
                    <br />
                    <br />
                    <span class="fs-20">with score of <b>A+</b></span>
                    <br />
                    <br />
                    <br />
                    <br />
                    <span class="certify"><i>dated</i></span><br>

                    <span class="fs-30">16 November,2023</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <input type="button" value="Download" class="btn btn-outline-success w-75 mt-3" />
                </div>
            </div>
        </form>
    </div>


</asp:Content>
