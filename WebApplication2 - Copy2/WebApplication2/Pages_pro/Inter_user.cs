using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebApplication2.Pages_pro
{
    interface Inter_user
    {
        int add_user(string fname, string userna, string pass, string autho);
        int delete_user(string usern);
        
    }
}
