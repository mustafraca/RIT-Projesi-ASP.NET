<%@ Page Title="Panel" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="RandevuTakip.Panel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="banner" style="text-align:center; color:white">
        <div class="inner">
            <span class="fa-2x">PANEL</span><br />
            <asp:Button ID="Button1" runat="server" Text="KİŞİ GİRİŞ VE GÜNCELLEME" OnClick="Button1_Click" /><br /><br />
            <asp:Button ID="Button2" runat="server" Text="KAYITLI KİŞİ LİSTELERİ" OnClick="Button2_Click" /><br /><br />
            <asp:Button ID="Button3" runat="server" Text="OTURUMU KAPAT" OnClick="Button3_Click" />
        </div> 
    </section>

    <div id="main">
        <table style="width:100%; height:100%">
            <tr>
                <td>
                    <table style="text-align:center; width:99%; height:99%">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>