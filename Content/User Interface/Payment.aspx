<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="BizWiz.Content.User_Interface.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="mt-5 mb-3 pt-5 p-3 m-auto border w-50">
        <div class="row g-5">
            <div class="col-md-12">
                <center>
                <asp:Label ID="Label1" runat="server" style="font-size:25px; font-weight:400; "></asp:Label>
                </center>
                <h4 class="mb-3">Billing address</h4>
                <form runat="server" id="paymentForm" class="needs-validation" novalidate>
                    <div class="row g-3">
                        <div class="col-12">
                            <label for="address" class="form-label">Street Name</label>
                            <asp:TextBox class="form-control" id="address" placeholder="1234 Main St" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-12">
                            <label for="address2" class="form-label">Address 2 <span class="text-body-secondary">(Optional)</span></label>
                            <asp:TextBox class="form-control" id="address2" placeholder="Apartment or suite" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-md-4">
                            <label for="country" class="form-label">Country</label>
                            <asp:TextBox class="form-control" id="country" placeholder="Apartment or suite" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label  for="lblState" class="form-label"">City / Town</label>
                            <asp:Label ID="lblState" runat="server" Text="State" for="state" class="form-label"></asp:Label>
                            <asp:TextBox class="form-control" id="City" placeholder="Apartment or suite" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <label for="zip" class="form-label">Zip</label>
                            <asp:TextBox ID="zip" runat="server" type="text" class="form-control" placeholder="required"></asp:TextBox>
                        </div>
                    </div>

                    <hr class="my-4">

                    <h4 class="mb-3">Payment</h4>

<div class="my-3">
    <div class="form-check">
        <asp:RadioButton ID="credit" runat="server" GroupName="paymentMethod" type="radio" class="form-check-input" checked="true" placeholder="required"/>
        <asp:Label ID="lblCreditCard" runat="server" Text="Label" class="form-check-label" for="credit">Credit Card</asp:Label>
    </div>
    <div class="form-check">
        <asp:RadioButton ID="debit" runat="server" GroupName="paymentMethod" type="radio" class="form-check-input" placeholder="required" />
        <asp:Label ID="lblDebitCard" runat="server" Text="Debit Card" class="form-check-label" for="debit">Debit Card</asp:Label>
    </div>
    <div class="form-check">
        <asp:RadioButton ID="paypal" runat="server" GroupName="paymentMethod" type="radio" class="form-check-input" placeholder="required" />
        <asp:Label ID="lblPayPal" runat="server" Text="PayPal" class="form-check-label" for="paypal">PayPal</asp:Label>
    </div>
</div>


                    <div class="row gy-3">
                        <div class="col-md-6">
                            <asp:Label ID="lblNameOnCard" runat="server" Text="Name on Card" for="cc_name" class="form-label">Name on Card</asp:Label>
                            <asp:TextBox ID="cc_name" type="text" class="form-control" runat="server" placeholder="Mr S Dukanezwe"></asp:TextBox>
                            <small class="text-body-secondary">Full name as displayed on card</small>
                        </div>

                        <div class="col-md-6">
                            <asp:Label ID="lblCreditCardNum" runat="server" Text="Credit card Number" for="cc_number" class="form-label"></asp:Label>
                            <asp:TextBox ID="cc_number" TextMode="Number" class="form-control mt-2" runat="server" placeholder="5746 3746 5867 0069"></asp:TextBox>
                        </div>

                        <div class="col-md-3">
                            <asp:Label ID="lblExpiration" runat="server" Text="Expiration Date" for="cc_expiration" class="form-label"></asp:Label>
                            <asp:TextBox ID="cc_expiration" type="text" class="form-control" runat="server" TextMode="Number" placeholder="03/26"></asp:TextBox>
                        </div>

                        <div class="col-md-3">
                            <asp:Label ID="lblCVV" runat="server" Text="CVV" for="cc_cvv" class="form-label"></asp:Label>
                            <asp:TextBox ID="cc_cvv" runat="server" placeholder="072" TextMode="Number" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                    <asp:Button ID="btnMakePayment" runat="server" class="w-100 btn btn-primary btn-lg mt-5" OnClick="Button1_Click" Text="Make Payment" />
                        </div>
                </form>
            </div>
        </div>
    </div>


</asp:Content>
