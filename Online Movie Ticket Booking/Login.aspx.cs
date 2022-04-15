using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Online_Movie_Ticket_Booking
{

    public partial class WebForm2 : System.Web.UI.Page
    {
        string strConnString = @"Data Source=DESKTOP-J3PUE9B;Initial Catalog=OMTBS;Integrated Security=True";

        SqlCommand com;

        SqlDataAdapter sqlda;

        string str;

        DataTable dt;

        int RowCount;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string UserName = TextBox3.Text.Trim();

            string Password = TextBox4.Text.Trim();
            int LoginID;

            SqlConnection con = new SqlConnection(strConnString);

            con.Open();

            str = "Select * from UserRegister";

            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {
                LoginID =Convert.ToInt32( dt.Rows[i]["LoginID"]);

                UserName = dt.Rows[i]["EmailID"].ToString();

                Password = dt.Rows[i]["Password"].ToString();

                if (UserName == TextBox3.Text && Password == TextBox4.Text)

                {

                    Session["UserName"] = UserName;
                    Session["LoginID"] = LoginID;
                    Response.Redirect("Home.aspx");

                }

                else

                {

                    Label11.Visible = true;

                }

            } 

        }
    }
}