<%@ Page Title="Ana Sayfa" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RandevuTakip.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section id="banner">
		<div class="inner">
			<header>
				<h1>RİT'e Hoşgeldiniz.</h1>
			</header>
			<div class="flex" style="font-size:18px">
				<div>
					<span class="icon fa-calendar"></span>
					<h3>Size Özel</h3>
					<p>Randevuları dilediğiniz gibi oluşturun</p>
                    <p>veya düzenleyin.</p>
				</div>
				<div>
					<span class="icon fa-archive"></span>
					<h3>Web Ortamı</h3>
					<p>Arşivleri kullanmanıza artık</p>
                    <p>gerek yok.</p>
				</div>
				<div>
					<span class="icon fa-bug"></span>
					<h3>Güvenli</h3>
					<p>Randevularınız ve iş görüşmeleriniz</p>
                    <p>web ortamında güvende.</p>
				</div>
			</div>
			<footer>
				<a href="OturumAc.aspx" class="button">Oturum Aç</a>
			</footer>
		</div>
	</section>

	<section id="three" class="wrapper align-center">
		<div class="inner">
			<div class="flex flex-2">
				<article>
					<div class="image round">
						<img src="images/pic01.png" alt="Pic 01" />
					</div>
					<header>
						<h3>Oturum Aç</h3>
					</header>
					<p>Panelinizin güvenliği bizim için önemlidir.<br />Öncelikle oturum açmanız gerekmektedir.<br />Aksi halde panelinize erişim sağlayamazsınız.</p>
					<footer>
						<a href="OturumAc.aspx" class="button">Oturum Aç</a>
					</footer>
				</article>
				<article>
					<div class="image round">
						<img src="images/pic02.png" alt="Pic 02" />
					</div>
					<header>
						<h3>Panele Git</h3>
					</header>
					<p>İşlemlerinizi panel üzerinde gerçekleştirebilirsiniz.<br />İşlem menülerine erişmek için öncelikle oturum açmanız gerekir.<br />Oturum açtıysanız panele direkt erişebilirsiniz.</p>
					<footer>
						<a href="Panel.aspx" class="button">Panele Git</a>
					</footer>
				</article>
			</div>
		</div>
	</section>

</asp:Content>
