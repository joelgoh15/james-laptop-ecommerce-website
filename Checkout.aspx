<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Portfolio2_3.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
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

        div.classDivSideMenuComponent {
            width: 24px; /*35px*/
            height: 3px; /*5px*/
            background-color: black;
            margin: 3px; /*3px 0*/
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
            /*border-radius:1px 1px;*/
        }

        div.classDivSideMenuComponentParent:hover {
            background-color:lightgray;
        }

        /* *********************************** */
        /* style for side menu */
        /* start */

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
        a.classALinkAdminPage:hover ,a.classALinkAbout:hover { 
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

    

        /* end */
        /* style for side menu */
        /* *********************************** */

        label.classLabelAppName2 {
            font-family: Calibri;
            font-size: 18px;
            margin-top:10px;
            /*height:30px;*/
            /*background-color:antiquewhite;*/
            /*margin-left:10px;*/
        }

        i.classBrandName2 {
            position:relative;
            top:-5px;
        }

        div.classDivCheckoutPageMainContent {
            width:100%;
            height:auto;
            float:left;
            display:block;
            /*border: 1px solid black;*/
            margin-top:10px;
            border-radius:10px;

        }

        table.classTableCheckoutPageMainContent {
            width: 100%;
            border: 1px solid black;
            border-radius:10px;
        }

        table.classTableCheckoutPageMainContent td {
            /*border: 1px solid black;*/
            
        }

        .classTableTdPageHeading {
            font-family:Calibri;
            font-size:32px;
            text-align:left;
        }

        
        .classTableTdProductFeatureMainContent {
             width:40%;
             padding-top:0px;
             /*text-align:start;*/
            vertical-align:top; 
        }

         div.classDivProductFeaturesDescription {
             /*border: 1px solid black;*/
             width:100%;
             height: 400px; /*450px*/
             overflow:scroll;
         }


         img.classImgHeroImage {
            width:100%;
            height:170px;
            /*border: 1px solid black;
            border-radius:10px;*/
            float:left;
            margin-right:0px;
            margin-top:0px;
            margin-bottom:5px;
            /*box-shadow:2px 2px lightblue;*/
         }

         .classLabelPriceTag {
                width:fit-content;
                background-color:#FF1083;
                opacity:1.0;
                font-family:Calibri;
                font-size:16px;
                margin-left:5px;
               /* margin-top:15px;*/
                /*display:block;*/
         }

        .classlabelQuantity {
            font-family: Calibri;
            font-size: 16px;
        }

        .classTdQuantitySection {
            text-align:center;
            padding-top:10px;
            padding-bottom:10px;
        }

        .classAddButton {
            font-family: Calibri;
            font-size: 16px;
            font-weight:bold;
            width:30px;
            height:30px;
            border-color:black;
            border-radius:5px;
            border-width:1px;
            background-color: #7FFF00;
        }

        .classAddButton:hover {
            opacity:0.8;
        }


        .classQuantityTextBox {
            font-family: Calibri;
            font-size: 16px;
            text-align: center;
            height:30px;
            width:60%;
            border-left:none;
            border-right:none;
            border-top:none;

        }

        .classDeductButton {
            font-family: Calibri;
            font-size: 16px;
            font-weight:bolder;
            width:30px;
            height:30px;
            border-color:black;
            border-radius:5px;
            border-width:1px;
            background-color: #7FFF00;
        }

        .classDeductButton:hover {
            opacity:0.8;
        }

        .classLabelProductPrice {
            font-family: Calibri;
            font-size: 16px;
            float: left;
        }

        .classLabelProductPrice2 {
            font-family: Calibri;
            font-size: 16px;
            float:right;
        
        }

        .classLabelShippingFee {
            font-family: Calibri;
            font-size: 16px;
            float: left;
        }

        .classLabelShippingFee2 {
            font-family: Calibri;
            font-size: 16px;
            float:right;
        }

        .classTrTotalCost {
            border-top: 1px solid black;
        }

        .classLabelTotalCost {
            font-family: Calibri;
            font-size: 16px;
            font-weight:bold;
            float: left;
            
        }

        .classTextBoxTotalCost {
            font-family: Calibri;
            font-size: 16px;
            font-weight:bold;
            float:right;
            border:none;
            margin-right:0px;
            width:fit-content;
            text-align:right;
        }

        /*span.fa fa-cc-visa {
            color:navy; 
            font-size:16px;
        }

        span.fa fa-cc-amex {
            color:blue; 
            font-size:16px;
        }

        span.fa fa-cc-mastercard {
            color:red; 
            font-size:16px;
        }

        span.fa fa-cc-discover {
            color:orange; 
            font-size:16px;
        }*/

        label.classLabelPayment {
            font-family: Calibri;
            font-size:18px;
        }

        table.classTableCheckoutForm {
            width: 100%;
        }

        label.classLabelNameOnCard {
            font-family: Calibri;
            font-size:16px;
        }

        input.classNameOnCardTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;

        }

        label.classLabelCreditCardNumber {
            font-family: Calibri;
            font-size:16px;
        }

        input.classCreditCardNumberTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelExpMonth {
            font-family: Calibri;
            font-size:16px;
        }

        input.classExpMonthTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelCVV {
            font-family: Calibri;
            font-size:16px;
        }

        input.classCVVTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelExpYear {
            font-family: Calibri;
            font-size:16px;
        }

        input.classExpYearTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelBillingAddress {
            font-family: Calibri;
            font-size:18px;
        }

        label.classLabelFullName {
            font-family: Calibri;
            font-size:16px;
        
        }

        input.classFullNameTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelEmail {
            font-family: Calibri;
            font-size:16px;
        }

        input.classEmailTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelAddress {
            font-family: Calibri;
            font-size:16px;
        }

        input.classAddressTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelCity {
            font-family: Calibri;
            font-size:16px;
        }

        input.classCityTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelZipCode {
            font-family: Calibri;
            font-size:16px;
        }

        input.classZipCodeTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelState {
            font-family: Calibri;
            font-size:16px;
        }

        input.classStateTextBox {
            width:98%;
            height:30px;
            font-family: Calibri;
            font-size:16px;
            border: 1px solid black;
            border-radius:5px;
        }

        label.classLabelSameadr {
            font-family: Calibri;
            font-size:16px;
        }

        input.classInputSameadr {
            font-family:Calibri;
            font-size:16px;
        }

        input.classButtonCheckout {
            font-family:Calibri;
            font-size:16px;
            width:98%;
            height:60px;
            border-radius:5px;
            text-align:center;
            font-weight:bold;
            background-color: #EDB151;
            border-width:1px;
        }

        input.classButtonCheckout:hover {
            opacity:0.9;
        }


        input.classButtonCancel {
            font-family:Calibri;
            font-size:16px;
            width:98%;
            height:60px;
            border-radius:5px;
            text-align:center;
            font-weight:bold;
            background-color:white;
            border-width:1px;
        }

        input.classButtonCancel:hover {
            background-color:#f0f5f5;
            /*opacity:0.9;*/
        }

        .classTdRowBillingAddress {
            padding-top:10px;
        }

        .classTdRowCheckoutButton {
            padding-top:15px;
        }

        .classDivFooter {
            border-top: 1px solid black;
            /*position: fixed;*/
            bottom: 0;
            width: inherit;
            min-width: 1000px;
            height: 40px;
            /*background-color: aliceblue;*/
            font-family: Calibri;
            font-size: 11px;
    
        }

        div.classDivLogoutOption {
            width:fit-content;
            height:fit-content;
            /*border: 1px solid black;*/
        }

        .CssClassIdUserLoginStatus {
                /*float:right;*/
                font-family:Calibri;
                font-size:16px;
                color:black;
                /*border: 1px solid black;*/
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
        

        /*.abc {
        width:fit-content;
        border:1px solid black;
        }*/

    </style>
    <script type="text/javascript">

        //***********************************
        //side navigation menu js
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            
        }


        

    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!--google icons-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />    
</head>
<body>
    <form id="idFormDetailsForCheckout" runat="server" style="display: inline; background-color: transparent;">    

        <%-- side menu options --%>
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a class="classALinkLogo" href="#">
                <label  class="classLabelAppName2">
                    <span class="material-icons">laptop</span>
                    <i class="classBrandName2">JamesLaptop</i>
                </label>
            </a>
            <a href="Home.aspx" class="classALinkHome">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">home</i>
                Home
            </a>
            <a href="ProductFeatures.aspx" class="classALinkProductFeatures">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">featured_play_list</i>
                Product Features
            </a>
            <a href="Checkout.aspx" class="classALinkBuyNow">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">credit_card</i>
                Buy Now
            </a>
            <a href="Account.aspx" class="classALinkAccount">
                <i class="material-icons" style="font-size:16px; position:relative; top:2px;">account_circle</i>
                Account
            </a>
            <a href="About.aspx" class="classALinkAbout">
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


    
        <%-- section left side div--%>
        <div id="idLeftDivBox" class="classLeftDivBox">
        </div>

        <%-- section for centre div --%>
        <div id="idCentreDivBox" class="classCentreDivBox">
            <%-- Page Header --%>
            <div id="idHeaderDiv" class="classHeaderDiv">
                <label id="idLabelAppName" class="classLabelAppName">
                    <span class="material-icons">laptop</span>
                    <i class="classBrandName">JamesLaptop</i>
                </label>

                <%-- side menu icon --%>
                <div class="classDivSideMenuComponentParent" onclick="openNav()">
                    <div class="classDivSideMenuComponent"></div>
                    <div class="classDivSideMenuComponent"></div>
                    <div class="classDivSideMenuComponent"></div>
                </div>
            </div>
    
    
    

            <%-- checkout page main content --%>
            <div class="classDivCheckoutPageMainContent">
                <table class="classTableCheckoutPageMainContent">
                    <tr>
                        <td class="classTableTdPageHeading" colspan="2">
                            <strong>Check-Out</strong>
                        </td>
                    </tr>
                    <tr class="classTableTdProductFeatureMainContent">
                        <td class="classTableTdProductFeatureMainContent">    
                        <%-- checkout page description section (left) --%>
                            <table style="width: 100%;">
                                <tr>
                                    <td>
                                        <img class="classImgHeroImage" alt="James_Laptop" src="Image/james_laptop_hero_image.svg" />
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="classLabelPriceTag">
                                            <strong>RM2500.00</strong>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="classTdQuantitySection">
                                        <input id="idAddButton" class="classAddButton" type="button" onclick="IncrementQuantity()" value="+" />
                                        <input id="idQuantityTextBox" name="nameQuantityTextBox" class="classQuantityTextBox" type="text" value="1"  readonly="true" />
                                        <input id="idDeductButton" class="classDeductButton" onclick="DecrementQuantity()" type="button" value="-" />
                                
                                        <script type="text/javascript">

                                            function IncrementQuantity() {
                                                var currentQuantity;
                                                currentQuantity = 0

                                                currentQuantity = parseInt(document.getElementById('idQuantityTextBox').value);
                                                currentQuantity = currentQuantity + 1;
                                                document.getElementById('idQuantityTextBox').value = currentQuantity.toString();

                                                //increment product price
                                                var currentProductPrice = document.getElementById('idLabelProductPrice2').textContent;
                                                currentProductPrice = currentProductPrice.trim();
                                                const arraycurrentProductPrice = currentProductPrice.split(" ");
                                                var doublecurrentProductPrice = parseFloat(arraycurrentProductPrice[1]);
                                                doublecurrentProductPrice = 2500 * currentQuantity;

                                                document.getElementById('idLabelProductPrice2').textContent = "RM " + doublecurrentProductPrice.toString() + ".00";

                                                //increment total cost
                                                var currentTotalPrice = document.getElementById('idTextBoxTotalCost').textContent;
                                                currentTotalPrice = currentTotalPrice.trim();
                                                const arrayCurrentTotalPrice = currentTotalPrice.split(" ");
                                                var doublecurrentTotalPrice = parseFloat(arrayCurrentTotalPrice[1]);
                                                doublecurrentTotalPrice = 100 + doublecurrentProductPrice;

                                                document.getElementById('idTextBoxTotalCost').value = "RM " + doublecurrentTotalPrice.toString() + ".00"; 

                                            }


                                            function DecrementQuantity() {

                                                var currentQuantity;
                                                currentQuantity = 0

                                                currentQuantity = parseInt(document.getElementById('idQuantityTextBox').value);

                                                if (currentQuantity >= 2) {
                                                    currentQuantity = currentQuantity - 1;
                                                    document.getElementById('idQuantityTextBox').value = currentQuantity.toString();
                                                } else {
                                                    document.getElementById('idQuantityTextBox').value = "1";
                                                }

                                                //decrement product price
                                                var currentProductPrice = document.getElementById('idLabelProductPrice2').textContent;
                                                currentProductPrice = currentProductPrice.trim();
                                                const arraycurrentProductPrice = currentProductPrice.split(" ");
                                                var doublecurrentProductPrice = parseFloat(arraycurrentProductPrice[1]);
                                                doublecurrentProductPrice = 2500 * currentQuantity;

                                                document.getElementById('idLabelProductPrice2').textContent = "RM " + doublecurrentProductPrice.toString() + ".00";

                                                //decrement total cost
                                                var currentTotalPrice = document.getElementById('idTextBoxTotalCost').textContent;
                                                currentTotalPrice = currentTotalPrice.trim();
                                                const arrayCurrentTotalPrice = currentTotalPrice.split(" ");
                                                var doublecurrentTotalPrice = parseFloat(arrayCurrentTotalPrice[1]);
                                                doublecurrentTotalPrice = 100 + doublecurrentProductPrice;

                                                document.getElementById('idTextBoxTotalCost').value = "RM " + doublecurrentTotalPrice.toString() + ".00"; 

                                            }


                                        </script>
                                

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="classLabelProductPrice">
                                            Total Product Price:
                                        </label>
                                    
                                        <label id="idLabelProductPrice2" class="classLabelProductPrice2">
                                            RM 2500.00
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="classLabelShippingFee">
                                            Shipping Fee:
                                        </label>

                                        <label class="classLabelShippingFee2">
                                            RM 100.00
                                        </label>
                                    </td>
                                </tr>
                                <tr class="classTrTotalCost">
                                    <td>
                                        <label class="classLabelTotalCost">
                                            <strong>Total Fee:</strong>
                                        </label>

                                        <%--<label id="idTextBoxTotalCost" name="nameLabelTotalCost2" class="classTextBoxTotalCost">
                                            <strong>RM 2600.00</strong>
                                        </label>--%>
                                   
                                        <input id="idTextBoxTotalCost" name="nameTextBoxTotalCost" class="classTextBoxTotalCost" type="text" value="RM 2600.00"  readonly="true" />



                                    </td>
                                </tr>
                                <%--<tr>
                                    <td>
                                        <span class="fa fa-cc-visa" style="color:navy; font-size:16px;"></span>
                                        <span class="fa fa-cc-amex" style="color:blue; font-size:16px;"></span>
                                        <span class="fa fa-cc-mastercard" style="color:red; font-size:16px;"></span>
                                        <span class="fa fa-cc-discover" style="color:orange; font-size:16px;"></span>
                                    </td>
                                </tr>--%>
                            </table>
                        </td>
                        <td>
                            <%--<form id="idFormDetailsForCheckout" runat="server" style="display: inline; background-color: transparent;">--%>
                                <div class="classDivProductFeaturesDescription">
                                <%-- checkout page form section (right) --%>
                                    <table class="classTableCheckoutForm">
                                        <tr>
                                            <td>
                                                <label class="classLabelPayment">
                                                    <strong>Payment</strong>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="fa fa-cc-visa" style="color:navy; font-size:22px;"></span>
                                                <span class="fa fa-cc-amex" style="color:blue; font-size:22px;"></span>
                                                <span class="fa fa-cc-mastercard" style="color:red; font-size:22px;"></span>
                                                <span class="fa fa-cc-discover" style="color:orange; font-size:22px;"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelNameOnCard">
                                                    Name on Card:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idNameOnCardTextBox" CssClass="classNameOnCardTextBox" placeholder="John Michael"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorNameOnCardTextBox" runat="server" ControlToValidate="idNameOnCardTextBox" ErrorMessage="*Name on Card field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelCreditCardNumber">
                                                    Credit Card Number:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idCreditCardNumberTextBox" CssClass="classCreditCardNumberTextBox" placeholder="1111-2222-3333-4444"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorCreditCardNumberTextBox" runat="server" ControlToValidate="idCreditCardNumberTextBox" ErrorMessage="*Credit card number field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelExpMonth">
                                                    Exp. Month:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idExpMonthTextBox" CssClass="classExpMonthTextBox" placeholder="September"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorExpMonthTextBox" runat="server" ControlToValidate="idExpMonthTextBox" ErrorMessage="*Exp. month field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic"  ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelCVV">
                                                    CVV:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idCVVTextBox" CssClass="classCVVTextBox" placeholder="352"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorCVVTextBox" runat="server" ControlToValidate="idCVVTextBox" ErrorMessage="*CVV field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelExpYear">
                                                    Exp. Year:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idExpYearTextBox" CssClass="classExpYearTextBox" placeholder="2018"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorExpYearTextBox" runat="server" ControlToValidate="idExpYearTextBox" ErrorMessage="*Exp. Year field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="classTdRowBillingAddress">
                                                <label class="classLabelBillingAddress">
                                                    <strong>Billing Address</strong>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelFullName">
                                                    Full Name:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idFullNameTextBox" CssClass="classFullNameTextBox" placeholder="John Michael" runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorFullNameTextBox" runat="server" ControlToValidate="idFullNameTextBox" ErrorMessage="*Full name field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelEmail">
                                                    Email:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idEmailTextBox" CssClass="classEmailTextBox" placeholder="johnmichael@example.com" runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorEmailTextBox" runat="server" ControlToValidate="idEmailTextBox" ErrorMessage="*Email field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelAddress">
                                                    Address:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idAddressTextBox" CssClass="classAddressTextBox" placeholder="Strawberry Road"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorAddressTextBox" runat="server" ControlToValidate="idAddressTextBox" ErrorMessage="*Address field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelCity">
                                                    City:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idCityTextBox" CssClass="classCityTextBox" placeholder="Strawberry City"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorCityTextBox" runat="server" ControlToValidate="idCityTextBox" ErrorMessage="*City field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelZipCode">
                                                    Zip Code:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idZipCodeTextBox" CssClass="classZipCodeTextBox" placeholder="12000"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorZipCodeTextBox" runat="server" ControlToValidate="idZipCodeTextBox" ErrorMessage="*Zip Code field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label class="classLabelState">
                                                    State:
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="idStateTextBox" CssClass="classStateTextBox" placeholder="Strawberry"  runat="server" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="idRequiredFieldValidatorStateTextBox" runat="server" ControlToValidate="idStateTextBox" ErrorMessage="*State field is required." Font-Names="Calibri" Font-Size="16px" Font-Italic="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <%--<label class="classLabelSameadr">
                                                    <input type="checkbox" class="classInputSameadr" name="sameadr" /> Shipping address same as billing 
                                                </label>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="classTdRowCheckoutButton">
                                                <asp:Button ID="idButtonCheckout" CssClass="classButtonCheckout" runat="server" Text="Checkout" OnClick="idButtonCheckout_Click" />
                                                <asp:LinqDataSource ID="CheckoutLinqDataSource" runat="server" ContextTypeName="Portfolio2_3.AppDB_DataClassesDataContext" EntityTypeName="" TableName="CheckoutTables" EnableInsert="True"></asp:LinqDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="idButtonCancel" CssClass="classButtonCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="idButtonCancel_Click" />  
                                            </td>
                                    
                                        </tr>
                                
                                    </table>


                        
                                </div>
                            <%--</form>--%>
                        </td>
                    </tr>
                        
                    
                        

                </table>
             

            
            </div>
        
        
       

            <table style="width: 100%;">
                <tr>
                    <td>
                        <br/>
                        <br/>
                        <br/>
                    </td>
                </tr>
                <tr>
                    <td>
                            <%-- Login Page Footer --%>
                            <div id="idDivFooter" class="classDivFooter">
                                <footer>
                                    <label>
                                        <!--<h6>&copy; Student Registration Application</h6>-->
                                        <i><strong>&copy; James Laptop eCommerce Website</strong></i>
                                    </label>
                                </footer>
                            </div>
                    </td>
                </tr>
            </table>


       



        </div>
















        <%-- section div right side --%>
        <div id="idRightDivBox" class="classRightDivBox">
        </div>

    </form>
    

</body>
</html>
