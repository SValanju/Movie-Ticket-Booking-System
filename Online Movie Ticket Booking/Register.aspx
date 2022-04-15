<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Movie_Ticket_Booking.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div style="height: 610px; background-color: white;">
        <form id="form1" runat="server" style="padding-left:10%">
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="New Registration :" Font-Names="Buxton Sketch" ForeColor="Black"></asp:Label>
            <div style="padding-left:25%">
        <table class="auto-style1" style="height: auto; width:auto">
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label6" runat="server" Text="Email Id :" Font-Size="X-Large" Font-Names="Buxton Sketch"></asp:Label>
                </td>
                <td style="text-align: left">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="230px" Height="30px" Font-Size="Large" Font-Names="Buxton Sketch"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required Field" ForeColor="Red" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid Email ID." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label7" runat="server" Text="New Password :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td style="text-align: left">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="230px" Height="30px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required Field" ForeColor="Red" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label1" runat="server" Text="Confirm Password :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td style="text-align: left">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="230px" Height="30px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required Field" ForeColor="Red" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox1" ErrorMessage="Enter correct password." ForeColor="Red" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label8" runat="server" Text="Full Name :" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td style="text-align: left">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="230px" Height="30px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Required Field" ForeColor="Red" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label9" runat="server" Text="Mobile No: +91" Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                </td>
                <td style="text-align: left">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Phone" Width="230px" Height="30px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Required Field" ForeColor="Red" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter valid mobile number." ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$" Font-Size="Medium" Font-Names="Buxton Sketch"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="40px" Text="Submit" Width="100px" Font-Names="Buxton Sketch" OnClick="Button1_Click" BorderColor="Black" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="40px" Text="Reset" Width="100px" Font-Names="Buxton Sketch" OnClientClick="this.form.reset();return false;" CausesValidation="false" BorderColor="Black" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="text-align: right">
                    <asp:Label ID="Label11" runat="server" Font-Names="Buxton Sketch" Font-Size="Large" ForeColor="Black" Text="Already have account ?"></asp:Label>
                </td>
                <td style="text-align: left">
                    &nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Names="Buxton Sketch" Font-Size="Large" Font-Underline="True" ForeColor="Blue" NavigateUrl="Login.aspx">Log In here...</asp:HyperLink>
                </td>
            </tr>
            </table></div><br />
            <div style="padding-left:60%">
                <asp:Image runat="server" ImageUrl="~/Models/Contents/img_115542.png" Width="150px" />
                <asp:Image runat="server" ImageUrl="~/Models/Contents/img_115542.png" Width="150px" />
                <asp:Image runat="server" ImageUrl="~/Models/Contents/img_115542.png" Width="150px" />
            </div>
    </form>
        </div>
</asp:Content>
