using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Management_ManageSuppliers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Check if the url contains an id parameter
        if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            //Get selected supplier from DB
            SupplierModel supplierModel = new SupplierModel();
            Supplier supplier = supplierModel.GetSupplier(id);

            //set value to page
            txtEmail.Text = supplier.Email.ToString();
            txtName.Text = supplier.ProductName.ToString();
            txtPhoneNumber.Text = supplier.PhoneNumber.ToString();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SupplierModel supplierModel = new SupplierModel();
        Supplier supplier = new Supplier
        {
            Id = 1,
            ProductName = ddlProductId.SelectedValue,
            Email = txtEmail.Text,
            PhoneNumber = txtPhoneNumber.Text,
            Name = txtName.Text,
       
        };
        lblResult.Text = supplierModel.InsertSupplier(supplier);
    }
}