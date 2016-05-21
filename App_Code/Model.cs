﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Cart
{
    public int ID { get; set; }
    public string ClientID { get; set; }
    public int ProductID { get; set; }
    public int Amount { get; set; }
    public Nullable<System.DateTime> DatePurchased { get; set; }
    public bool IsInCart { get; set; }

    public virtual Product Product { get; set; }
}

public partial class Client
{
    public int ID { get; set; }
    public string GUID { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    public string Email { get; set; }
    public string PhoneNumber { get; set; }
    public string PhoneType { get; set; }
    public string Address { get; set; }
    public Nullable<int> IsActive { get; set; }
}

public partial class Order
{
    public int ID { get; set; }
    public string ClientId { get; set; }
    public string OrderDate { get; set; }
    public string Status { get; set; }
    public string TotalAmount { get; set; }
}

public partial class Product
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Product()
    {
        this.Carts = new HashSet<Cart>();
    }

    public int ID { get; set; }
    public int TypeID { get; set; }
    public string Name { get; set; }
    public double Price { get; set; }
    public string Description { get; set; }
    public string Image { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Cart> Carts { get; set; }
    public virtual ProductType ProductType { get; set; }
}

public partial class ProductType
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public ProductType()
    {
        this.Products = new HashSet<Product>();
    }

    public int ID { get; set; }
    public string Name { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Product> Products { get; set; }
}

public partial class Supplier
{
    public int Id { get; set; }
    public string ProductName { get; set; }
    public string Name { get; set; }
    public string PhoneNumber { get; set; }
    public string Email { get; set; }
}
