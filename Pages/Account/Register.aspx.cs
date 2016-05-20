using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

public partial class Pages_Account_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnRegister_Click(object sender, EventArgs e)
    {

        // Default UserStore constructor uses the default connection string named: DefaultConnection
        var userStore = new UserStore<IdentityUser>();

        //Set ConnectionString to GarageConnectionString
        userStore.Context.Database.Connection.ConnectionString =
            System.Configuration.ConfigurationManager.ConnectionStrings["TeeShopConnectionString"].ConnectionString;
        var manager = new UserManager<IdentityUser>(userStore);

        IdentityUser user = new IdentityUser();
        user.UserName = txtUserName.Text;



        ////Create new user and try to store in DB.
        //var user = new IdentityUser { UserName = txtUserName.Text };

        if (txtPassword.Text == txtConfirmPassword.Text)
        {
            try
            {
                IdentityResult result = manager.Create(user, txtPassword.Text);
                if (result.Succeeded)
                {
                    //    Customer customer = new Customer
                    //    {
                    //        UserName = txtUserName.Text,
                    //        Email = txtEmail.Text,
                    //        PhoneType = ddlPhoneType.SelectedValue.ToString(),
                    //        PhoneNumber = Convert.ToInt32(txtPhoneNumber.Text),
                    //        GUID = user.Id,
                    //    };

                    //    CustomerModel customerModel = new CustomerModel();
                    //    customerModel.InsertCustomer(customer);

                    //Store user in DB
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    //If succeedeed, log in the new user and set a cookie and redirect to homepage
                    authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                    Response.Redirect("~/Index.aspx");
                }
                else
                {
                    litStatus.Text = result.Errors.FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                litStatus.Text = ex.ToString();
            }
        }
        else
        {
            litStatus.Text = "Passwords must match!";
        }
    }

}