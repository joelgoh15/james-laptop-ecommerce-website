<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Portfolio2_3.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <meta charset="utf-8" />
    <style type="text/css">
        div.classLeftDivBox {
        }

        div.classCentreDivBox {
            width: 80%;
            min-width: 1000px;
            height: 80px;
            float: left;
            margin-left: 100px;
            margin-right: 100px;
        }

        div.classRightDivBox {
        }

        div.classHeaderDiv {
            width:100%;
            height:70px;
            border: 1px solid black;
            border-radius:10px;
            display:block;     
        }

        label.classLabelAppName {
            font-family: Calibri;
            font-size: 18px;
            margin-top:10px;
            margin-left:10px;
        }

        i.classBrandName {
            position:relative;
            top:-5px;
        }

        div.classDivSideMenuComponentParent {
            width:auto;
            height:auto;
            float:right;
            margin-right:10px;
            margin-top:4px;
            padding-top:1px;
            padding-bottom:1px;
            padding-left:1px; 
            padding-right:1px;
        }

        div.classDivSideMenuComponentParent:hover {
            background-color:lightgray;
        }

        div.classDivSideMenuComponent {
            width: 24px; 
            height: 3px; 
            background-color: black;
            margin: 3px; 
        }

        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color:antiquewhite; 
            overflow-x: hidden;
            transition: 0.5s; 
            padding-top: 60px;
        }

        .sidenav a {
            padding: 8px 8px 8px 40px; 
            text-decoration: none;
            font-size: 16px;                
            color: #818181; 
            display: block;
            transition: 0.5s; 
            font-family:Calibri;
        }

        a.classALinkLogo {
            padding: 8px 8px 8px 40px; 
            text-decoration: none;
            font-size: 16px; 
            color: #818181; 
            display: block;
            transition: 0.5s; 
            font-family:Calibri;
            height:60px;
        }

        .sidenav a.classALinkLogo:hover {
            color:#818181;
        }

        a.classALinkHome:hover, a.classALinkProductFeatures:hover, 
        a.classALinkBuyNow:hover, a.classALinkAccount:hover,
        .classALinkAdminPage:hover ,a.classALinkAbout:hover { 
            background-color: lightgray;
            color:navy;
            margin-left:5px;
    
        }

        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 10px;
            font-size: 36px;
            margin-left: 50px; 
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        }

        label.classLabelAppName2 {
            font-family: Calibri;
            font-size: 18px;
            margin-top:10px;
        }

        i.classBrandName2 {
            position:relative;
            top:-5px;
        }

        div.classDivCheckoutPageMainContent {
            width:100%;
            height:400px;
            float:left;
            display:block;
            border: 1px solid black;
            margin-top:10px;
            border-radius:10px;
            overflow:scroll;
        }

       
        table.classTableCheckoutPageMainContent {
            width: 100%;
        }

        table.classTableCheckoutPageMainContent td {
        }

        .classTableTdPageHeading {
            font-family:Calibri;
            font-size:32px;
            text-align:left;
        }

        .classLabelUserSubscriptionStatus {
            font-family:Calibri;
            font-size:16px;
        }

        .classLabelUserNotficationStatus {
            font-family:Calibri;
            font-size:16px;
        }

        .classLabelPageSubHeading {
            font-family:Calibri;
            font-size:18px;
        }

        .classDivFooter {
            border-top: 1px solid black;
            position: fixed;
            bottom: 0;
            width: inherit;
            min-width: 1000px;
            height: 40px;
            font-family: Calibri;
            font-size: 11px;
        }

        div.classDivLogoutOption {
            width:fit-content;
            height:fit-content;
        }

        .CssClassIdUserLoginStatus {
            font-family:Calibri;
            font-size:16px;
            color:black;
            padding-left:1px;
            padding-right:1px;
            padding-top:1px;
            padding-bottom:1px;
            margin:0px;
            width:fit-content;
            height:fit-content;
        }

        .CssClassIdUserLoginStatus:hover {
            text-decoration:underline;
        }

        .cssClassGridViewUserPaymentDetails {
            border: 1px solid black;
            border-radius:20px;
        }
    </style>
    <script type="text/javascript">
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }
    </script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" /> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server" style="display: inline; background-color: transparent;">
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a class="classALinkLogo" href="#">
            <label  class="classLabelAppName2">
                <span class="material-icons">laptop</span>
                <i class="classBrandName2">JamesLaptop</i>
            </label>
        </a>
        <a href="/Home.aspx" class="classALinkHome">
            <i class="material-icons" style="font-size:16px; position:relative; top:2px;">home</i>
            Home
        </a>
        <a href="/ProductFeatures.aspx" class="classALinkProductFeatures">
            <i class="material-icons" style="font-size:16px; position:relative; top:2px;">featured_play_list</i>
            Product Features
        </a>
        <a href="/Checkout.aspx" class="classALinkBuyNow">
            <i class="material-icons" style="font-size:16px; position:relative; top:2px;">credit_card</i>
            Buy Now
        </a>
        <a href="/Account.aspx" class="classALinkAccount">
            <i class="material-icons" style="font-size:16px; position:relative; top:2px;">account_circle</i>
            Account
        </a>
        <a href="/About.aspx" class="classALinkAbout">
            <i class="material-icons" style="font-size:16px; position:relative; top:2px;">contacts</i>
            About
        </a>
        <a href="AdminPage/AdminPage.aspx" class="classALinkAdminPage" id="idALinkAdminPage" runat="server">
            <i class="material-icons" style="font-size:16px; position:relative; top:2px;">account_box</i>
            Admin Page
        </a>
        <div class="classDivLogoutOption">
            <asp:LoginStatus ID="idUserLoginStatus" runat="server" CssClass="CssClassIdUserLoginStatus"  LogoutText="[Logout]" LoginText="[Login]" LogoutAction="RedirectToLoginPage" />
        </div>
    </div>
    <div id="idLeftDivBox" class="classLeftDivBox">
    </div>
    <div id="idCentreDivBox" class="classCentreDivBox">        
        <div id="idHeaderDiv" class="classHeaderDiv">
            <label id="idLabelAppName" class="classLabelAppName">
                <span class="material-icons">laptop</span>
                <i class="classBrandName">JamesLaptop</i>
            </label>          
            <div class="classDivSideMenuComponentParent" onclick="openNav()">
                <div class="classDivSideMenuComponent"></div>
                <div class="classDivSideMenuComponent"></div>
                <div class="classDivSideMenuComponent"></div>
            </div>
        </div>     
        <div class="classDivCheckoutPageMainContent">
            <table class="classTableCheckoutPageMainContent">
                <tr>
                    <td class="classTableTdPageHeading">
                        <strong>Admin-Page</strong>
                    </td>
                </tr>
                <tr>
                    <td><br/></td>
                </tr>
                <tr>
                    <td>
                        <label class="classLabelUserSubscriptionStatus">
                           <strong>User Subscription Status:</strong>
                        </label>                   
                        <asp:Label ID="idLabelUserSubscriptionStatusDb" CssClass="classLabelUserSubscriptionStatus" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="classLabelUserNotficationStatus">
                           <strong>User Notification Status:</strong>
                        </label>
                        <asp:Label ID="idLabelUserNotficationStatusDb" CssClass="classLabelUserNotficationStatus" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><br/></td>
                </tr>
                <tr>
                    <td>
                        <label class="classLabelPageSubHeading">
                            <strong><u>User Payment Details</u></strong>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="idGridViewUserPaymentDetails" Width="95%" runat="server" Font-Names="Calibri" Font-Size="16px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="idSqlDataSourceUserPaymentDetails" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid"  CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                <asp:BoundField DataField="DateTime" HeaderText="Date Time" SortExpression="DateTime"></asp:BoundField>
                                <asp:BoundField DataField="NameOnCard" HeaderText="Name On Card" SortExpression="NameOnCard"></asp:BoundField>
                                <asp:BoundField DataField="CreditCardNo" HeaderText="Credit Card No" SortExpression="CreditCardNo"></asp:BoundField>
                                <asp:BoundField DataField="ExpMonth" HeaderText="Exp Month" SortExpression="ExpMonth"></asp:BoundField>
                                <asp:BoundField DataField="CVV" HeaderText="CVV" SortExpression="CVV"></asp:BoundField>
                                <asp:BoundField DataField="ExpYear" HeaderText="Exp Year" SortExpression="ExpYear"></asp:BoundField>
                                <asp:BoundField DataField="LaptopQuantity" HeaderText="Laptop Qty" SortExpression="LaptopQuantity"></asp:BoundField>
                                <asp:BoundField DataField="TotalFee" HeaderText="Total Fee" SortExpression="TotalFee"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>
                            <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"></SelectedRowStyle>
                            <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>
                            <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>
                            <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource ID="idSqlDataSourceUserPaymentDetails" runat="server" ConnectionString='<%$ ConnectionStrings:AppDBConnectionString %>' SelectCommand="SELECT Id, DateTime, NameOnCard, CreditCardNo, ExpMonth, CVV, ExpYear, LaptopQuantity, TotalFee FROM CheckoutTable"></asp:SqlDataSource>    
                    </td>
                </tr>
                <tr>
                    <td><br/></td>
                </tr>
                <tr>
                    <td>
                        <label class="classLabelPageSubHeading">
                            <strong><u>User Billing Address Details</u></strong>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="idGridViewUserBillingAddressDetails" runat="server" Width="95%" Font-Names="Calibri" Font-Size="16px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="idSqlDataSourceUserBillingAddressDetails" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                <asp:BoundField DataField="DateTime" HeaderText="Date Time" SortExpression="DateTime"></asp:BoundField>
                                <asp:BoundField DataField="FullName" HeaderText="Full Name" SortExpression="FullName"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                                <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" SortExpression="ZipCode"></asp:BoundField>
                                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                                <asp:BoundField DataField="LaptopQuantity" HeaderText="Laptop Qty" SortExpression="LaptopQuantity"></asp:BoundField>
                                <asp:BoundField DataField="TotalFee" HeaderText="Total Fee" SortExpression="TotalFee"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>
                            <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"></SelectedRowStyle>
                            <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>
                            <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>
                            <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource ID="idSqlDataSourceUserBillingAddressDetails" runat="server" ConnectionString='<%$ ConnectionStrings:AppDBConnectionString %>' SelectCommand="SELECT Id, DateTime, FullName, Email, Address, City, ZipCode, State, LaptopQuantity, TotalFee FROM CheckoutTable"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td><br/><br/></td>
                </tr>
            </table>
        </div>
        <div id="idDivFooter" class="classDivFooter">
            <footer>
                <label>
                    <i><strong>&copy; JamesLaptop eCommerce Website</strong></i>
                </label>
            </footer>
        </div>
    </div>
    <div id="idRightDivBox" class="classRightDivBox">
    </div>
    </form>
</body>
</html>
