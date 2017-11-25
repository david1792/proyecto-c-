<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="listarAsistencia.aspx.cs" Inherits="ProyectoICBF.listarAsistencia" %>
    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="wrapper">
        
        <div class="col-md-6">
                <asp:Label ID="Label1" runat="server" Text="lbRegistro"></asp:Label>
                <asp:TextBox class="form-control" ID="tbRegistro" runat="server"></asp:TextBox>

                <asp:Label ID="Label3" runat="server" Text="lbFecha"></asp:Label>
                <asp:TextBox class="form-control" ID="tbFecha" runat="server"></asp:TextBox>

                <cc1:CalendarExtender Format="yyyy-MM-dd" ID="tbFecha_CalendarExtender" runat="server" Enabled="True" PopupButtonID="imgCalendario" TargetControlID="tbFecha">
                </cc1:CalendarExtender>

                <asp:ImageButton ID="imgCalendario" runat="server" Height="50px" ImageUrl="~/img/1.jpg" Width="50px"  />

                <asp:Label ID="Label4" runat="server" Text="lbEstado"></asp:Label>
                <asp:TextBox class="form-control" ID="tbEstado" runat="server"></asp:TextBox>

                <asp:Label ID="Label5" runat="server" Text="lbNiño"></asp:Label>
                <asp:DropDownList ID="ddlNinosAsistencia" runat="server" DataSourceID="LinqDataSourceNiñosAsistencia" DataTextField="nombres" DataValueField="idNino"></asp:DropDownList>
        </div>

        <asp:LinqDataSource ID="LinqDataSourceNiñosAsistencia" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idNino, nombres, apellidos)" TableName="ninos">
        </asp:LinqDataSource>

        <div class="form-group">
            <div class="col-md-6">
                <asp:Button class="form-control" ID="btActualizar" runat="server" Text="btActualizar" Height="26px" Width="71px" OnClick="btActualizar_Click" />
                <asp:Button class="form-control" ID="btEliminar" runat="server" Text="btEliminar" Height="26px" Width="71px" OnClick="btEliminar_Click" />
                <asp:Button class="form-control" ID="btCrear" runat="server" Text="btCrear" Height="26px" Width="71px" OnClick="btCrear_Click" />
                <asp:Button class="form-control" ID="btListar" runat="server" Text="btListar" Height="26px" Width="71px" OnClick="btListar_Click" />
            </div>
        </div>
        <br/><br/><br/>
        <div class="table-responsive">
            <div class="col-md-12">
                <asp:GridView class="table" ID="gvAsistencia" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSourceAsistencia" >
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

</asp:Content>
