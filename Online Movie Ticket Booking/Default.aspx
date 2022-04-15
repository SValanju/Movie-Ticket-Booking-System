<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_Movie_Ticket_Booking.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
        <div style=" height: 595px">

            <br />
            <br />
            <label style="font-family: 'Buxton Sketch'; font-size: 60px; padding-left:5%; color:black" >Welcome to "Online Movie Ticket Booking"</label><br />
            <label style="font-family: 'Buxton Sketch'; font-size: 40px; padding-left:20%; color:black" >Please login to book tickets for your favourite movie...</label>
            <br /><br />
            <div style="padding-left:45%">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" Font-Names="buxton sketch" Font-Size="xx-large" ForeColor="Blue">Click here to Login</asp:HyperLink>
            </div>
            <div class="pr-md-5">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right"  ImageUrl="~/Models/Contents/e48ee6e89d67af5e685225cf49b59bfc_technology-movie-film-buildings-cinema-building-icon_512-512.png" Height="300px" Width="300px" />
            <br /></div>

        </div>
    </form>
</asp:Content>
