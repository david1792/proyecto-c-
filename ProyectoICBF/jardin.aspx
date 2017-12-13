<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jardin.aspx.cs" Inherits="ProyectoICBF.jardin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/estilosIndex.css" />
    <link rel="stylesheet" href="fonts/style.css" />
</head>

<body>
    <div class="estilosNavbar">
        <ul>
            <li><a href="Usuarios.aspx">Usuarios</a></li>
            <li><a href="jardin.aspx">Jardines</a></li>
            <li><a href="ninos.aspx">Niños</a></li>
            <li><a href="Usuarios.aspx"><i class="icon icon-home3">Inicio</i></a></li>
        </ul>
    </div>
    <div class="formUsuario form-group">
        <form id="form1" runat="server">
            <div>
                <div class="col-md-6">
                    <asp:Label runat="server" Text="Id jardin"></asp:Label>
                    <asp:TextBox ID="tbIdJardin" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <asp:Label runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="tbNombre" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <asp:Label runat="server" Text="Direccion"></asp:Label>
                    <asp:TextBox ID="tbDireccion" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <asp:Label runat="server" Text="Encargado"></asp:Label>
                    <asp:DropDownList ID="ddEncargado" CssClass="input-group input-sm" runat="server" DataSourceID="LinqDataSource1Encargado" DataTextField="nombres" DataValueField="idUsuario"></asp:DropDownList>
                </div>

                <div class="col-md-6">
                    <asp:Label runat="server" Text="tbEstado"></asp:Label>
                    <asp:DropDownList ID="ddEstado" CssClass="input-group input-sm" runat="server">
                        <asp:ListItem Value="1">aprobado</asp:ListItem>
                        <asp:ListItem Value="0">desaprobado</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />

                <asp:Button ID="btCrear" runat="server" CssClass="btn btn-primary" Text="Crear" OnClick="btCrear_Click" />
                <asp:Button ID="btActualizar" runat="server" CssClass="btn btn-warning" Text="Actualizar" OnClick="btActualizar_Click" />
                <asp:Button ID="btEliminar" runat="server" CssClass="btn btn-danger" Text="Eliminar" OnClick="btEliminar_Click" />
                <asp:Label ID="labelError" runat="server" Text=""></asp:Label>

                <br />
                <br />
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
                <asp:LinqDataSource ID="LinqDataSource1Encargado" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idUsuario, nombres, apellidos)" TableName="usuarios" Where="tUsuario == 1 || tUsuario == 2">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="2" Name="tUsuario1" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="tUsuario1" Type="Int32" />

                    </WhereParameters>
                </asp:LinqDataSource>
                <asp:Button ID="cerrarSesion" runat="server" CssClass="btn btn-info" Text="cerrar sesion" OnClick="cerrarSesion_Click" />
            </div>
        </form>
    </div>
</body>
</html>
