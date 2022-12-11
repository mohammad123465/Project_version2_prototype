using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.Pages_pro
{
    public class users_class:Inter_user
    {        
        string full_name_att;
        string username_att;
        string password_att;
        string auth_type_user_att;


        //------------defenition-----------------
        db_control db = new db_control();
        //-----------------constractors----------
        public users_class()
        {

        }       
        public users_class(string full_n)
        {            
            this.full_name_att = full_n;
        }
        public users_class( string full_n,string username)
        {
           
            this.full_name_att = full_n;
            this.username_att = username;
        }
        public users_class( string full_n, string username,string pass)
        {
           
            this.full_name_att = full_n;
            this.username_att = username;
            this.password_att = pass;
        }
        public users_class( string full_n, string username, string pass, string auth_type)
        {           
            this.full_name_att = full_n;
            this.username_att = username;
            this.password_att = pass;
            this.auth_type_user_att = auth_type;
        }
   


        public int add_user(string fname,string userna,string pass,string autho)
        {
            int res;
            string sql_ins = "insert into users_tb (FULL_NAME,USERNAME,PASSWORD,AUTHORISE) values('" + fname + "','" + userna + "','" + pass + "','" + autho + "')";
            string sql_ins2 = "insert into users_tb (FULL_NAME,USERNAME,PASSWORD,AUTHORISE) values('" + fname + "','" + userna + "','" + pass + "','"+autho+"')";
            try
            {
                res = db.Execute1(sql_ins2);
                
            }
            catch (Exception e)
            {
                
               
                throw;
            }
           
            return res;
        }

        public int delete_user(string usern)
        {
            string sql_ins = "delete from users_tb where USERNAME='" + usern + "'";
            int x = db.Execute1(sql_ins);
            return x;
        }
    }
}