using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2;
using WebApplication2.Pages_pro;



namespace WebApplication2.Pages_pro
{
    public class type_class:Inter_type
    {
        //1.definition
        int id_type_Att;
        int id_cate_type_Att;
        int id_prod_type_Att;
        string type_name_prod_Att;
        db_control db = new db_control();

        //2.------------------------------------------------constuctors---------------------------------------
        public type_class()
        {
            db.connect_db();
        }
        public type_class(int id_t)
        {
            db.connect_db();
            this.id_type_Att = id_t;
        }
        public type_class(int id_t,int id_cate)
        {
            db.connect_db();
            this.id_type_Att = id_t;
            this.id_cate_type_Att = id_cate;
        }
        public type_class(int id_t, int id_cate,int id_prod)
        {
            db.connect_db();
            this.id_type_Att = id_t;
            this.id_cate_type_Att = id_cate;
            this.id_prod_type_Att = id_prod;
        }
        public type_class(int id_t, int id_cate, int id_prod,string Type_name)
        {
            db.connect_db();
            this.id_type_Att = id_t;
            this.id_cate_type_Att = id_cate;
            this.id_prod_type_Att = id_prod;
            this.type_name_prod_Att = Type_name;
        }
        //---------------------------------------functions-------------------------------------------------
        public int add_type(int id_t, int id_cate, int id_prod, string Type_name)
        {
            string sql_ins = "insert into types_tb (ID_CATEGORE_TYPE,ID_PRODUCT_TYPE,TYPES_PRO,ID_TYPE_CAT_PRO) values('" + id_cate + "','" + id_prod + "','" + Type_name + "','" + id_t + "')";
            int x=db.Execute1(sql_ins);
            return x;
        }

        public int delet_type(int id_ty)
        {
            string sql_ins = "delete from types_tb where ID_TYPE_CAT_PRO='" + id_ty + "'";
            int x = db.Execute1(sql_ins);
            return 0;
        }

        public void display_type()
        {

        }
        public int update_type()
        {
            return 0;
        }



        
    }
}