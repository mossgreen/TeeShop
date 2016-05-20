using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ClientModel
/// </summary>
public class ClientModel
{

    public Client GetCustomer(string guId)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            CustomerModel customerModel = new CustomerModel();

            var customer = (from x in db.Clients
                            where x.GUID == guId
                            select x).FirstOrDefault();

            return customer;

        }
        catch (Exception e)
        {
            return null;
        }
    }


    public string InsertClient(Client client)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            db.Clients.Add(client);
            db.SaveChanges();

            return client.UserName + " was succesfully inserted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }


    public string UpdateClient(int id, Client client)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();

            //Fetch object from db
            Client c = db.Clients.Find(id);

            c.UserName = client.UserName;
            c.ID = client.ID;
            c.Email = client.Email;
            c.PhoneNumber = client.PhoneNumber;
            c.PhoneType = client.PhoneType;
            c.Address = client.Address;

            db.SaveChanges();
            return c.UserName + " was succesfully updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public string DeleteClient(int id)
    {
        try
        {
            TeeShopEntities db = new TeeShopEntities();
            Client c = db.Clients.Find(id);

            db.Clients.Attach(c);
            db.Clients.Remove(c);
            db.SaveChanges();

            return c.UserName + " was succesfully deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public List<Client> GetAllCustomers()
    {
        try
        {
            using (TeeShopEntities db = new TeeShopEntities())
            {
                List<Client> clients = (from x in db.Clients
                                          select x).ToList();
                return clients;
            }

        }
        catch (Exception e)
        {
            return null;
        }
    }
}