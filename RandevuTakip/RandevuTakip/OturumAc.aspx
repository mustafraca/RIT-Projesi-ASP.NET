<%@ Page Title="Oturum Aç" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="OturumAc.aspx.cs" Inherits="RandevuTakip.OturumAc" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="banner">
        <div class="inner">
            <div style="text-align:center; color:white">
            <span class="fa-4x">Oturum Aç</span><br />
            <span>Kayıtlı değilseniz "KAYIT OL" bölümünden kayıt olunuz.</span><br />
             <span class="fa-4x"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></span>
            </div> 
        </div>
    </section>

    <div id="main">
        <div>
            <table style="width:100%; height:100%">
                <tr>
                    <td align="center">
                        <table style="text-align:center; width:30%; height:30%">
                            <tr>
                                <td>Kullanıcı Adı:</td>
                                <td><asp:TextBox ID="TextBox1" runat="server" MaxLength="20" BackColor="White" ForeColor="Black"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Şifre:</td>
                                <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" MaxLength="20" BackColor="White" ForeColor="Black"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button ID="Button1" runat="server" Width="200" Text="Oturum Aç" OnClick="Button1_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>