using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio2_3
{
    public partial class PurchaseSuccessful : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] roleNames = Roles.GetRolesForUser();
                if (roleNames[0] == "admin")
                {
                    idALinkAdminPage.Visible = true;
                }
                else
                {
                    idALinkAdminPage.Visible = false;
                }
            }
        }
    }
}
