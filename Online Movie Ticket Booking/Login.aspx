<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Movie_Ticket_Booking.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     
    <div style="height: 610px; background-color: white">
        <form id="form2" runat="server" style="padding-left:10%"> 
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="60px" Text="Log In :" ForeColor="Black" Font-Italic="False" Font-Names="Buxton Sketch"></asp:Label>
        <div style="padding-left:25%">
        <table style="height: auto; width: auto">   
            <tr>  
                <td>&nbsp;</td>  
                <td>  
                    <asp:Label ID="Label6" runat="server" Text="Email ID :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>  
                </td>  
                <td>  
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Height="30px" Width="230px" TextMode="Email" Font-Names="Buxton Sketch"></asp:TextBox>  
                </td>  
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required Field" ForeColor="Red" Font-Names="Buxton Sketch" Font-Size="Medium"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid Email ID." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Buxton Sketch" Font-Size="Medium"></asp:RegularExpressionValidator>
                </td>  
            </tr>  
            <tr>  
                <td>&nbsp;</td>  
                <td>  
                    &nbsp;</td>  
                <td>  
                    &nbsp;</td>  
                <td>
                    &nbsp;</td>  
            </tr>  
            <tr>  
                <td>&nbsp;</td>  
                <td>  
                    <asp:Label ID="Label7" runat="server" Text="Password :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>  
                </td>  
                <td>  
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" TextMode="Password" Height="30px" Width="230px" Font-Names="Buxton Sketch"></asp:TextBox>  
                </td>  
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required Field" ForeColor="Red" Font-Names="Buxton Sketch" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>  
            </tr>  
            <tr>  
                <td>&nbsp;</td>  
                <td>  
                    &nbsp;</td>  
                <td>  
                    &nbsp;</td>  
                <td>
                    &nbsp;</td>  
            </tr>  
            <tr>  
                <td>&nbsp;</td>  
                <td colspan="2" style="text-align: center">  
                    <asp:Button ID="Button2" runat="server" Font-Size="X-Large" OnClick="Button2_Click" Text="Log In" Font-Bold="True" Height="35px" Width="100px" Font-Names="Buxton Sketch" BorderColor="Black" />
                </td>  
                <td>
                <asp:Label ID="Label9" runat="server" Text="New User ?" ForeColor="Black" Font-Names="Buxton Sketch" Font-Size="Large"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Register.aspx" Font-Names="Buxton Sketch" Font-Size="Large">Sign Up</asp:HyperLink>
                </td>
            </tr>
            <tr>  
                <td>&nbsp;</td>  
                <td>&nbsp;</td>  
                <td>  
                    &nbsp;</td>  
                <td>
                    &nbsp;</td>
            </tr>
            <tr>  
                <td>&nbsp;</td>  
                <td>&nbsp;</td>  
                <td>  
                    <asp:Label ID="Label11" runat="server" ForeColor="Red" Font-Names="Buxton Sketch" Font-Size="Large">Invalid Credentials!</asp:Label>
                </td>  
                <td>&nbsp;</td>  
            </tr>  
            </table></div>
            <div style="padding-left:65%">
                <img alt="" src="Models/Contents/PicsArt_03-06-07.15.35.png" width="300" />
            </div> 
            </form> 
      </div>
    
</asp:Content>