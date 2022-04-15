<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Datetime.aspx.cs" Inherits="Online_Movie_Ticket_Booking.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height: 610px; background-color: white">
        <form id="form1" runat="server" style="padding-left:10%; padding-right:5%">
        
            <br /><br />
        <table style="height:auto; width:auto">
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Select Your Day :" Font-Names="Buxton Sketch" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" Font-Names="Arial Black" Font-Size="10pt" Height="140px" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" ForeColor="Black" NextPrevFormat="FullMonth" TitleFormat="Month" Width="296px" OnSelectionChanged="Calender1_SelectionChanged">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Names="Buxton Sketch" Font-Size="Large" Text="Selected date is :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td rowspan="3">
                    <img alt="" src="Models/Contents/5ef0fhb0zd_4rv9f70ht_vc009552.png" width="300"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Names="Buxton Sketch" Font-Size="X-Large" Text="Select Time &amp; Theatre : "></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Buxton Sketch" Font-Size="Large" Width="133px">
                        <asp:ListItem>9:00 AM</asp:ListItem>
                        <asp:ListItem>12:00 AM</asp:ListItem>
                        <asp:ListItem>3:00 PM</asp:ListItem>
                        <asp:ListItem>6:00 PM</asp:ListItem>
                        <asp:ListItem>9:00 PM</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: left">
        <asp:DropDownList ID="DropDownList3" runat="server" Font-Names="Buxton Sketch" Font-Size="Large" Width="166px">
            <asp:ListItem>PVR Xperia</asp:ListItem>
            <asp:ListItem>Madhuban Talkies</asp:ListItem>
            <asp:ListItem>Tilak Talkies</asp:ListItem>
            <asp:ListItem>Gopi Talkies</asp:ListItem>
            <asp:ListItem>Anand Multiplex</asp:ListItem>
            <asp:ListItem>Hindamata Talkies</asp:ListItem>
        </asp:DropDownList>
    
                </td>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="Book" Font-Bold="True" Font-Names="Buxton Sketch" Font-Size="X-Large" Height="40px" Width="120px" OnClick="Button1_Click" BorderColor="Black" />
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td style="text-align: left; width: 250px;">&nbsp;</td>
            </tr>
            </table>
            <br />
    </form>
        </div>

</asp:Content>
