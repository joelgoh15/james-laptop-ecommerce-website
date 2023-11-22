using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio2_3
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString;
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AppDBConnectionString"].ConnectionString;
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
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {
                    idDropDownListSubscription.SelectedValue = (from subscriptionNotificationTable in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                                                where subscriptionNotificationTable.Id == 1
                                                                select subscriptionNotificationTable.SubscriptionStatus).FirstOrDefault();
                }
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {
                    idDropDownListNotification.SelectedValue = (from subscriptionNotificationTable in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                                                where subscriptionNotificationTable.Id == 1
                                                                select subscriptionNotificationTable.NotificationStatus).FirstOrDefault();
                }
            }
        }

        protected void idDropDownListSubscription_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connectionString;
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AppDBConnectionString"].ConnectionString;
            if (idDropDownListSubscription.SelectedItem.Text == "True")
            {     
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {   
                    SubscriptionNotificationTable subscriptionNotificationTable = (from subscriptionNotificationTable1 in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                                                                    where subscriptionNotificationTable1.Id == 1
                                                                                    select subscriptionNotificationTable1).FirstOrDefault();
                    subscriptionNotificationTable.SubscriptionStatus = idDropDownListSubscription.SelectedItem.Text;
                    subscriptionNotificationTable.NotificationStatus = idDropDownListNotification.SelectedItem.Text;
                    appDB_DataClassesDataContext.SubmitChanges();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                      "ShowSubscribeToSubscriptionModalBox();", true);
            }
            else if (idDropDownListSubscription.SelectedItem.Text == "False") 
            {
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {
                    SubscriptionNotificationTable subscriptionNotificationTable = (from subscriptionNotificationTable1 in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                                                                   where subscriptionNotificationTable1.Id == 1
                                                                                   select subscriptionNotificationTable1).FirstOrDefault();
                    subscriptionNotificationTable.SubscriptionStatus = idDropDownListSubscription.SelectedItem.Text;
                    subscriptionNotificationTable.NotificationStatus = idDropDownListNotification.SelectedItem.Text;
                    appDB_DataClassesDataContext.SubmitChanges();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                      "ShowUnsubscribeToSubscriptionModalBox();", true);
            }
        }

        protected void idDropDownListNotification_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connectionString;
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AppDBConnectionString"].ConnectionString;
            if (idDropDownListNotification.SelectedItem.Text == "True")
            {
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {
                    SubscriptionNotificationTable subscriptionNotificationTable = (from subscriptionNotificationTable1 in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                                                                   where subscriptionNotificationTable1.Id == 1
                                                                                   select subscriptionNotificationTable1).FirstOrDefault();
                    subscriptionNotificationTable.SubscriptionStatus = idDropDownListSubscription.SelectedItem.Text;
                    subscriptionNotificationTable.NotificationStatus = idDropDownListNotification.SelectedItem.Text;
                    appDB_DataClassesDataContext.SubmitChanges();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                      "ShowSubscribeToNotificatonModalBox();", true);
            }
            else if (idDropDownListNotification.SelectedItem.Text == "False") 
            {
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {
                    SubscriptionNotificationTable subscriptionNotificationTable = (from subscriptionNotificationTable1 in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                                                                   where subscriptionNotificationTable1.Id == 1
                                                                                   select subscriptionNotificationTable1).FirstOrDefault();
                    subscriptionNotificationTable.SubscriptionStatus = idDropDownListSubscription.SelectedItem.Text;
                    subscriptionNotificationTable.NotificationStatus = idDropDownListNotification.SelectedItem.Text;
                    appDB_DataClassesDataContext.SubmitChanges();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                      "ShowUnsubscribeToNotificatonModalBox();", true);
            }
        }
    }
}
