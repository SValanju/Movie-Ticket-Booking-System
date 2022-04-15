<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewMovie.aspx.cs" Inherits="Online_Movie_Ticket_Booking.ViewMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style=" height: 610px; background-color: white">
        <form id="form1" runat="server" style="padding-left:10%; padding-right:10%">
            <br />
            <br />
            <label style="font-family:'Buxton Sketch'; font-size:xx-large; padding-left:5%; color:black; font-weight:bold">Want to book this movie ?</label>
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="MoviesID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="w-100" style="border-top-style: double; border-bottom-style: double;" border="1">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Label ID="Label1" runat="server" Font-Names="Buxton Sketch" Font-Size="X-Large" Font-Bold="True" Text='<%# Eval("MovieName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image1" runat="server" Height="350px" Width="225px" ImageUrl='<%# Eval("MPoster") %>' />
                            </td>
                            <td style="padding-left:5%; font-family: 'buxton Sketch'; font-size: large;">
                                <asp:Label ID="Label2" runat="server" Font-Names="Buxton Sketch" Font-Size="Large" Text='<%# Eval("Description") %>'></asp:Label>
                                <br />
                                <br />
                                Language:&nbsp;
                                <asp:Label ID="Label5" runat="server" Font-Names="Buxton Sketch" Font-Size="Large" ForeColor="Black" Text='<%# Eval("Language") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-style: solid; border-color: #000000; border-width: 3px; text-align: center">
                                <asp:Label ID="Label4" runat="server" Font-Names="Buxton Sketch" Font-Size="X-Large" Text="Rs."></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>' Font-Names="Buxton Sketch" Font-Size="X-Large"></asp:Label>
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="btnbooknow" runat="server" BorderColor="Black" BorderWidth="3px" Font-Bold="True" Font-Names="Buxton Sketch" Font-Size="X-Large" ForeColor="Red" CommandName="btnbook" CommandArgument='<%# Eval("MoviesID") %>' Text="Book Now" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>

                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />

            </asp:DataList>
            <br />

            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OMTBSConnection %>" SelectCommand="SELECT * FROM [Movies] WHERE ([MoviesID] = @MoviesID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MoviesID" QueryStringField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

        </form>
    </div>

</asp:Content>
