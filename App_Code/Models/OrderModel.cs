using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OrderModel
/// </summary>
public class OrderModel
{
    public string InsertOrder(Order order)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            db.Orders.Add(order);
            db.SaveChanges();

            return order.ID.ToString();
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdateOrder(int id, Order order)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();

            //Fetch object from db
            Order o = db.Orders.Find(id);

            o.ClientId = order.ClientId;
            o.Status = order.Status;
            o.TotalAmount = order.TotalAmount;
            o.OrderDate = order.OrderDate;

            db.SaveChanges();
            return order.ID + " was successfully updated!";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string ChangeOrderStatus(int id, Boolean boolean)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();

            //Fetch object from db
            Order o = db.Orders.Find(id);
            if(boolean == true)
            {
                o.Status = "delivered";
            }
            else
            {
                o.Status = "pendding";
            }


            

            db.SaveChanges();
            return o.ID + " was successfully updated!";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public Order GetOrder( int OrderId)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            OrderModel orderModel = new OrderModel();

            var order = (from x in db.Orders
                            where x.ID == OrderId
                            select x).FirstOrDefault();

            return order;

        }
        catch (Exception ex)
        {
            return null;
        }
    }

    public string DeleteOrder(int id)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            Order order = db.Orders.Find(id);

            db.Orders.Attach(order);
            db.Orders.Remove(order);
            db.SaveChanges();

            return order.ID + " was successfully delected!";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
}