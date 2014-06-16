using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username;
        username = User.Identity.Name;
        Label1.Text = "Welcome " + username;
        HttpClientCertificate cert = Request.ClientCertificate;
        if (cert.IsPresent)
        {
            Label2.Text = "Client certificate retrieved";
        }
        else
        {
            Label2.Text = "No client certificate";
        }

    }
}