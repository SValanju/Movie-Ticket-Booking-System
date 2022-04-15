<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Movie_Ticket_Booking.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <div style=" height: 1400px; background-color: white">
        <br />
        
        <div style="padding-left:5%">
            <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="Log Out" PostBackUrl="~/Login.aspx" Font-Names="buxton sketch" Font-Size="x-large" Font-Underline="True" ForeColor="Blue" BorderColor="White" BackColor="White" />
        </div>
        <br />
        <label style="font-family:'Buxton Sketch'; font-size:xx-large; padding-left:5%; color:black; font-weight:bold">Select your movie!!! 🎥🎬🍿</label>
        <br /><br />
    
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="3px" CellPadding="4" DataKeyField="MoviesID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" RepeatColumns="5">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table border="1" class="w-100">
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label1" runat="server" Font-Names="Buxton Sketch" style="text-align: center" Text='<%# Eval("MovieName") %>' Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Img" Height="350px" ImageUrl='<%# Eval("MPoster") %>' Width="225px" CommandArgument='<%# Eval("MoviesID") %>'>
                            </asp:ImageButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OMTBSConnection %>" SelectCommand="SELECT * FROM [Movies]"></asp:SqlDataSource>
        <br />
    </div>
        
    </form>

    </asp:Content>
