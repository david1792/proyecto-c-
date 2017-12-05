<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tiposUsuario.aspx.cs" Inherits="ProyectoICBF.tiposUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br/>
            <asp:Button ID="btCrear" runat="server" Text="crear"/>
            <asp:Button ID="btEditar" runat="server" Text="Editar"/>
            <asp:Button ID="btElimibnar" runat="server" Text="Eliminar"/>
            <br/>
            <asp:GridView ID="gvTiposUsuario" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1TipoUsuario">
                <Columns>
                    <asp:BoundField DataField="idTipoUsuario" HeaderText="idTipoUsuario" ReadOnly="True" SortExpression="idTipoUsuario" />
                    <asp:BoundField DataField="descripcionEstado" HeaderText="descripcionEstado" ReadOnly="True" SortExpression="descripcionEstado" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1TipoUsuario" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idTipoUsuario, descripcionEstado)" TableName="tipoUsuarios">
            </asp:LinqDataSource>
        </div>
    </form>

</body>
</html>

