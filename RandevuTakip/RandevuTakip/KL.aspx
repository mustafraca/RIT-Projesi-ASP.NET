<%@ Page Title="Kişi Kaydı ve Güncelleme" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="KL.aspx.cs" Inherits="RandevuTakip.KL" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="banner" style="text-align:center; color:white">
        <div class="inner">
            <span class="fa-2x">Kayıt Listesi</span><br />
            <span class="fa-2x">Kayıt Numarası veya Adı Soyadına Göre Arama Yapabilirsiniz.</span>
        </div> 
    </section>

    <div id="main">
        <table style="width:100%; height:100%;">
            <tr>
                <td align="center">
                    <table style="text-align:center; width:40%; height:40%">
                        <tr>
                            <td>
                                Kayıt No<br />
                                <asp:TextBox ID="TextBox1" runat="server" BackColor="White" ForeColor="Black" MaxLength="10"></asp:TextBox>
                            </td>
                            <td>
                                Adı<br />
                                <asp:TextBox ID="TextBox2" runat="server" BackColor="White" ForeColor="Black" MaxLength="30"></asp:TextBox>
                            </td>
                            <td>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="ARA" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" ForeColor="Black"/>
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
    </div>

</asp:Content>
