<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Portfolio2_3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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

        span.material-icons {
        }

        i.classBrandName {
            position:relative;
            top:-5px;
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

        div.classDivCheckoutPageMainContent {
            width:100%;
            height:400px; 
            float:left;
            display:block;
            border: 1px solid black;
            margin-top:10px;
            border-radius:10px;
        }

        table.classTableCheckoutPageMainContent {
            width: 100%;
            /*border:1px solid black;*/
        }

        table.classTableCheckoutPageMainContent td {
            /*border:1px solid black;*/
        }

        div.classDivLoginItem {
            width:fit-content;
            height:fit-content;
            padding:20px;
            border:2px solid black;
            border-radius:10px;
            margin-left:5px;
            margin-top:5px;
        }

        div.classDivHolderTextRightSide {
            width:fit-content;
            height:fit-content;
            /*border: 1px solid black;*/
            margin-left:5px;
            margin-top:5px;

        }

        label.classLabelBrandName {
            font-family:Calibri;
            font-size:72px;
        }

        label.classLabelBrandName2 {
            font-family:Calibri;
            font-size:32px;
        }


        /* **************************** */
        /* style for login control */
        /* start */

        .cssClassLoginButton {
            background-color: white;
            border: 2px solid #4CAF50;
            color: #4CAF50;
            padding: 9px 26px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            font-family:Calibri;
            margin: 4px 2px;
            margin-right:7px;
            cursor: pointer;
        }

        .cssClassTextBoxStyle {
            border-radius:5px;
            margin-left:5px;
            /*border: 5px solid black;*/
        }

        /* end */
        /* style for login control */
        /* **************************** */

        label.classLabelLoginPageContentSub2 {
        
            font-family:Calibri;
            font-size:24px;

        }

        div.classDivBoxLoginAsUser {
            width:fit-content;
            height:fit-content;
            border: 1px solid black;
            border-radius:10px;
            padding-left:10px;
            padding-right:15px;
            padding-top:10px;
            padding-bottom:10px;
            background-color:#99b3ff;
            margin-bottom:5px;
            margin-left:5px;
            
        }

        .classSummary {
            font-family:Calibri;
            font-size:16px;
            font-weight:bold;
        }

        label.classLabelUsernameUser {
            font-family:Calibri;
            font-size:14px;
            /*padding-left:10px;*/
        }

        label.classLabelPasswordUser {
            font-family:Calibri;
            font-size:14px;
        }

        div.classDivBoxLoginAsAdmin {
            width:fit-content;
            height:fit-content;
            border: 1px solid black;
            border-radius:10px;
            padding-left:10px;
            padding-right:15px;
            padding-top:10px;
            padding-bottom:10px;
            background-color:#b3cccc;
            margin-left:5px;
            
        }

    </style>
    <script type="text/javascript">
    </script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
</head>
<body>
    
    <div id="idLeftDivBox" class="classLeftDivBox">
    </div>

    <div id="idCentreDivBox" class="classCentreDivBox">
        
        <%-- Login Page Header --%>
        <div id="idHeaderDiv" class="classHeaderDiv">
            <label id="idLabelAppName" class="classLabelAppName">
                <span class="material-icons">laptop</span>
                <i class="classBrandName">JamesLaptop</i>
            </label>
        </div>
    
        <%-- ********************* --%>
        <%-- Login Page Content --%>
        <%-- ********************* --%>
        
        

        <div class="classDivCheckoutPageMainContent">
            <table class="classTableCheckoutPageMainContent">
                <tr>
                    <td style="width:40%;">
                        <form id="idFormLoginPage" runat="server" style="display: inline; background-color: transparent;">
                            <div class="classDivLoginItem">
                                
                                <asp:Login ID="Login1" runat="server" TitleText="Log-In" UserNameLabelText="Username:" DisplayRememberMe="False" EnableTheming="False" LoginButtonText="Login" RenderOuterTable="False" ViewStateMode="Inherit"  OnLoggedIn="Login1_LoggedIn">
                                    <CheckBoxStyle BorderStyle="None" BorderWidth="0px" Font-Names="Calibri" Font-Size="16px" Wrap="False"  />
                                    <HyperLinkStyle BorderStyle="None" BorderWidth="0px" />
                                    <InstructionTextStyle BorderStyle="None" BorderWidth="0px" />
                                    <LabelStyle BorderStyle="None" BorderWidth="0px"  Font-Names="Calibri" Font-Size="16px"/>
                                    <FailureTextStyle BorderStyle="None" BorderWidth="0px" Font-Names="Calibri" Font-Size="12px" ForeColor="red" Font-Italic="true"  />
                                    <LoginButtonStyle CssClass="cssClassLoginButton" BorderStyle="Solid" BorderWidth="1px" />
                                    <TextBoxStyle CssClass="cssClassTextBoxStyle" Width="200px" Height="30px"  BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" Font-Names="Calibri" Font-Size="16px" ForeColor="Black" />
                                    <TitleTextStyle BorderStyle="None" BorderWidth="0px" Font-Bold="True" Font-Names="Calibri" Font-Size="18px" ForeColor="Black" HorizontalAlign="Center" />
                                    <ValidatorTextStyle BorderStyle="None" BorderWidth="0px" />
                                </asp:Login>
                            </div>
                        </form>
                    </td>
                    <td style="width:60%; vertical-align:top;">
                        <div class="classDivHolderTextRightSide">
                            <label class="classLabelBrandName">
                                <strong><i><u>JamesLaptop</u></i></strong>
                            </label>
                            <br/>
                            <label class="classLabelBrandName2">
                                <i>eCommerce Website</i>
                            </label>
                        </div>
                        
                        
                        
                        <%--<label class="classLabelLoginPageContentSub2">
                            <strong><u><i>JamesLaptop</i></u> eCommerce Website</strong>
                        </label>--%>

                    </td>
                </tr>
                <tr>
                    <td style="width:40%; height:fit-content;">

                        <%-- design for to login as user --%>
                        <div class="classDivBoxLoginAsUser">
                            <details>
                                <summary class="classSummary">To login as User:</summary>
                                <div>
                                    <label class="classLabelUsernameUser">username: user01</label> <br />
                                    <label class="classLabelPasswordUser">password: user01password@01</label>
                                </div>
                            </details>
                        </div>

                        <%-- design for to login as admin --%>
                        <div class="classDivBoxLoginAsAdmin">
                            <details>
                                <summary class="classSummary">To login as Admin:</summary>
                                <div>
                                    <label class="classLabelUsernameUser">username: admin01</label> <br />
                                    <label class="classLabelPasswordUser">password: admin01password@01</label>
                                </div>
                            </details>
                        </div>
                       


                    </td>
                    <td style="width:60%;"></td>
                </tr>
            </table>
        </div>




        <%-- Login Page Footer --%>
        <div id="idDivFooter" class="classDivFooter">
        <footer>
            <label>
                <!--<h6>&copy; Student Registration Application</h6>-->
                <i><strong>&copy; James Laptop eCommerce Website</strong></i>
            </label>
        </footer>
        </div>



    </div>







    <div id="idRightDivBox" class="classRightDivBox">
    </div>


</body>
</html>
