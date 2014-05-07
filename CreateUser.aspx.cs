using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CreateUserWizard1.ContinueDestinationPageUrl = "Default.aspx";
    }
    protected void Click(object sender, EventArgs e)
    {
        Roles.AddUserToRole(User.Identity.Name, "RegularUser");
    }

}