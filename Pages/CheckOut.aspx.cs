using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();
    }

    private void FillPage()
    {
        //get id of current logged in user and display items in Cart
        string userId = User.Identity.GetUserId();

        OrderModel orderModel = new OrderModel();
        Order order = orderModel.GetOrder(userId);

        lblName.Text = userId;
        lblNumber.Text = order.ID.ToString();
        lblDate.Text = order.OrderDate.ToString();
        lblStatus.Text = order.Status;
        lblAmount.Text = order.TotalAmount.ToString();




    }
    
}