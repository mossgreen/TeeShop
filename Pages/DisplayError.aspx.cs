using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_DisplayError : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Clear();

        Exception ex = Application["ExceptionObject"] as Exception;

        lblLabel2.Text = Request.QueryString["from"];

        lblLabel3.Text = ex.HelpLink;

        if (ex.InnerException != null)
        {

            lblLabel4.Text = ex.InnerException.Message;

        }

        lblLabel5.Text = ex.Message;

        lblLabel6.Text = ex.Source;

        lblLabel7.Text = ex.StackTrace;

        lblLabel8.Text = ex.TargetSite.Name;
    }
}