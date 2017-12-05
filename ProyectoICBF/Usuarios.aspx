<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="ProyectoICBF.Usuarios" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listar usuarios</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:scriptmanager runat="server"></asp:scriptmanager>

        <div>

            <asp:Label ID="Label1" runat="server" Text="id usuario"></asp:Label>
            <asp:TextBox ID="tbIdUsuario" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label2" runat="server" Text="nombre"></asp:Label>
            <asp:TextBox ID="tbNombre" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label3" runat="server" Text="apellido"></asp:Label>
            <asp:TextBox ID="tbApellido" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label4" runat="server" Text="fecha nacimiento"></asp:Label>
            <asp:TextBox ID="tbFechaNacimiento" runat="server"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/img/1.jpg" Width="20px" />
            <cc1:CalendarExtender Format="yyyy-MM-dd" ID="CalendarExtender1" runat="server"  Enabled="True" PopupButtonID="ImageButton1" TargetControlID="tbFechaNacimiento"></cc1:CalendarExtender>
            <br/>
            <asp:Label ID="Label5" runat="server" Text="telefono"></asp:Label>
            <asp:TextBox ID="tbTelefono" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label6" runat="server" Text="direccion"></asp:Label>
            <asp:TextBox ID="tbDireccion" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label7" runat="server" Text="email"></asp:Label>
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label8" runat="server" Text="estado"></asp:Label>
            <asp:TextBox ID="tbEstado" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label9" runat="server" Text="clave"></asp:Label>
            <asp:TextBox ID="tbClave" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label10" runat="server" Text="tipo usuario"></asp:Label>
            <asp:DropDownList ID="ddlTipoUsuario" runat="server" DataSourceID="LinqDataSource1TipoUsuario" DataTextField="descripcionEstado" DataValueField="idTipoUsuario"></asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1TipoUsuario" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idTipoUsuario, descripcionEstado)" TableName="tipoUsuarios">
            </asp:LinqDataSource>
            <br/><br/>
            <asp:Button ID="btCrear" runat="server" Text="Crear usuario" OnClick="btCrear_Click" />
            <asp:Button ID="btEliminar" runat="server" Text="Eliminar usuario" OnClick="btEliminar_Click" />
            <asp:Button ID="btEditar" runat="server" Text="editar usuario" OnClick="btEditar_Click" />
            <asp:Label ID="labelError" runat="server" Text=""></asp:Label>
            <br/><br/>
            <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1ListarUsuarios">
                <Columns>
                    <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" ReadOnly="True" SortExpression="idUsuario" />
                    <asp:BoundField DataField="nombres" HeaderText="nombres" ReadOnly="True" SortExpression="nombres" />
                    <asp:BoundField DataField="apellidos" HeaderText="apellidos" ReadOnly="True" SortExpression="apellidos" />
                    <asp:BoundField DataField="fechaNace" HeaderText="fechaNace" ReadOnly="True" SortExpression="fechaNace" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" ReadOnly="True" SortExpression="telefono" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" ReadOnly="True" SortExpression="direccion" />
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="estado" HeaderText="estado" ReadOnly="True" SortExpression="estado" />
                    <asp:BoundField DataField="clave" HeaderText="clave" ReadOnly="True" SortExpression="clave" />
                    <asp:BoundField DataField="tipoUsuario.descripcionEstado" HeaderText="tipoUsuario" ReadOnly="True" SortExpression="tipoUsuario" />
                </Columns>
            </asp:GridView>



            <asp:LinqDataSource ID="LinqDataSource1ListarUsuarios" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idUsuario, nombres, apellidos, fechaNace, telefono, direccion, email, estado, clave, jardines, tipoUsuario)" TableName="usuarios">
            </asp:LinqDataSource>

        </div>
    </form>
</body>
</html>
