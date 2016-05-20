using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Management_ManageOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        OrderModel orderModel = new OrderModel();
        Order order = CreateOrder();



        lblResult.Text = orderModel.InsertOrder(order);
    }

    private Order CreateOrder()
    {
        Order o = new Order();
        o.Status = ddlStatus.SelectedValue.ToString();

        return o;
    }
}