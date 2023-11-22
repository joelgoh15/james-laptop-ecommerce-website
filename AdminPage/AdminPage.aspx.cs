using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio2_3
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString;
                connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AppDBConnectionString"].ConnectionString;
                string userSubscription;
                userSubscription = string.Empty;
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {
                    userSubscription = (from subscriptionNotificationTable in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                                                where subscriptionNotificationTable.Id == 1
                                                                select subscriptionNotificationTable.SubscriptionStatus).FirstOrDefault();
                    idLabelUserSubscriptionStatusDb.Text = userSubscription;
                }
                string userNotification;
                userNotification = string.Empty;
                using (AppDB_DataClassesDataContext appDB_DataClassesDataContext = new AppDB_DataClassesDataContext(connectionString))
                {
                    userNotification = (from subscriptionNotificationTable in appDB_DataClassesDataContext.SubscriptionNotificationTables
                                        where subscriptionNotificationTable.Id == 1
                                        select subscriptionNotificationTable.NotificationStatus).FirstOrDefault();
                    idLabelUserNotficationStatusDb.Text= userNotification;
                }
            }
        }
    }
}
