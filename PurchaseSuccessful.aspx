<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PurchaseSuccessful.aspx.cs" Inherits="Portfolio2_3.PurchaseSuccessful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase Successful</title>
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
            /*border-radius:1px 1px;*/
        }

        div.classDivSideMenuComponentParent:hover {
            background-color:lightgray;
        }

        div.classDivSideMenuComponent {
            width: 24px; /*35px*/
            height: 3px; /*5px*/
            background-color: black;
            margin: 3px; /*3px 0*/
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
            border: 1px solid black;
            margin-top:10px;
            border-radius:10px;
        }

        table.classTableCheckoutPageMainContent {
            width: 100%;
            /*border: 1px solid black;*/
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

        td.classTdHeading {
            font-family:Calibri;
            font-size:32px;
            text-align:center;
        }

        td.classTdHeading2 {
            font-family:Calibri;
            font-size:24px;
            text-align:center;
        }

        td.classTdHeading3 {
            text-align:center;
        }

        div.classDivContentIcons {
            width:fit-content;
            padding: 10px;
            border: 1px solid black;
            border-radius:10px;
            
            display:inline-block;

        }

        label.classLabelContentIcons {
            font-family:Calibri;
            font-size:16px;
        }



        /* *********************************** */
        /* style for social media buttons */
        /* start */
        .fa {
          /*padding: 20px;*/
          padding:4px; /*12px*/
          font-size: 16px;
          /*width: 6px;*/ /*50px*/
          width:20px;
          text-align: center;
          text-decoration: none;
          margin: 2px 2px; /*5px 2px*/
        }

        .fa:hover {
            opacity: 0.7;
        }

         .fa-youtube {
            background: #bb0000;
            color: white;
         }


         .fa-facebook {
              background: #3B5998;
              color: white;
         }

         .fa-instagram {
              background: #125688;
              color: white;
         }

         .fa-twitter {
              background: #55ACEE;
              color: white;
         }

        /* end */
        /* style for social media buttons */
        /* *********************************** */


        .classDivFooter {
            border-top: 1px solid black;
            position: fixed;
            bottom: 0;
            width: inherit;
            min-width: 1000px;
            height: 40px;
            /*background-color: aliceblue;*/
            font-family: Calibri;
            font-size: 11px;
            width:80%;
            float:left;
            margin-top:50px;
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


    </style>
    <script type="text/javascript">

        //************************************************************
        //side navigation menu js
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
    <form id="idFormPurchaseSuccessfulPage" runat="server" style="display: inline; background-color: transparent;">

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
    
    
        

            <%-- purchase successful page main content --%>
            <div class="classDivCheckoutPageMainContent">
                <table class="classTableCheckoutPageMainContent">
                    <tr>
                        <td class="classTdHeading">
                            <label><strong>Thank You</strong></label>
                        </td>
                    </tr>
                    <tr>
                        <td class="classTdHeading2">
                            <label>for your purchase!</label>
                        </td>
                    </tr>
                    <tr>
                        <td><br/></td>
                    </tr>
                    <tr>
                        <td class="classTdHeading2">
                            <label>Your order is on it’s way.</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="classTdHeading3">
                            <i class="fa fa-gift" style="font-size:48px;"></i>
                        </td>
                    </tr>
                    <tr>
                        <td><br/></td>
                    </tr>
                    <tr>
                        <td class="classTdHeading3">
                            <div class="classDivContentIcons">
                                <label class="classLabelContentIcons">
                                    Do connect with us on:
                                </label>
                                <br/>
                                <a href="#" class="fa fa-youtube"></a>
                                <a href="#" class="fa fa-facebook"></a>
                                <a href="#" class="fa fa-instagram"></a>
                                <a href="#" class="fa fa-twitter"></a>
                            </div>
                        </td>
                    </tr>
                </table>

                <%-- footer design about page --%>
                <div id="idDivFooter" class="classDivFooter">
                    <footer>
                        <label>
                            <i><strong>&copy; JamesLaptop eCommerce Website</strong></i>
                        </label>
                    </footer>
                </div>


            </div>
        </div>



        <%-- section div right side --%>
        <div id="idRightDivBox" class="classRightDivBox">
        </div>

    
    </form>
</body>
</html>
