<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductFeatures.aspx.cs" Inherits="Portfolio2_3.ProductFeatures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Features</title>
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
            width: 24px; 
            height: 3px; 
            background-color: black;
            margin: 3px; 
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

        label.classLabelAppName2 {
            font-family: Calibri;
            font-size: 18px;
            margin-top:10px;
        }

        i.classBrandName2 {
            position:relative;
            top:-5px;
        }

        div.classDivProductFeatureMainContent {
            width:100%;
            height:auto;
            float:left;
            display:block;
            margin-top:10px;
            border-radius:10px;
        }

        table.classTableProductFeatureMainContent {
            width: 100%;
            border: 1px solid black;
            border-radius:10px;
        }

            table.classTableProductFeatureMainContent td {
            }

        .classTableTdProductFeatureMainContent {
             width:30%;
             padding-top:0px;
            vertical-align:top; 
        }

        img.classImgHeroImage {
            width:100%;
            height:170px;
            border: 1px solid black;
            border-radius:10px;
            float:left;
            margin-right:0px;
            margin-top:0px;
            margin-bottom:5px;
        }

        div.classDivProductFeaturesDescription {
            width:100%;
            height: 400px; 
            overflow:scroll;
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

        .classTableTdPageHeading {
            font-family:Calibri;
            font-size:32px;
            text-align:left;
        }

        .accordion {
          background-color: #eee;
          color: #444;
          cursor: pointer;
          padding: 18px;
          width: 100%;
          border: none;
          text-align: left;
          outline: none;
          font-size: 16px; /*15px*/
          transition: 0.4s;
          font-family:Calibri;
        }

        .active, .accordion:hover {
          background-color: #ccc;
        }

        .accordion:after {
          content: '\002B';
          color: #777;
          font-weight: bold;
          float: right;
          margin-left: 5px;
        }

        .active:after {
          content: "\2212";
        }

        .panel {
          padding: 0 18px;
          background-color: white;
          max-height: 0;
          overflow: hidden;
          transition: max-height 0.2s ease-out;
        }

        .classTableFeature1 {
            width:100%;
        }

        .classTableTdFeatureCol1 {
            width:40%;
            vertical-align:top;
            text-align:left;
        }

        .classTableTdFeatureCol2 {
            width:60%;
            vertical-align:top;
            text-align:left;
            font-family:Calibri;
            font-size:16px;
        }

        .classImgFeature {
            width:100%;
            height:170px;
        }

        .classLabelPriceTag {
            width:fit-content;
            background-color:#FF1083;
            opacity:1.0;
            font-family:Calibri;
            font-size:16px;
            margin-left:5px;
        }

         .classButtonBuyNow {
             background-color: #4CAF50;
             border: 1px solid black;
             border-radius:10px;
             color: white;
             padding: 7px 24px; 
             text-align: center;
             text-decoration: none;
             display: inline-block;
             font-size: 16px;
             margin-left:5px;
             cursor: pointer;
         }

        .classButtonBuyNow:hover {
             opacity:0.9;
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
    <!--google icons-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
</head>
<body>
    <form id="idFormProductFeaturesPage" runat="server" style="display: inline; background-color: transparent;">


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
    </form>

    
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
    

                <%-- product features main content --%>
                <div class="classDivProductFeatureMainContent">
                    <table class="classTableProductFeatureMainContent" >
                        <tr>
                            <td class="classTableTdPageHeading" colspan="2">
                                <strong>Product Features</strong>
                            </td>
                        </tr>
                        <tr class="classTableTdProductFeatureMainContent">
                            <td class="classTableTdProductFeatureMainContent">
                                <img class="classImgHeroImage" alt="James_Laptop" src="Image/james_laptop_hero_image.svg" />
                                <br/>
                                <label class="classLabelPriceTag">
                                    <strong>RM2500.00</strong>
                                </label>
                                <br/><br/>
                                <input id="idButtonBuyNow" class="classButtonBuyNow" type="button" value="Buy Now" />
                        
                                <script type="text/javascript">

                                    document.getElementById("idButtonBuyNow").onclick = function () {
                                        location.href = "Checkout.aspx";
                                    };
                                </script>

                            </td>
                            <td>
                                <%-- product features description section --%>
                                <div class="classDivProductFeaturesDescription">
          
                                    <button class="accordion"><strong>Feature 1: Great Display</strong></button>
                                    <div class="panel">
                                          <table class="classTableFeature" >
                                              <tr>
                                                  <td class="classTableTdFeatureCol1">
                                                      <img class="classImgFeature1" alt="feature1_great_display" src="image/feature1_great_display.svg" />
                                                  </td>
                                                  <td class="classTableTdFeatureCol2">
                                                      Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet ex ac neque porttitor tincidunt ut et purus. Nam tincidunt, odio fermentum laoreet tincidunt, nibh diam sollicitudin nisl, sed eleifend risus urna sit amet est.
                                                  </td>
                                        
                                              </tr>
                                          </table>
                                    </div>

                                    <button class="accordion"><strong>Feature 2: Great Laptop Specification</strong></button>
                                    <div class="panel">
                                      <table class="classTableFeature" >
                                            <tr>
                                                <td class="classTableTdFeatureCol1">
                                                    <img class="classImgFeature1" alt="feature2_great_laptop_specification" src="image/feature2_great_laptop_specification.svg" />
                                                </td>
                                                <td class="classTableTdFeatureCol2">
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet ex ac neque porttitor tincidunt ut et purus. Nam tincidunt, odio fermentum laoreet tincidunt, nibh diam sollicitudin nisl, sed eleifend risus urna sit amet est.
                                                </td>
      
                                            </tr>
                                        </table>
                                    </div>

                                    <button class="accordion"><strong>Feature 3: Environmental Friendly Material</strong></button>
                                    <div class="panel">
                                        <table class="classTableFeature" >
                                          <tr>
                                              <td class="classTableTdFeatureCol1">
                                                  <img class="classImgFeature1" alt="feature3_environmental_friendly_material" src="image/feature3_environmental_friendly_material.svg" />
                                              </td>
                                              <td class="classTableTdFeatureCol2">
                                                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sit amet ex ac neque porttitor tincidunt ut et purus. Nam tincidunt, odio fermentum laoreet tincidunt, nibh diam sollicitudin nisl, sed eleifend risus urna sit amet est.
                                              </td>
      
                                          </tr>
                                      </table>
                                    </div>



                                    <script type="text/javascript">
                                        //***********************************
                                        //accordion - product description js
                                        var acc = document.getElementsByClassName("accordion");
                                        var i;

                                        for (i = 0; i < acc.length; i++) {
                                            acc[i].addEventListener("click", function () {
                                                this.classList.toggle("active");
                                                var panel = this.nextElementSibling;
                                                if (panel.style.maxHeight) {
                                                    panel.style.maxHeight = null;
                                                } else {
                                                    panel.style.maxHeight = panel.scrollHeight + "px";
                                                }
                                            });
                                        }
                                    </script>
                               


                                </div>
                            </td>
                        </tr>
                 
                    </table>
                </div>


        

            <%-- footer --%>
            <div id="idDivFooter" class="classDivFooter">
                <footer>
                    <label>
                        <!--<h6>&copy; Student Registration Application</h6>-->
                        <i><strong>&copy; James Laptop eCommerce Website</strong></i>
                    </label>
                </footer>
            </div>
        </div>










        <%-- section div right side --%>
        <div id="idRightDivBox" class="classRightDivBox">
        </div>



   
    
</body>
</html>
