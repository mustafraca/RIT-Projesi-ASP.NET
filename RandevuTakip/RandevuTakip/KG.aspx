<%@ Page Title="Kişi Kaydı ve Güncelleme" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="KG.aspx.cs" Inherits="RandevuTakip.KG" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="banner" style="text-align:center; color:white">
        <div class="inner">
            <span class="fa-2x">Kişi Kaydı ve Güncelleme</span><br />
        </div> 
    </section>

    <div id="main">
        <table style="width:100%; height:100%;">
            <tr>
                <td>
                    <table style="text-align:center; width:99%; height:239px">
                        <tr>
                            <td>
                                Kayıt No<br />
                                <asp:TextBox ID="TextBox1" runat="server" BackColor="White" ForeColor="Black" MaxLength="10" Height="37px"></asp:TextBox>
                            </td>
                            <td>
                                Adı<br />
                                <asp:TextBox ID="TextBox2" runat="server" BackColor="White" ForeColor="Black" MaxLength="30" Height="37px"></asp:TextBox>
                            </td>
                            <td>
                                Soyadı<br />
                                <asp:TextBox ID="TextBox3" runat="server" BackColor="White" ForeColor="Black" MaxLength="30" Height="37px"></asp:TextBox>
                            </td>
                            <td><br /><asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click" /></td>
                        </tr>
                        <tr>
                            <td>
                                Telefon 1<br />
                                <asp:TextBox ID="TextBox4" runat="server" BackColor="White" ForeColor="Black" MaxLength="11" TextMode="Phone"></asp:TextBox>
                            </td>
                            <td>
                                Telefon 2<br />
                                <asp:TextBox ID="TextBox5" runat="server" BackColor="White" ForeColor="Black" MaxLength="11" TextMode="Phone"></asp:TextBox>
                            </td>
                            <td>
                                Faks<br />
                                <asp:TextBox ID="TextBox6" runat="server" BackColor="White" ForeColor="Black" MaxLength="11" TextMode="Phone"></asp:TextBox>
                            </td>
                            <td><br /><asp:Button ID="Button2" runat="server" Text="TEMİZLE" OnClick="Button2_Click" /></td>
                        </tr>
                        <tr>
                            <td>
                                Randevu Tarihi<br />
                                <asp:TextBox ID="TextBox9" runat="server" BackColor="White" ForeColor="Black" TextMode="Date"></asp:TextBox>
                            </td>
                            <td>
                                Randevu Saati<br />
                                <asp:TextBox ID="TextBox10" runat="server" BackColor="White" ForeColor="Black" TextMode="Time"></asp:TextBox>
                            </td>
                            <td>
                                EMail<br />
                                <asp:TextBox ID="TextBox8" runat="server" BackColor="White" ForeColor="Black" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="text-align:center; width:99%; height:99%">
                        <tr>
                            <td style="width:80%; height:80%">
                                Adres<br />
                                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" BackColor="White" ForeColor="Black" MaxLength="1000"></asp:TextBox>
                            </td>
                            <td><br /><asp:Button ID="Button3" runat="server" Text="KAYIT LİSTESİ" OnClick="Button3_Click" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
