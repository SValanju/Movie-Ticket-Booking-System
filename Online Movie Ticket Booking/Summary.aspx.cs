using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Movie_Ticket_Booking
{
    public partial class Thnks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtidvalue.Text = Request.QueryString["id"];
            int[] seats = (int[])Session["tempbooking"];
            String seatbooked = "";
            int i = 0;
            for (i = 0; i < 56; i++)
            {
                if (seats[i] == 1)
                {
                    seatbooked = seatbooked + " " + (i + 1);
                }
            }
            
            seatno.Text = seatbooked;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}