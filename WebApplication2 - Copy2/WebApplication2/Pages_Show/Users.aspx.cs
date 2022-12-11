using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Pages_pro;

namespace WebApplication2.Pages_Show
{
    public partial class Users : System.Web.UI.Page
    {
        db_control db = new Pages_pro.db_control();
        users_class obj_user;
        


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string full_name_t=txt_fname.Text;
            string username_t=txt_username.Text;
            string password_t=txt_password.Text;
            string type_user_t=drop_userType.Text;

            obj_user = new users_class(full_name_t, username_t, password_t, type_user_t);
            int x = obj_user.add_user(full_name_t, username_t, password_t, type_user_t);
            int xx = 10;

        }

       

    }
}