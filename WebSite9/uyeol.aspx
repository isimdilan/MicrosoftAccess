<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uyeol.aspx.cs" Inherits="uyeol" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        Ad soyad :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Doğum yeri :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        Doğum Tarihi :
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        Kullanici adı :
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>
        Şifre :
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </p>
    <p>
        Şifre Tekrar :
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </p>
    <p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/calisma.mdb" 
            DeleteCommand="DELETE FROM [Table1] WHERE [kullaniciadi] = ?" 
            InsertCommand="INSERT INTO [Table1] ([ad_soyad], [d_yeri], [d_tarih], [kullaniciadi], [sifre]) VALUES (?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Table1]" 
            UpdateCommand="UPDATE [Table1] SET [ad_soyad] = ?, [d_yeri] = ?, [d_tarih] = ?, [sifre] = ? WHERE [kullaniciadi] = ?">
            <DeleteParameters>
                <asp:Parameter Name="kullaniciadi" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad_soyad" Type="String" />
                <asp:Parameter Name="d_yeri" Type="String" />
                <asp:Parameter Name="d_tarih" Type="String" />
                <asp:Parameter Name="sifre" Type="String" />
                <asp:Parameter Name="kullaniciadi" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ad_soyad" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="d_yeri" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="d_tarih" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="kullaniciadi" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="sifre" PropertyName="Text" 
                    Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    </p>
    <p>
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
    </p>
</form>
</body>
</html>
