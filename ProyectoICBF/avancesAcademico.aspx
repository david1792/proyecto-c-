<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="avancesAcademico.aspx.cs" Inherits="ProyectoICBF.avancesAcademico" %>

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
            <li><a href="asistencia.aspx">Inicio</a></li>
        </ul>
    </div>
    <div class="formUsuario form-group">
        <form id="form1" runat="server">
            <asp:ScriptManager runat="server"></asp:ScriptManager>

            <div class="col-md-6">
                <asp:Label ID="lbNoRegistro" runat="server" Text="Numero de registro"></asp:Label>
                <asp:TextBox ID="tbNoRegistro" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lbNivel" runat="server" Text="Nivel"></asp:Label>
                <asp:TextBox ID="tbNivel" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lbNota" runat="server" Text="Nota"></asp:Label>
                <asp:TextBox ID="tbNota" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lbDescripcion" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="tbDescripcion" CssClass="input-group input-sm" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lbIdNino" runat="server" Text="niño"></asp:Label>
                <asp:DropDownList ID="ddNinos" runat="server" CssClass="input-group input-sm" DataSourceID="LinqDataSource1Ninos" DataTextField="nombres" DataValueField="idNino"></asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1Ninos" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idNino, nombres, apellidos)" TableName="ninos">
                </asp:LinqDataSource>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lbFechaCalificacion" runat="server" Text="Fecha de calificacion"></asp:Label>
                <asp:TextBox ID="tbFechaCalificacion" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="~/img/1.jpg" Width="20px" />
                <cc1:CalendarExtender Format="yyyy-MM-dd" ID="CalendarExtender2" runat="server" Enabled="True" PopupButtonID="ImageButton2" TargetControlID="tbFechaCalificacion"></cc1:CalendarExtender>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lbAnioEscolar" runat="server" Text="Año escolar"></asp:Label>
                <asp:TextBox ID="tbAnioEscolar" CssClass="input-group input-sm" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/img/1.jpg" Width="20px" />
                <cc1:CalendarExtender Format="yyyy-MM-dd" ID="CalendarExtender1" runat="server" Enabled="True" PopupButtonID="ImageButton1" TargetControlID="tbAnioEscolar"></cc1:CalendarExtender>
            </div>
            <br />

            <asp:Button ID="btCrear" runat="server" Text="crear" OnClick="btCrear_Click" />
            <asp:Button ID="btEditar" runat="server" Text="Editar" OnClick="btEditar_Click" />
            <asp:Button ID="btElimibnar" runat="server" Text="Eliminar" OnClick="btElimibnar_Click" />
            <br />
            <br />

            <asp:GridView ID="gvAvanceAcademico" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1AvanceAcademico">
                <Columns>
                    <asp:BoundField DataField="noRegsitro" HeaderText="noRegsitro" ReadOnly="True" SortExpression="noRegsitro" />
                    <asp:BoundField DataField="nino.Nombres" HeaderText="nIdNino" ReadOnly="True" SortExpression="nIdNino" />
                    <asp:BoundField DataField="anioEscolar" HeaderText="anioEscolar" ReadOnly="True" SortExpression="anioEscolar" />
                    <asp:BoundField DataField="nivel" HeaderText="nivel" ReadOnly="True" SortExpression="nivel" />
                    <asp:BoundField DataField="nota" HeaderText="nota" ReadOnly="True" SortExpression="nota" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" ReadOnly="True" SortExpression="descripcion" />
                    <asp:BoundField DataField="fechaCalificacion" HeaderText="fechaCalificacion" ReadOnly="True" SortExpression="fechaCalificacion" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1AvanceAcademico" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (noRegsitro, nIdNino, anioEscolar, nivel, nota, descripcion, fechaCalificacion, nino)" TableName="avanceAcademicos">
            </asp:LinqDataSource>
            <br />

            <asp:Button ID="cerrarSesion" runat="server" Text="cerrar sesion" OnClick="cerrarSesion_Click" />
        </form>
    </div>
</body>
</html>
