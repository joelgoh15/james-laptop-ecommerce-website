using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Web.Security;


namespace Portfolio2_3
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //enable admin page selction base on user role
                string[] roleNames = Roles.GetRolesForUser();
                if (roleNames[0] == "admin")
                {
                    idALinkAdminPage.Visible = true;
                }
                else
                {
                    idALinkAdminPage.Visible = false;
                }


                //if first time page loading
                idNameOnCardTextBox.Focus();
            }
        }

        protected void idButtonCancel_Click(object sender, EventArgs e)
        {
            //button settings has been done to clear required field validation
            //error message

            //clear payment fields
            idNameOnCardTextBox.Text = string.Empty;
            idCreditCardNumberTextBox.Text = string.Empty;
            idExpMonthTextBox.Text = string.Empty;
            idCVVTextBox.Text = string.Empty;
            idExpYearTextBox.Text = string.Empty;

            //clear billing address fields 
            idFullNameTextBox.Text = string.Empty;
            idEmailTextBox.Text = string.Empty;
            idAddressTextBox.Text = string.Empty;
            idCityTextBox.Text = string.Empty;
            idZipCodeTextBox.Text = string.Empty;
            idStateTextBox.Text = string.Empty;

            //set focus to name on card textbox
            idNameOnCardTextBox.Focus();

        }

        protected void idButtonCheckout_Click(object sender, EventArgs e)
        {
            Validate();

            if (IsValid)
            {

                ListDictionary insertParameters = new ListDictionary();

                //code to get value of number of laptop ordered
                string strLaptopQuantity = Request.Form["nameQuantityTextBox"];
                //code to get total cost of laptop ordered
                string strTotalFee = Request.Form["nameTextBoxTotalCost"];

                //payment details section
                insertParameters.Add("DateTime", DateTime.Now.ToString());
                insertParameters.Add("NameOnCard", idNameOnCardTextBox.Text);
                insertParameters.Add("CreditCardNo", idCreditCardNumberTextBox.Text);
                insertParameters.Add("ExpMonth", idExpMonthTextBox.Text);
                insertParameters.Add("CVV", idCVVTextBox.Text);
                insertParameters.Add("ExpYear", idExpYearTextBox.Text);

                //billing details section
                insertParameters.Add("FullName", idFullNameTextBox.Text);
                insertParameters.Add("Email", idEmailTextBox.Text);
                insertParameters.Add("Address", idAddressTextBox.Text);
                insertParameters.Add("City", idCityTextBox.Text);
                insertParameters.Add("ZipCode", idZipCodeTextBox.Text);
                insertParameters.Add("State", idStateTextBox.Text);
                insertParameters.Add("LaptopQuantity", strLaptopQuantity);
                insertParameters.Add("TotalFee", strTotalFee);

                CheckoutLinqDataSource.Insert(insertParameters);

                Response.Redirect("PurchaseSuccessful.aspx");
                

            }
            
            


            
        }





    }//end-class
}//end-namespace