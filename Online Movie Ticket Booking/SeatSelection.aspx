<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SeatSelection.aspx.cs" Inherits="Online_Movie_Ticket_Booking.SeatSelection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div style="height:595px; background-color:white; padding-left:5%" >
        <br />
        
            <label style="font-family:'Buxton Sketch'; font-size:60px; color:black; font-weight:bold" align="center">Select your seats... 🪑🪑🪑</label>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            <br /><br />
            <div style="padding-left:30%">
            <table style="border-style: solid; border-color: inherit; border-width: medium; width: 234px; height:189px; align-content:center">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="border-right-0 border-dark table-bordered">
                        &nbsp;</td>
                    <td class="table-bordered border-left-0 border-right-0 border-dark">
                        &nbsp;</td>
                    <td colspan="2" class="table-bordered border-left-0 border-right-0 border-dark">
                        <asp:Label runat="server" ID="label" Font-Names="Buxton Sketch" Font-Size="X-Large">SCREEN</asp:Label>
                    </td>
                    <td class="table-bordered border-left-0 border-right-0 border-dark">
                        &nbsp;</td>
                    <td class="table-bordered border-left-0 border-dark">
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
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td style="width: 100px">
                        &nbsp;</td>
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
                        <asp:Button ID="Button1" runat="server" Text="01" OnClick="Button1_Click" />
                    </td>
                    <td style="width: 36px">
                        <asp:Button ID="Button2" runat="server" Text="02" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="03" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="04" OnClick="Button4_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="05" OnClick="Button5_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="06" OnClick="Button6_Click" />
                    </td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button31" runat="server" Text="31" OnClick="Button31_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button32" runat="server" Text="32" OnClick="Button32_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button33" runat="server" Text="33" OnClick="Button33_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button34" runat="server" Text="34" OnClick="Button34_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button35" runat="server" Text="35" OnClick="Button35_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button7" runat="server" Text="07" OnClick="Button7_Click" />
                    </td>
                    <td style="width: 36px">
                        <asp:Button ID="Button8" runat="server" Text="08" OnClick="Button8_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button9" runat="server" Text="09" OnClick="Button9_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button10" runat="server" Text="10" OnClick="Button10_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button11" runat="server" Text="11" OnClick="Button11_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button12" runat="server" Text="12" OnClick="Button12_Click" />
                    </td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button36" runat="server" Text="36" OnClick="Button36_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button37" runat="server" Text="37" OnClick="Button37_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button38" runat="server" Text="38" OnClick="Button38_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button39" runat="server" Text="39" OnClick="Button39_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button40" runat="server" Text="40" OnClick="Button40_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button13" runat="server" Text="13" OnClick="Button13_Click" />
                    </td>
                    <td style="width: 36px">
                        <asp:Button ID="Button14" runat="server" Text="14" OnClick="Button14_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button15" runat="server" Text="15" OnClick="Button15_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button16" runat="server" Text="16" OnClick="Button16_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button17" runat="server" Text="17" OnClick="Button17_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button18" runat="server" Text="18" OnClick="Button18_Click" />
                        </td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button41" runat="server" Text="41" OnClick="Button41_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button42" runat="server" Text="42" OnClick="Button42_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button43" runat="server" Text="43" OnClick="Button43_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button44" runat="server" Text="44" OnClick="Button44_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button45" runat="server" Text="45" OnClick="Button45_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button19" runat="server" Text="19" OnClick="Button19_Click" />
                    </td>
                    <td style="width: 36px">
                        <asp:Button ID="Button20" runat="server" Text="20" OnClick="Button20_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button21" runat="server" Text="21" OnClick="Button21_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button22" runat="server" Text="22" OnClick="Button22_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button23" runat="server" Text="23" OnClick="Button23_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button24" runat="server" Text="24" OnClick="Button24_Click" />
                    </td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button46" runat="server" Text="46" OnClick="Button46_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button47" runat="server" Text="47" OnClick="Button47_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button48" runat="server" Text="48" OnClick="Button48_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button49" runat="server" Text="49" OnClick="Button49_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button50" runat="server" Text="50" OnClick="Button50_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button25" runat="server" Text="25" OnClick="Button25_Click" />
                    </td>
                    <td style="width: 36px">
                        <asp:Button ID="Button26" runat="server" Text="26" OnClick="Button26_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button27" runat="server" Text="27" OnClick="Button27_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button28" runat="server" Text="28" OnClick="Button28_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button29" runat="server" Text="29" OnClick="Button29_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button30" runat="server" Text="30" OnClick="Button30_Click" />
                    </td>
                    <td style="width:100px">
                        <asp:Label ID="Label1" runat="server" Font-Names="Buxton Sketch" Text="Exit ⬇"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button51" runat="server" Text="51" OnClick="Button51_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button52" runat="server" Text="52" OnClick="Button52_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button53" runat="server" Text="53" OnClick="Button53_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button54" runat="server" Text="54" OnClick="Button54_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button55" runat="server" Text="55" OnClick="Button55_Click" />
                    </td>
                </tr>
            </table>
                <br />
                <div style="padding-left:12%">
                    <asp:Button runat="server" Text="Book Now" Font-Names="buxton sketch" Font-Size="X-Large" ID="btnbook" OnClick="btnbook_Click" BorderColor="Black" BorderWidth="1px" Font-Bold="True" Height="50px" Width="200px" />
                </div>
                <img alt="" src="Models/Contents/images (2).jpeg" width="350" align="right" style="padding-right:10%" />
                </div>
            <img alt="" src="Models/Contents/images (3).jpeg" width="150" align="left" />
            </div>
    
    </form>
</asp:Content>
