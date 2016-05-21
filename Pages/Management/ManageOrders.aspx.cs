using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Management_ManageOrders : System.Web.UI.Page
{
    int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Check if the url contains an id parameter
        if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string clientId = Context.User.Identity.GetUserId();


            //Get selected order from DB
            OrderModel orderModel = new OrderModel();
            Order order = orderModel.GetOrder(id);

            //set value to ddl
            lblOrderId.Text = order.ID.ToString();
            ddlStatus.SelectedValue = order.Status;
            ID = id;
 
        }
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        OrderModel orderModel = new OrderModel();
        Boolean selected = Convert.ToBoolean(ddlStatus.SelectedValue);

      
        lblResult.Text = orderModel.ChangeOrderStatus(ID, selected);
    }

    private Order CreateOrder()
    {
        Order o = new Order();
       
        o.Status = ddlStatus.SelectedValue.ToString();

        return o;
    }
}