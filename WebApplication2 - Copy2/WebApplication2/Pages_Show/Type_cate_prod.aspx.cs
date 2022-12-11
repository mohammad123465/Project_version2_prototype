using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Pages_pro;

namespace WebApplication2.Pages_Show
{
    public partial class Type_cate_prod : System.Web.UI.Page
    {
        db_control db = new db_control();
        type_class type_object;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void btn_add_type_Click(object sender, EventArgs e)
        {
            string drop_cat_ty = drop_down_categore_name.SelectedValue.ToString();
            string  drop_prod_ty = drop_down_product_name.SelectedValue.ToString();
            string txt_type_name_c = txt_type_name.Text;
            int txt_type_id = int.Parse(txt_id_type_tt.Text.ToString());
           
            //-fetch id categore where categore name entered user
            int cat_ty_drop1_dat_id=int.Parse(DropDownList1.SelectedValue.ToString());
            int produ_ty_drop2_dat_id=int.Parse(DropDownList2.SelectedValue.ToString());

            //insert 
            type_object = new type_class(txt_type_id,cat_ty_drop1_dat_id,produ_ty_drop2_dat_id,txt_type_name_c);
            int x=type_object.add_type(txt_type_id, cat_ty_drop1_dat_id, produ_ty_drop2_dat_id, txt_type_name_c);
            Response.Write("<script>alert( ' inserted Sucssesful ') </script>");


        }
    }
}