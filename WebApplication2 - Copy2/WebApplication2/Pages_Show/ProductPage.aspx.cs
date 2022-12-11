using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2;
using WebApplication2.Pages_pro;

namespace WebApplication2
{
    public partial class ProductPage : System.Web.UI.Page
    {
        //definitions
        db_control db = new db_control();
        product_class product_obj;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1_prod.DataBind();
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            int id_prod_text_a = int.Parse(txt_prod_id.Text);
            string name_prod_text_a = txt_prod_name.Text;
            DateTime publ_prod_text_a= Calendar1.SelectedDate;
            string avaliable_prod_text_a = RadioButtonList1.SelectedItem.Selected.ToString();

            product_obj = new product_class(id_prod_text_a, name_prod_text_a, publ_prod_text_a, avaliable_prod_text_a);
            int x= product_obj.add_prod(id_prod_text_a, name_prod_text_a, publ_prod_text_a, avaliable_prod_text_a);
            Response.Write("<script>alert( ' "+x+" ') </script>");
            
        }
    }
}