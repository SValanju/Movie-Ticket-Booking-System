using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Movie_Ticket_Booking
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox5.Text = Request.QueryString["id"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-J3PUE9B;Initial Catalog=OMTBS;Integrated Security=True");
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Sp_Payment";
                cmd.Parameters.Add("@CardNo", SqlDbType.BigInt).Value = TextBox1.Text.Trim();
                cmd.Parameters.Add("@ExpiryDate", SqlDbType.VarChar).Value = TextBox2.Text.Trim();
                cmd.Parameters.Add("@CVV", SqlDbType.VarChar).Value = TextBox3.Text.Trim();
                cmd.Parameters.Add("@CardHolder", SqlDbType.VarChar).Value = TextBox4.Text.Trim();
                cmd.Parameters.Add("@DateTimeID", SqlDbType.Int).Value = TextBox5.Text.Trim();
                cmd.Parameters.Add("@id", SqlDbType.Int).Direction = ParameterDirection.Output;
                
                cmd.Connection = sqlCon;
                sqlCon.Open();
                cmd.ExecuteNonQuery();
                string id = cmd.Parameters["@id"].Value.ToString();
                Response.Redirect("Summary.aspx?id=" + id);
            }
        }
    }
}