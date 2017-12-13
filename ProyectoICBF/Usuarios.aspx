<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="ProyectoICBF.Usuarios" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/estilosIndex.css" />
    <link rel="stylesheet" href="fonts/style.css" />
    <title>Listar usuarios</title>

</head>
<body>
    <div>
        <div class="estilosNavbar">
            <ul>
                <li><a href="Usuarios.aspx">Usuarios</a></li>
                <li><a href="jardin.aspx">Jardines</a></li>
                <li><a href="ninos.aspx">Niños</a></li>
                <li><a href="asistencia.aspx">Asistencia</a></li>
            </ul>
        </div>
        <div class="formUsuario form-group">
            <form id="form1" runat="server">

                <asp:ScriptManager runat="server"></asp:ScriptManager>

                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="id usuario"></asp:Label>
                    <asp:TextBox ID="tbIdUsuario" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>



                <div class=" col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="Nombres"></asp:Label>
                    <asp:TextBox ID="tbNombre" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="Apellidos"></asp:Label>
                    <asp:TextBox ID="tbApellido" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>


                <div class="col-md-6 ">
                    <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>
                    <asp:TextBox ID="tbTelefono" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>


                <div class="col-md-6 ">
                    <asp:Label ID="Label6" runat="server" Text="Direccion"></asp:Label>
                    <asp:TextBox ID="tbDireccion" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>

                <div class=" col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="Correo electronico"></asp:Label>
                    <asp:TextBox ID="tbEmail" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>


                <div class="col-md-6 ">
                    <asp:Label ID="Label8" runat="server" Text="estado"></asp:Label>
                    <asp:TextBox ID="tbEstado" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6 ">
                    <asp:Label ID="Label9" runat="server" Text="clave"></asp:Label>
                    <asp:TextBox ID="tbClave" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6 ">
                    <asp:Label ID="Label10" runat="server" Text="tipo usuario"></asp:Label>
                    <asp:DropDownList ID="ddlTipoUsuario" CssClass="input-group input-sm" runat="server" DataSourceID="LinqDataSource1TipoUsuario" DataTextField="descripcionEstado" DataValueField="idTipoUsuario"></asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1TipoUsuario" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idTipoUsuario, descripcionEstado)" TableName="tipoUsuarios">
                    </asp:LinqDataSource>
                </div>

                <div class="col-md-6 ">
                    <asp:Label ID="Label4" runat="server" Text="Fecha Nacimiento"></asp:Label>
                    <asp:TextBox ID="tbFechaNacimiento" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/img/1.jpg" Width="20px" />
                    <cc1:CalendarExtender CssClass="" Format="yyyy-MM-dd" ID="CalendarExtender1" runat="server" Enabled="True" PopupButtonID="ImageButton1" TargetControlID="tbFechaNacimiento"></cc1:CalendarExtender>
                </div>
                <br />
                <br />
                <asp:Button ID="btCrear" runat="server" Text="Crear usuario" OnClick="btCrear_Click" CssClass="btn btn-primary" />
                <asp:Button ID="btEliminar" runat="server" Text="Eliminar usuario" OnClick="btEliminar_Click" CssClass="btn btn-danger" />
                <asp:Button ID="btEditar" runat="server" Text="editar usuario" OnClick="btEditar_Click" CssClass="btn btn-warning" />
                <asp:Label ID="labelError" runat="server" Text=""></asp:Label>
                <br />
                <br />
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
                <asp:Button ID="cerrarSesion" runat="server" CssClass="btn btn-info" Text="cerrar sesion" />
            </form>
        </div>
    </div>
</body>
</html>
