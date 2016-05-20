using System;
using System.Web;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var user = Context.User.Identity;
        if (user.IsAuthenticated)
        {
            LnkLogin.Visible = false;
            lnkRegister.Visible = false;

            litStatus.Visible = true;
            btnLogout.Visible = true;

            //CartModel model = new CartModel();
            //string userId = HttpContext.Current.User.Identity.GetUserId();
            //lnkStatus.Text = string.Format("{0} ({1})", Context.User.Identity.Name, model.GetAmountOfOrders(userId));
        }
        else
        {
            LnkLogin.Visible = true;
            lnkRegister.Visible = true;

            litStatus.Visible = false;
            btnLogout.Visible = false;
        }
    }



    protected void btnLogout_Click(object sender, EventArgs e)
    {
        IAuthenticationManager authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
        authenticationManager.SignOut();
        Response.Redirect("~/Pages/Account/Login.aspx");
    }
}