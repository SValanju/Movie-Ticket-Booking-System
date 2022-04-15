using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Online_Movie_Ticket_Booking
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-J3PUE9B;Initial Catalog=OMTBS;Integrated Security=True");
            {
                sqlCon.Open();
                string query = "insert into UserRegister values(@FullName,@EmailID,@Password,@MobileNo)";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@FullName", TextBox5.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@EmailID", TextBox3.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", TextBox4.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@MobileNo", TextBox6.Text.Trim());
                sqlCmd.ExecuteNonQuery();

                Response.Redirect("Login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}