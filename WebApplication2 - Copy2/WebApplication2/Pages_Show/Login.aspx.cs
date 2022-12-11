using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Pages_pro;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2.Pages_Show
{
    public partial class Login : System.Web.UI.Page
    {
        db_control db = new db_control();
        DataClasses1DataContext dc = new DataClasses1DataContext();
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Full_NAME"] = txt_username.Text;
            Session["TYPE_EMP"] = null;//for direct page specific
        }

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            string username = txt_username.Text;
            string password = txt_password.Text;

            if (string.IsNullOrEmpty(txt_username.Text))
            {
                Response.Write("<script>alert('you must enter username !!');</script>");             
            }
            if (string.IsNullOrEmpty(txt_password.Text))
            {
                Response.Write("<script>alert('you must enter password !!');</script>");
            }

            db.connect_db();
            //fectch employee name
            var test_login_emp = from n in dc.users_tbs
                                 where n.USERNAME == username && n.PASSWORD == password
                                 select n.FULL_NAME;         
            string fname = "";            
            int result_qurey = test_login_emp.Count();
            foreach (var item in test_login_emp)
            {
                fname = item.ToString();
                Response.Write("<script>alert('"+fname+" !!');</script>"); 
            }

            //fectch employee type
            var test_login_emp2 = from n in dc.users_tbs
                                 where n.USERNAME == username && n.PASSWORD == password
                                 select n.AUTHORISE;
            string ty_em = "";
            int result_qurey2 = test_login_emp2.Count();
            foreach (var item in test_login_emp2)
            {
                ty_em = item.ToString();
                Response.Write("<script>alert('" + ty_em + " !!');</script>");
            }
            Response.Write("<script>alert('" + ty_em + " !!');</script>");
            string x = "admin";
            if (ty_em==x)
            {
                Session["TYPE_EMP"] = ty_em;
                Session["Full_NAME"] = fname;
                Response.Write("<script>alert(' Good !!');</script>");
                Response.Redirect("DashboardAdmin.aspx");
            }
            else if (ty_em == "Emp_categore")
            {
                Session["TYPE_EMP"] = ty_em;
                Session["Full_NAME"] = fname;
                Response.Redirect("CategorePage.aspx");
            }
            else if (ty_em == "Emp_product")
            {
                Session["TYPE_EMP"] = ty_em;
                Session["Full_NAME"] = fname;
                Response.Redirect("ProductPage.aspx");
            }
            else if (ty_em == "Emp_Type_Product")
            {
                Session["TYPE_EMP"] = ty_em;
                Session["Full_NAME"] = fname;
                Response.Redirect("Type_cate_prod.aspx");
            }

            /*
            if (ty_em == "Admin")
            {
                Session["TYPE_EMP"] = ty_em;
                Response.Redirect("DashboardAdmin.aspx");
            }
            else if (ty_em == "Emp_categore")
            {
                Session["TYPE_EMP"] = ty_em;
                Response.Redirect("");
            }
            else if (ty_em == "Emp_product")
            {
                Session["TYPE_EMP"] = ty_em;
                Response.Redirect("");
            }
            else if (ty_em=="HOS")
            {
                Session["TYPE_EMP"] = ty_em;
                Response.Redirect("");
            }
            else
            {
                Session["TYPE_EMP"] = ty_em;
                Response.Redirect("");
            }
             * */
        }

        
    }
}