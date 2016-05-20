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

        ClientModel clientModel = new ClientModel();
        Client client = clientModel.GetClient(userId);


        lblClientName.Text = client.UserName;
        lblOrderId.Text = order.ID.ToString();
        lblDate.Text = order.OrderDate.ToString();
        lblStatus.Text = order.Status;
        lblAmount.Text = order.TotalAmount.ToString();
    }


    protected void lnkContinue_Click(object sender, EventArgs e)
    {

        CartModel cartModel = new CartModel();
        List<Cart> carts = cartModel.GetAllCarts();      
        foreach (Cart cart in carts)
        {
            int id = cart.ID;
            cartModel.DeleteCart(id);
        }

        Response.Redirect("~/Index.aspx");
    }
}