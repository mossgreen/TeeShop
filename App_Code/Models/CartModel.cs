using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartModel
/// </summary>
public class CartModel
{
    public string InsertCart(Cart cart)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            db.Carts.Add(cart);
            db.SaveChanges();

            return cart.DatePurchased + " was succesfully inserted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string UpdateCart(int id, Cart cart)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();

            //Fetch object from db
            Cart p = db.Carts.Find(id);

            p.DatePurchased = cart.DatePurchased;
            p.ClientID = cart.ClientID;
            p.Amount = cart.Amount;
            p.IsInCart = cart.IsInCart;
            p.ProductID = cart.ProductID;

            db.SaveChanges();
            return cart.DatePurchased + " was succesfully updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string DeleteCart(int id)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            Cart cart = db.Carts.Find(id);

            db.Carts.Attach(cart);
            db.Carts.Remove(cart);
            db.SaveChanges();

            return cart.DatePurchased + "was succesfully deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public List<Cart> GetOrdersInCart(string clientId)
    {
        TeeShopEntities db = new TeeShopEntities();
        List<Cart> orders = (from x in db.Carts
                             where x.ClientID == clientId
                             && x.IsInCart
                             orderby x.DatePurchased descending
                             select x).ToList();
        return orders;
    }

    public int GetAmountOfOrders(string clientId)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            int amount = (from x in db.Carts
                          where x.ClientID == clientId
                          && x.IsInCart
                          select x.Amount).Sum();

            return amount;
        }
        catch
        {
            return 0;
        }
    }

    public void UpdateQuantity(int id, int quantity)
    {
        TeeShopEntities db = new TeeShopEntities();
        Cart p = db.Carts.Find(id);
        p.Amount = quantity;

        db.SaveChanges();
    }

    public void MarkOrdersAsPaid(List<Cart> carts)
    {
        TeeShopEntities db = new TeeShopEntities();

        if (carts != null)
        {
            foreach (Cart cart in carts)
            {
                Cart oldCart = db.Carts.Find(cart.ID);
                oldCart.DatePurchased = DateTime.Now;
                oldCart.IsInCart = false;
            }
            db.SaveChanges();
        }
    }

    public List<Cart> GetAllCarts()
    {
        try
        {
            using (TeeShopEntities db = new TeeShopEntities())
            {
                List<Cart> carts = (from x in db.Carts
                                          select x).ToList();
                return carts;
            }
        }
        catch (Exception)
        {

            return null;
        }
    }
}