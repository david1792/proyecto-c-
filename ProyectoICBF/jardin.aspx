<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jardin.aspx.cs" Inherits="ProyectoICBF.jardin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>

            <asp:label runat="server" text="Id jardin"></asp:label>
            <asp:TextBox ID="tbIdJardin" runat="server"></asp:TextBox>
            <br />
            <asp:label runat="server" text="Nombre"></asp:label>
            <asp:TextBox ID="tbNombre" runat="server"></asp:TextBox>
            <br />
            <asp:label runat="server" text="Direccion"></asp:label>
            <asp:TextBox ID="tbDireccion" runat="server"></asp:TextBox>
            <br />
            <asp:label runat="server" text="Encargado"></asp:label>
            <asp:DropDownList ID="ddEncargado" runat="server" DataSourceID="LinqDataSource1Encargado" DataTextField="nombres" DataValueField="idUsuario"></asp:DropDownList>
            <br />
            <asp:label runat="server" text="tbEstado"></asp:label>
            <asp:DropDownList ID="ddEstado" runat="server">
                <asp:ListItem Value="1">aprobado</asp:ListItem>
                <asp:ListItem Value="0">desaprobado</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btCrear" runat="server" Text="Crear" OnClick="btCrear_Click" />
            <asp:Button ID="btActualizar" runat="server" Text="Actualizar" OnClick="btActualizar_Click" />
            <asp:Button ID="btEliminar" runat="server" Text="Eliminar" OnClick="btEliminar_Click" />
            <asp:Label ID="labelError" runat="server" Text=""></asp:Label>
            <asp:GridView ID="gvJardines" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1Jardines">
                <Columns>
                    <asp:BoundField DataField="idJardin" HeaderText="idJardin" ReadOnly="True" SortExpression="idJardin" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" ReadOnly="True" SortExpression="nombre" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" ReadOnly="True" SortExpression="direccion" />
                    <asp:BoundField DataField="encargado" HeaderText="encargado" ReadOnly="True" SortExpression="encargado" />
                    <asp:BoundField DataField="estado" HeaderText="estado" ReadOnly="True" SortExpression="estado" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1Jardines" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idJardin, nombre, direccion, encargado, estado)" TableName="jardines">
            </asp:LinqDataSource>
            <br />
            <asp:LinqDataSource ID="LinqDataSource1Encargado" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idUsuario, nombres, apellidos)" TableName="usuarios">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
