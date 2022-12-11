using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2;


namespace WebApplication2.Pages_pro
{
    public class categore_class:Inter_categore
    {
        
        db_control db = new db_control();
        int id_categore_att;
        string category_name_att;
        DateTime date_category_att;
        public categore_class(int id,string name,DateTime da)
        {
            this.id_categore_att = id;
            this.category_name_att=name;
            this.date_category_att = da;
            db.connect_db();
        }
        public categore_class(int id, string name)
        {
            this.id_categore_att = id;
            this.category_name_att = name;     
            db.connect_db();
        }
        public categore_class(int id)
        {
            this.id_categore_att = id;          
            db.connect_db();
        }
        public categore_class()
        {           
            db.connect_db();
        }
        public int add_categore(int id,string name,DateTime da)
        {
            string sql_ins = "insert into category_tb (ID_CATEGORY,NAME_CATEGORY,PUBLISH_DATE) values('" + id + "','" + name + "','" + da + "')";
            int x=db.Execute1(sql_ins);
            return x;
        }
        public int delet_cate(int id)
        {
            string sql_ins = "delete from category_tb where ID_CATEGORY='" + id + "'";            
            int x = db.Execute1(sql_ins);
            return x;
        }
        

       
    }
}