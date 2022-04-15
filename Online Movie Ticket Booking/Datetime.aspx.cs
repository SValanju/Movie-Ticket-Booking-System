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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 TextBox2.Text = Request.QueryString["id"];
            }
        }

        protected void Calender1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-J3PUE9B;Initial Catalog=OMTBS;Integrated Security=True");
            {
                sqlCon.Open();
                SqlCommand sql = new SqlCommand("Sample_Proc", sqlCon);
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@Date", TextBox1.Text);
                sql.Parameters.AddWithValue("@Time", DropDownList2.Text);
                sql.Parameters.AddWithValue("@Theatres", DropDownList3.Text);
                sql.Parameters.AddWithValue("@MoviesID", TextBox2.Text);
                sql.Parameters.AddWithValue("@LoginID", Session["LoginID"]);
                sql.Parameters.AddWithValue("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;
                sql.ExecuteNonQuery();
                string id = sql.Parameters["@ID"].Value.ToString();
                sqlCon.Close();
                Response.Redirect("SeatSelection.aspx?id=" + id);

            }
        }        
    }
}