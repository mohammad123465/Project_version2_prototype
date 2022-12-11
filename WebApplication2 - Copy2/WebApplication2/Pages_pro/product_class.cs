using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.Pages_pro;

namespace WebApplication2.Pages_pro
{
    public class product_class:Inter_product
    {
        int id_prod_att;
        string prod_name;
        DateTime pub_prod_att;
        string avaliable_prod;
        db_control db = new db_control();
        public  product_class()
        {
            db.connect_db();
        }
        public product_class(int id)
        {
            db.connect_db();
            this.id_prod_att = id;            
        } 
        public product_class(int id, string name)
        {
            db.connect_db();
            this.id_prod_att = id;
            this.prod_name = name;          
        } 
        public product_class(int id, string name, DateTime publi)
        {
            db.connect_db();
            this.id_prod_att = id;
            this.prod_name = name;
            this.pub_prod_att = publi;            
        } 
        public product_class(int id,string name, DateTime publi,string avail)
        {
            db.connect_db();
            this.id_prod_att = id;
            this.prod_name = name;
            this.pub_prod_att = publi;
            this.avaliable_prod = avail;
        }
        public int add_prod(int id, string name, DateTime publi, string avail)
        {
            string sql_ins = "insert into product_tb (ID_PRODUCT,NAME_PRODUCT,PUBLISH_DATE_P,IS_VALIBLE) values('" + id + "','" + name + "','" + publi + "','" + avail + "')";
            int x=db.Execute1(sql_ins);
            return x;

        }

    }
}