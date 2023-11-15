<%@ Page Title="" Language="C#" MasterPageFile="~/Content/User Interface/Site1.Master" AutoEventWireup="true" CodeBehind="Course_Layout.aspx.cs" Inherits="BizWiz.Content.User_Interface.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mt-5 mb-3 pt-5 p-3 m-auto border " style="width: 85%;">
        <form runat="server">
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
                                        <h1 class="text text-capitalize text-decoration-underline"><b>Introduction to E-commerce</b></h1>
                                        <p>Welcome to the Introductory course on Ecommerce. This course has been designed to give you access to detailed and informative information on everything Ecommerce.  </p>

                                        <h3><b>Chapter 1: Introduction to E-Commerce</b></h3>

                                        <p>-Understand the concept of electronic commerce (e-commerce) and its significance in the modern business landscape</p>
                                        <p>-Explore the historical evolution of e-commerce and its impact on traditional commerce.</p>
                                        <p>-Identify the key drivers and benefits of e-commerce for businesses and consumers.</p>
                                        <p>-Recognize the challenges and opportunities associated with e-commerce in the digital age.</p>

                                        <h3><b>Chapter 2: E-Commerce Business Models and Strategies</b></h3>

                                        <p>-Examine different e-commerce business models, including online marketplaces, subscription-based services, and direct-to-consumer (DTC) approaches.</p>
                                        <p>-Understand how to develop a comprehensive e-commerce strategy tailored to your business goals.</p>
                                        <p>-Explore revenue generation strategies, including pricing models and monetization techniques.</p>
                                        <p>-Learn about customer acquisition and retention strategies in the e-commerce context.</p>
                                        <p>-Evaluate the role of innovation and adaptation in sustaining competitive advantage in e-commerce.</p>

                                        <h3><b>Chapter 3: E-Commerce Website Development</b></h3>

                                        <p>-Explore the critical components of a successful e-commerce website, including design, user experience (UX), and user interface (UI).</p>
                                        <p>-Identify and compare popular e-commerce platforms, such as Shopify, WooCommerce, and Magento.</p>
                                        <p>-Learn how to select and integrate secure payment gateways.</p>
                                        <p>-Discover best practices for website maintenance and updates to ensure a seamless shopping experience.</p>

                                        <h3><b>Chapter 4: E-Commerce Marketing and Promotion</b></h3>

                                        <p>-Develop a deep understanding of search engine optimization (SEO) and its role in driving organic traffic to your e-commerce site.</p>
                                        <p>-Explore content marketing strategies, including blog posts, product descriptions, and video marketing.</p>
                                        <p>-Learn how to leverage social media platforms for effective e-commerce promotion.</p>
                                        <p>-Delve into paid advertising options, including Google Ads and social media ads.</p>

                                        <h3><b>Chapter 5: E-Commerce Analytics and Performance Tracking</b></h3>

                                        <p>-Identify key performance indicators (KPIs) relevant to e-commerce businesses, such as conversion rate, customer acquisition cost (CAC), and customer lifetime value (CLV).</p>
                                        <p>-Learn how to set up and use analytics tools like Google Analytics to gather actionable insights.</p>
                                        <p>-Understand the process of data-driven decision-making and continuous improvement.</p>
                                        <p>-Explore techniques for A/B testing and optimizing e-commerce website performance.</p>
                                        <p>-Develop the ability to measure and analyze the success of marketing campaigns and user engagement strategies.</p>

                                        <br />

                                        <p>
                                            These chapters provide a strong foundation for understanding and succeeding in the field of e-commerce. 
                 They cover fundamental concepts, strategies, and practical considerations that are essential 
                 for both students studying e-commerce and entrepreneurs looking to 
                 establish or improve their online businesses.
                                        </p>

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
                                    <h1><b>Study Material</b></h1>
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
                                    <h1 class="text text-capitalize text-decoration-underline mb-3"><b>Book for Test</b></h1>
                                    <div class="container bg-light-subtle w-75 rounded-start rounded-end ">
                                        <div class="row">
                                            <h3>Fill in the Below Form to Book for your Test!</h3>
                                            <div class="col-md-12">
                                                <p>Course Code</p>
                                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Course Code"></asp:TextBox>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Venue</p>
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" placholder="Select Venue"></asp:DropDownList>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Date</p>
                                                <asp:TextBox ID="TextBox2" TextMode="Date" runat="server" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" placeholder="Course Code"></asp:TextBox>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Time</p>
                                                <asp:TextBox ID="TextBox4" TextMode="Time" runat="server" CssClass="w-100 mt-2 p-1 rounded-start rounded-end" placeholder="Course Code"></asp:TextBox>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-4"></div>
                                                    <div class="col-md-4"></div>
                                                    <div class="col-md-4">
                                                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-outline-info w-100" />
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
        </form>
    </div>

</asp:Content>
