<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asistencia.aspx.cs" Inherits="ProyectoICBF.Asistencia" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/estilosIndex.css" />
    <link rel="stylesheet" href="fonts/style.css" />
    <title></title>
</head>
<body>
    <div class="estilosNavbar">
        <ul>
            <li><a href="Usuarios.aspx">Inicio</a></li>
        </ul>
    </div>
    <div class="formUsuario form-group">
        <form id="form1" runat="server">

            <asp:ScriptManager runat="server"></asp:ScriptManager>

            <div class="col-md-6">
                <asp:Label ID="Label1" runat="server" Text="Registro"></asp:Label>
                <asp:TextBox class="form-control" CssClass="input-group input-sm" ID="tbRegistro" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="Label5" runat="server" Text="Niño"></asp:Label>
                <asp:DropDownList ID="ddlNinosAsistencia" CssClass="input-group input-sm" runat="server" DataSourceID="LinqDataSourceNiñosAsistencia" DataTextField="nombres" DataValueField="idNino"></asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSourceNiñosAsistencia" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idNino, nombres, apellidos)" TableName="ninos">
                </asp:LinqDataSource>
            </div>

            <div class="col-md-6">
                <asp:Label ID="Label4" runat="server" Text="Estado"></asp:Label>
                <asp:DropDownList ID="ddlEstado" CssClass="input-group input-sm" runat="server">
                    <asp:ListItem>buen estado animico</asp:ListItem>
                    <asp:ListItem>enfermo</asp:ListItem>
                    <asp:ListItem>sin desayunar</asp:ListItem>
                    <asp:ListItem>no entro a clase</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-6">
                <asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label>
                <asp:TextBox class="form-control" CssClass="input-group input-sm" ID="tbFecha" runat="server"></asp:TextBox>
                <cc1:CalendarExtender Format="yyyy-MM-dd" ID="tbFecha_CalendarExtender" runat="server" Enabled="True" PopupButtonID="imgCalendario" TargetControlID="tbFecha">
                </cc1:CalendarExtender>
                <asp:ImageButton ID="imgCalendario" runat="server" Height="20px" ImageUrl="~/img/1.jpg" Width="20px" />
            </div>

            <asp:Button  CssClass="btn btn-warning" ID="btActualizar" runat="server" Text="Actualizar asistencia"  OnClick="btActualizar_Click" />
            <asp:Button  CssClass="btn btn-danger" ID="btEliminar" runat="server" Text="Eliminar asistencia"  OnClick="btEliminar_Click" />
            <asp:Button  CssClass="btn btn-primary" ID="btCrear" runat="server" Text="Crear asistencia"  OnClick="btCrear_Click" />
            <asp:Label ID="labelError" runat="server" Text=""></asp:Label>
            <br />
            <br />

            <asp:GridView class="table" ID="gvAsistencia" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSourceAsistencia">
                <Columns>
                    <asp:BoundField DataField="noRegistro" HeaderText="noRegistro" ReadOnly="True" SortExpression="noRegistro" />
                    <asp:BoundField DataField="nino.nombres" HeaderText="nIdNino" ReadOnly="True" SortExpression="nIdNino" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" ReadOnly="True" SortExpression="fecha" />
                    <asp:BoundField DataField="estadoNino" HeaderText="estadoNino" ReadOnly="True" SortExpression="estadoNino" />
                </Columns>
            </asp:GridView>

            <asp:LinqDataSource ID="LinqDataSourceAsistencia" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (noRegistro, nIdNino, fecha, estadoNino, nino)" TableName="asistencias">
            </asp:LinqDataSource>
            <asp:Button ID="cerrarSesion" runat="server" CssClass="btn btn-info" Text="cerrar sesion" OnClick="cerrarSesion_Click" />

        </form>
    </div>
</body>
</html>
