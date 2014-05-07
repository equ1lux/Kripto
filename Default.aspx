<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <p>You are not logged in!</p>
                <p><a href="Login.aspx">Log in</a> </p>
                <p><a href="CreateUser.aspx">Sign Up</a></p>
                <p><a href="ForgotPassword.aspx">Forgot your Password?</a></p>
            </AnonymousTemplate>
            <LoggedInTemplate>
              <center><div id="login">
                You are logged in as: 
                <asp:LoginName ID="LoginName1" runat="server" />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
               </div></center>

               <asp:Menu ID="Menu2" Runat="server" DataSourceID="SiteMapDataSource1" Orientation="Vertical" 
               StaticDisplayLevels="3" >
                </asp:Menu>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            </LoggedInTemplate>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
