<%@ Page Language="C#" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Şifre 
    değiştir</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Çıkış 
    yap</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Kişisel 
    bilgiler</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Üye 
    sil</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    MERHABA
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/calisma.mdb" 
        DeleteCommand="DELETE FROM [Table1] WHERE [kullaniciadi] = ?" 
        InsertCommand="INSERT INTO [Table1] ([ad_soyad], [d_yeri], [d_tarih], [kullaniciadi], [sifre]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Table1]" 
        UpdateCommand="UPDATE [Table1] SET [ad_soyad] = ?, [d_yeri] = ?, [d_tarih] = ?, [sifre] = ? WHERE [kullaniciadi] = ?">
        <DeleteParameters>
            <asp:ControlParameter ControlID="Label1" Name="kullaniciadi" 
                PropertyName="Text" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ad_soyad" Type="String" />
            <asp:Parameter Name="d_yeri" Type="String" />
            <asp:Parameter Name="d_tarih" Type="String" />
            <asp:Parameter Name="sifre" Type="String" />
            <asp:Parameter Name="kullaniciadi" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ad_soyad" Type="String" />
            <asp:Parameter Name="d_yeri" Type="String" />
            <asp:Parameter Name="d_tarih" Type="String" />
            <asp:Parameter Name="kullaniciadi" Type="String" />
            <asp:Parameter Name="sifre" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="kullaniciadi" DataSourceID="AccessDataSource1">
        <Columns>
            <asp:BoundField DataField="ad_soyad" HeaderText="ad_soyad" 
                SortExpression="ad_soyad" />
            <asp:BoundField DataField="d_yeri" HeaderText="d_yeri" 
                SortExpression="d_yeri" />
            <asp:BoundField DataField="d_tarih" HeaderText="d_tarih" 
                SortExpression="d_tarih" />
            <asp:BoundField DataField="kullaniciadi" HeaderText="kullaniciadi" 
                ReadOnly="True" SortExpression="kullaniciadi" />
            <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
        </Columns>
    </asp:GridView>
    <br />
</form>
</body>
</html>
