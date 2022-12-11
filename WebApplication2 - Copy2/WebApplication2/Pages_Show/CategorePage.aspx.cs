using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Pages_pro;

namespace WebApplication2
{
    public partial class Home : System.Web.UI.Page
    {
        db_control db = new Pages_pro.db_control();
        categore_class ob_category;
        protected void Page_Load(object sender, EventArgs e)
        {          
            GridView1.DataBind();
        }

        protected void test_database_Click(object sender, EventArgs e)
        {            
            try
            {
                db.connect_db();
                Response.Write("<script>alert( ' Connected ') </script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert( ' not Connected ') </script>");
            }          
        }

        protected void dis_conn_Click(object sender, EventArgs e)
        {
            try
            {
                db.disconnect_db();
                Response.Write("<script>alert( ' not Connected ') </script>");
            }
            catch (Exception)
            {
                
                throw;
            }           
        }

        protected void btn_ins_Click(object sender, EventArgs e)
        {
            int id_cat = int.Parse(txt_cate_id.Text);
            string cat_name = txt_cat_name.Text;
            DateTime date_pub = Convert.ToDateTime(txt_cat_pub.Text);
            //-------------------------------------------------1 true without class oop---------------------------------------------            
           ////string sql_ins = "insert into category_tb" + "(ID_CATEGORY,NAME_CATEGORY,PUBLISH_DATE) values(@ID_CATEGORY,@NAME_CATEGORY,@PUBLISH_DATE)";
           // string sql_ins = "insert into category_tb (ID_CATEGORY,NAME_CATEGORY,PUBLISH_DATE) values('"+id_cat+"','"+cat_name+"','"+date_pub+"')";
           // lbl_ins.Text = "not inserted";
           // //db.insert();                       
           
           // db.Execute1(sql_ins);
           // int x = 10;
            //lbl_ins.Text = "inserted";
            //-----------------------------------------use category class oop---------------------------------
            ob_category = new Pages_pro.categore_class(id_cat, cat_name, date_pub);
            int x=ob_category.add_categore(id_cat, cat_name, date_pub);
            lbl_ins.Text = x.ToString();
        }

        protected void id_del_Click(object sender, EventArgs e)
        {
            int id_cat = int.Parse(txt_cate_id.Text);          
            //--------------------------------------without class-----------------------------
            //string sql_ins = "delete from category_tb where ID_CATEGORY='"+id_cat+"'";
            //int x=db.Execute1(sql_ins);
            //lbl_ins.Text = "deleted";
            //--------------------------------------with class -----------------------------
            ob_category = new Pages_pro.categore_class(id_cat);
            ob_category.delet_cate(id_cat);           
        }

       
    }
}