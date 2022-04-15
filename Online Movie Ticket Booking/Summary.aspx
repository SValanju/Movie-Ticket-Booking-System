<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="Online_Movie_Ticket_Booking.Thnks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
    <div style=" height: 595px; background-color: white; padding-left:5%" >
        <br />
        <label style="font-family: 'Buxton Sketch'; font-size: 50px" >Thank you for choosing us...</label>
        <label style="font-size:30px">🥰😊🤗</label>
        <br />
        <label style="font-family: 'Buxton Sketch'; font-size: x-large; padding-left: 10%" >See your ticket summary here,</label>
        <asp:TextBox ID="txtidvalue" runat="server" Visible="False"></asp:TextBox>
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" BorderStyle="None" BorderWidth="1px" >
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="w-100" border="0">
                    <tr>
                        <td colspan="2" style="border: 2px solid #000000; text-align: center; font-family:'Buxton Sketch'; font-size:large">Thank you,
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />!!!
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="5" style="border: 2px solid #000000">
                            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("MPoster") %>' Width="215px" />
                        </td>
                        <td style="border-left: 2px solid #000000; border-right: 2px solid #000000; padding-left:5%; border-top: 2px solid #000000; text-align: left; font-family:'Buxton Sketch'; font-size:large; border: 2px solid #000000;">Movie Name:<br />
                            <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 2px solid #000000; border-right: 2px solid #000000; padding-left:5%; text-align: left; font-family:'Buxton Sketch'; font-size:large; border: 2px solid #000000;">Theatre Name:<br />
                            <asp:Label ID="TheatresLabel" runat="server" Text='<%# Eval("Theatres") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 2px solid #000000; border-right: 2px solid #000000; padding-left:5%; text-align: left; font-family:'Buxton Sketch'; font-size:large; border: 2px solid #000000;">Time:<br />
                            <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 2px solid #000000; border-right: 2px solid #000000; padding-left:5%; text-align: left; font-family:'Buxton Sketch'; font-size:large; border: 2px solid #000000;">CardHolder:<br />
                            <asp:Label ID="CardHolderLabel" runat="server" Text='<%# Eval("CardHolder") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 2px solid #000000; border-right: 2px solid #000000; padding-left:5%; border-bottom: 2px solid #000000; text-align: left; font-family:'Buxton Sketch'; font-size:large; border: 2px solid #000000;">Price:<br />
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />/-
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList><br />
        
        <div class="text-center" style="font-family:'Buxton Sketch'; font-size:large">
            And your selected seat(s) are/is <asp:Label ID="seatno" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="text-right" style="padding-right:10%">
        ||&nbsp;<asp:HyperLink runat="server" ID="hyperlink1" Font-Bold="True" Font-Names="Buxton Sketch" Font-Size="X-Large" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Home.aspx" >Book More...</asp:HyperLink>
            &nbsp;||&nbsp;
        <asp:HyperLink runat="server" ID="hyperlink2" Font-Bold="True" Font-Names="Buxton Sketch" Font-Size="X-Large" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Default.aspx" >Logout</asp:HyperLink>
        &nbsp;||</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OMTBSConnectionString %>" SelectCommand="SP_Summary" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtidvalue" Name="id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>

</asp:Content>
