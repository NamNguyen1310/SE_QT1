using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace LoginSignUp
{
    public static class ConnectionSingleton
    {
        static SqlConnection conn;
        public static SqlConnection GetConnection()
        {
            if (conn == null)
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder["Data Source"] = "607-GV\\SQLEXPRESS";
                builder["integrated Security"] = true;
                builder["Initial Catalog"] = "Lab7";
                builder.UserID = "607-GV\\admin";
                conn = new SqlConnection(builder.ConnectionString);
                conn.Open();
                return conn;
            }
            else
                return conn;
        }
    }
}
