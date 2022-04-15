<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Paymentgateway.aspx.cs" Inherits="Online_Movie_Ticket_Booking.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height: 610px; background-color: white">
        <form id="form1" runat="server" style="padding-left:10%">
        <br />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            <div style="padding-left:5%">
            <asp:Label runat="server" Font-Names="Buxton Sketch" Font-Size="50px" ForeColor="Black" >Make Payment :</asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
            </div><br />
            <div style="padding-left:30%">
            <table style="width:auto; height: auto">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter Card Number :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="230px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required Field" ForeColor="Red" Font-Names="Buxton Sketch" Font-Size="Large"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid card number." ForeColor="Red" ValidationExpression="^[\d]{16,16}$" Font-Names="Buxton Sketch" Font-Size="Large"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Enter Expiry Date :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="230px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required Field" ForeColor="Red" Font-Names="Buxton Sketch" Font-Size="Large"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid date. (mm/yyyy)" ForeColor="Red" ValidationExpression="^((0[1-9])|(1[0-2]))\/((2009)|(20[1-2][0-9]))$" Font-Names="Buxton Sketch" Font-Size="Large"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Enter CVV :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="230px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required Field" ForeColor="Red" Font-Italic="False" Font-Names="Buxton Sketch" Font-Size="Large"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid cvv." ForeColor="Red" ValidationExpression="^[\d]{3,3}$" Font-Names="Buxton Sketch" Font-Size="Large"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Enter Card Holder Name :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="230px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required Field" ForeColor="Red" Font-Names="Buxton Sketch" Font-Size="Large"></asp:RequiredFieldValidator>
                </td>
            </tr> 
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Buxton Sketch" Font-Size="X-Large" Height="45px" Text="Pay Now" BorderColor="Black" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            </table><br /><br />
                </div>
            <div style="padding-left:10%; padding-right:15%">
                <table>
                    <tr style="width:auto; height:auto">
                        <td style="text-align: left; width:500px">
                            <asp:Image runat="server" ImageUrl="~/Models/Contents/Rupay-Logo.png" Width="150px" />
                        </td>
                        <td style="text-align: center; width:500px">
                            <asp:Image runat="server" ImageUrl="~/Models/Contents/Visa_Logo.png" Width="150px" />
                        </td>
                        <td style="text-align: right; width:500px">
                            <asp:Image runat="server" ImageUrl="~/Models/Contents/1280px-Mastercard-logo.svg.png" Width="150px" />
                        </td>
                    </tr>  
                </table>
            </div>
    </form>
        </div>

</asp:Content>
