<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asistencia.aspx.cs" Inherits="ProyectoICBF.Asistencia" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>

        <div>
            <div class="wrapper">

                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Registro"></asp:Label>
                    <asp:TextBox class="form-control" ID="tbRegistro" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label>
                    <asp:TextBox class="form-control" ID="tbFecha" runat="server"></asp:TextBox>

                    <cc1:CalendarExtender Format="yyyy-MM-dd" ID="tbFecha_CalendarExtender" runat="server" Enabled="True" PopupButtonID="imgCalendario" TargetControlID="tbFecha">
                    </cc1:CalendarExtender>
                    <asp:ImageButton ID="imgCalendario" runat="server" Height="20px" ImageUrl="~/img/1.jpg" Width="20px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Estado"></asp:Label>
                    <asp:DropDownList ID="ddlEstado" runat="server">
                        <asp:ListItem>buen estado animico</asp:ListItem>
                        <asp:ListItem>enfermo</asp:ListItem>
                        <asp:ListItem>sin desayunar</asp:ListItem>
                        <asp:ListItem>no entro a clase</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Niño"></asp:Label>
                    <asp:DropDownList ID="ddlNinosAsistencia" runat="server" DataSourceID="LinqDataSourceNiñosAsistencia" DataTextField="nombres" DataValueField="idNino"></asp:DropDownList>
                </div>

                <asp:LinqDataSource ID="LinqDataSourceNiñosAsistencia" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idNino, nombres, apellidos)" TableName="ninos">
                </asp:LinqDataSource>

                <div class="form-group">
                    <div class="col-md-6">
                        <asp:Button class="form-control" ID="btActualizar" runat="server" Text="Actualizar asistencia" Height="26px" Width="129px" OnClick="btActualizar_Click" />
                        <asp:Button class="form-control" ID="btEliminar" runat="server" Text="Eliminar asistencia" Height="26px" Width="118px" OnClick="btEliminar_Click" />
                        <asp:Button class="form-control" ID="btCrear" runat="server" Text="Crear asistencia" Height="26px" Width="103px" OnClick="btCrear_Click" />
                        <asp:Label ID="labelError" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="table-responsive">
                    <div class="col-md-12">
                        <asp:GridView class="table" ID="gvAsistencia" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSourceAsistencia">
                            <Columns>
                                <asp:BoundField DataField="noRegistro" HeaderText="noRegistro" ReadOnly="True" SortExpression="noRegistro" />
                                <asp:BoundField DataField="nino.nombres" HeaderText="nIdNino" ReadOnly="True" SortExpression="nIdNino" />
                                <asp:BoundField DataField="fecha" HeaderText="fecha" ReadOnly="True" SortExpression="fecha" />
                                <asp:BoundField DataField="estadoNino" HeaderText="estadoNino" ReadOnly="True" SortExpression="estadoNino" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <asp:LinqDataSource ID="LinqDataSourceAsistencia" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (noRegistro, nIdNino, fecha, estadoNino, nino)" TableName="asistencias">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
