using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

public partial class Pages_Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.
            ConnectionStrings["TeeShopConnectionString"].ConnectionString;

        UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

        var user = manager.Find(txtUserName.Text, txtPassword.Text);

        if (user != null)
        {
            //Call OWIN functionality
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            //Sign in user
            authenticationManager.SignIn(new AuthenticationProperties
            {
                IsPersistent = false
            }, userIdentity);

            ClientModel clientModel = new ClientModel();
            Client client = clientModel.GetClient(user.Id);

            if (client.IsActive == 0)
            {
                litStatus.Text = "this clientId has been disabled by admin.";

            }
            else
            {
                //Redirect user to homepage
                Response.Redirect("~/Index.aspx");
            }
        }
        else
        {
            litStatus.Text = "Invalid username or password";
        }
    }
}