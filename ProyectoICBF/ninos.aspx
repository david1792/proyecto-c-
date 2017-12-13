<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ninos.aspx.cs" Inherits="ProyectoICBF.ninos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
            <li><a href="asistencia.aspx">Asistencia</a></li>
        </ul>
    </div>
    <div class="formUsuario form-group">
        <form id="form1" runat="server">
            <asp:ScriptManager runat="server"></asp:ScriptManager>

            <div class="col-md-6 ">
                <asp:Label ID="Label1" runat="server" Text="id niño"></asp:Label>
                <asp:TextBox ID="tbIdNino" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label2" runat="server" Text="nombre"></asp:Label>
                <asp:TextBox ID="tbNombre" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label3" runat="server" Text="apellido"></asp:Label>
                <asp:TextBox ID="tbApellido" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>



            <div class="col-md-6 ">
                <asp:Label ID="Label8" runat="server" Text="telefono"></asp:Label>
                <asp:TextBox ID="tbTelefono" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label9" runat="server" Text="direccion"></asp:Label>
                <asp:TextBox ID="tbDireccion" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label10" runat="server" Text="eps"></asp:Label>
                <asp:TextBox ID="tbEps" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label11" runat="server" Text="jardin"></asp:Label>
                <asp:DropDownList ID="ddJardin" CssClass="input-group input-sm" runat="server" DataSourceID="LinqDataSource1NinosJardin" DataTextField="nombre" DataValueField="idJardin" Height="16px"></asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1NinosJardin" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idJardin, nombre)" TableName="jardines" Where="estado == @estado">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="1" Name="estado" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label5" runat="server" Text="tipo sangre"></asp:Label>
                <asp:DropDownList ID="ddSangre" CssClass="input-group input-sm" runat="server">
                    <asp:ListItem Value="O-">O-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label6" runat="server" Text="ciudad origen"></asp:Label>
                <asp:DropDownList ID="ddCiudad" CssClass="input-group input-sm" runat="server">
                    <asp:ListItem>bogota</asp:ListItem>
                    <asp:ListItem>medellin</asp:ListItem>
                    <asp:ListItem>cali</asp:ListItem>
                    <asp:ListItem>santamarta</asp:ListItem>
                    <asp:ListItem>barranquilla</asp:ListItem>
                    <asp:ListItem>arauquita</asp:ListItem>
                    <asp:ListItem>bucaramanga</asp:ListItem>
                    <asp:ListItem>villavicencio</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label7" runat="server" Text="acudiente"></asp:Label>
                <asp:DropDownList ID="ddAcudiente" CssClass="input-group input-sm" runat="server" DataSourceID="LinqDataSource1NinoAcudiente" DataTextField="nombres" DataValueField="idUsuario"></asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1NinoAcudiente" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idUsuario, nombres, apellidos)" TableName="usuarios" Where="tUsuario == @tUsuario">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="3" Name="tUsuario" Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </div>

            <div class="col-md-6 ">
                <asp:Label ID="Label4" runat="server" Text="fecha nacimiento"></asp:Label>
                <asp:TextBox ID="tbFecha" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                <cc1:CalendarExtender Format="yyyy-MM-dd" ID="tbFecha_CalendarExtender" runat="server" Enabled="True" PopupButtonID="imgCalendario" TargetControlID="tbFecha">
                </cc1:CalendarExtender>
                <asp:ImageButton ID="imgCalendario" runat="server" Height="20px" ImageUrl="~/img/1.jpg" Width="20px" />
            </div>

            <br />
            <br />
            <asp:Button ID="btCrear" runat="server" CssClass="btn btn-primary" Text="Crear niño" OnClick="btCrear_Click" />
            <asp:Button ID="btEliminar" runat="server" CssClass="btn btn-danger" Text="eliminar niño" OnClick="btEliminar_Click" />
            <asp:Button ID="btEditar" runat="server" CssClass="btn btn-warning" Text="actualizar niño" OnClick="btEditar_Click" />
            <asp:Label ID="labelError" runat="server" Text=""></asp:Label>
            <br />
            <br />

            <asp:GridView ID="gvNinos" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1NinosListar">
                <Columns>
                    <asp:BoundField DataField="idNino" HeaderText="idNino" ReadOnly="True" SortExpression="idNino" />
                    <asp:BoundField DataField="nombres" HeaderText="nombres" ReadOnly="True" SortExpression="nombres" />
                    <asp:BoundField DataField="apellidos" HeaderText="apellidos" ReadOnly="True" SortExpression="apellidos" />
                    <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" ReadOnly="True" SortExpression="FechaNacimiento" />
                    <asp:BoundField DataField="tipoSangre" HeaderText="tipoSangre" ReadOnly="True" SortExpression="tipoSangre" />
                    <asp:BoundField DataField="ciudadOrigen" HeaderText="ciudadOrigen" ReadOnly="True" SortExpression="ciudadOrigen" />
                    <asp:BoundField DataField="EPS" HeaderText="EPS" ReadOnly="True" SortExpression="EPS" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" ReadOnly="True" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" ReadOnly="True" SortExpression="telefono" />
                    <asp:BoundField DataField="aIdAcudiente" HeaderText="aIdAcudiente" ReadOnly="True" SortExpression="aIdAcudiente" />
                    <asp:BoundField DataField="jIdJardin" HeaderText="jIdJardin" ReadOnly="True" SortExpression="jIdJardin" />
                    <asp:BoundField DataField="uIdUsuarioRegistra" HeaderText="uIdUsuarioRegistra" ReadOnly="True" SortExpression="uIdUsuarioRegistra" />
                </Columns>
            </asp:GridView>

            <asp:LinqDataSource ID="LinqDataSource1NinosListar" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idNino, nombres, apellidos, FechaNacimiento, tipoSangre, ciudadOrigen, jardine, avanceAcademicos, asistencias, EPS, direccion, telefono, usuario, aIdAcudiente, jIdJardin, uIdUsuarioRegistra)" TableName="ninos">
            </asp:LinqDataSource>
            <asp:Button ID="cerrarSesion" runat="server" CssClass="btn btn-info" Text="cerrar sesion" OnClick="cerrarSesion_Click" />
    </div>
    </form>
    </div>
</body>
</html>
