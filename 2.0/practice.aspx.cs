using DbDemo_MSSite;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eyal_Braun_Projects._2._0
{
    public partial class practice : System.Web.UI.Page
    {
        public string  UsersTable;
        public string sqlQuestion = "";
        // builds the table with the table object
        public string  buildTable(DataTable table )
        {
            string msg = "";
            int length = table.Rows.Count;
            if (length == 0)
            {
                msg = "empty";
            }
            else
            {
                msg += "<table border = '1'>";
                msg += "<tr>";
                msg += "<th>Id</th>";
                msg += "<th>First_Name</th>";
                msg += "<th>Last_Name</th>";
                msg += "<th>Age</th>";
                msg += "<th>City</th>";
                msg += "<th>Gender</th>";
                msg += "<th>Birthday</th>";
                msg += "</tr>";
                for (int i = 0; i < length; i++)
                {
                    msg += "<tr>";
                    msg += "<td>" + table.Rows[i]["Id"] + "</td>";
                    msg += "<td>" + table.Rows[i]["First_Name"] + "</td>";
                    msg += "<td>" + table.Rows[i]["Last_Name"] + "</td>";
                    msg += "<td>" + table.Rows[i]["Age"] + "</td>";
                    msg += "<td>" + table.Rows[i]["City"] + "</td>";
                    msg += "<td>" + table.Rows[i]["Gender"] + "</td>";
                    msg += "<td>" + table.Rows[i]["Birthday"] + "</td>";
                    msg += "</tr>";

                }
                msg += "</table>";
            }
            return msg;
            

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table;
            string tableName = "Users_Table";
            string fileName = "Database1.mdf";
           sqlQuestion = "SELECT * FROM " + tableName;
            
            table = Helper.ExecuteDataTable(fileName, sqlQuestion);
            UsersTable = buildTable(table);
























        }
    }
}