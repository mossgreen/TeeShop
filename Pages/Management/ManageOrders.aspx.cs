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
            FillPage(id);
            ID = id;
        }
    }

    private void FillPage(int id)
    {
        //Get selected order from DB
        OrderModel orderModel = new OrderModel();
        Order order = new Order();

        //set value to ddl
        ddlStatus.SelectedValue = order.Status;
        
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