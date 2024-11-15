using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;//Import tho access web config file


public class database_xml_csharp
{
    public static string ConnectionString
    {
        get
        {
            return WebConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
        }
    }

}