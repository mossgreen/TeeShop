using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Data;
using System.Web.Security;
using System.Net.Mail;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Net;

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


        ////Create new user and try to store in DB.
        IdentityUser user = new IdentityUser();
        user.UserName = txtUserName.Text;

        if (txtPassword.Text == txtConfirmPassword.Text)
        {
            try
            {
                IdentityResult result = manager.Create(user, txtPassword.Text);
                if (result.Succeeded)
                {
                    Client client = new Client
                    {
                        UserName = txtUserName.Text,
                        Email = txtEmail.Text,
                        PhoneType = ddlPhoneType.SelectedValue.ToString(),
                        PhoneNumber = (txtPhoneNumber.Text).ToString(),
                        GUID = user.Id,
                        Address = txtAddress.Text,
                    };

                    ClientModel clientModel = new ClientModel();
                    clientModel.InsertClient(client);

                    //Store user in DB
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    //If succeedeed, log in the new user and set a cookie and redirect to homepage
                    authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                    SendMail(client.UserName, client.Email);

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

    protected override void OnError(EventArgs e)
    {
        Exception ex = Server.GetLastError();
        Session["ExceptionObject"] = ex;
        //Server.ClearError();
        //Server.Transfer("~/Pages/DisplayErrors.aspx?from=RegistrationPage");
    }

    public void SendMail(string name, string email)
    {
        MailAddress toAddress = new MailAddress(email);
        MailAddress fromAddress = new MailAddress("unfeifei@gmail.com");
        MailMessage message = new MailMessage(fromAddress, toAddress);
        message.Subject = "Welcome letter from QTee, Q fro quality!";
        message.Body = string.Format("Hi,{0}, welcome to join QTee", name);
        SmtpClient mailClient = new SmtpClient();
        try
        {
            mailClient.Host = "localhost";
            mailClient.Send(message);
        }
        catch (SmtpException smtpEx)
        {
            Response.Write("Email is not sent due to system error: " + smtpEx.Message);
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }

    }


}