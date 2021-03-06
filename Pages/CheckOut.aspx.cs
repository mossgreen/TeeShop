﻿using Microsoft.AspNet.Identity;
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
        //firstly, use server transfer to get totalamout from shoppingCart page
        string totalAmount = "";
        Application.Lock();
        totalAmount = Application["totalAmount"].ToString();
        Application.UnLock();

        //than,  get id of current logged in user and display items in Cart
        string userId = User.Identity.GetUserId();

        //generate a new order and store it in database
        Order order = new Order
        {
            ClientId = userId,
            OrderDate = (DateTime.Now).ToString(),
            Status = "pendding",
            TotalAmount = totalAmount,
        };

        OrderModel orderModel = new OrderModel();
        string orderId = orderModel.InsertOrder(order);

        ClientModel clientModel = new ClientModel();
        Client client = clientModel.GetClient(userId);

        if (client != null)
        {
            lblClientName.Text = client.UserName.ToString();
            lblOrderId.Text = orderId.ToString();
            lblDate.Text = order.OrderDate.ToString();
            lblStatus.Text = order.Status;
            lblAmount.Text = order.TotalAmount.ToString();
        }
        else
        {
            lblStatus.Text = "this user is banned to shopping.";
        }


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