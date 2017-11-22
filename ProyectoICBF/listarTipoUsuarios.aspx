<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listarTipoUsuarios.aspx.cs" Inherits="ProyectoICBF.listarTipoUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSourceTipoUsuarios">
        <Columns>
            <asp:BoundField DataField="idTipoUsuario" HeaderText="idTipoUsuario" ReadOnly="True" SortExpression="idTipoUsuario" />
            <asp:BoundField DataField="descripcionEstado" HeaderText="descripcionEstado" ReadOnly="True" SortExpression="descripcionEstado" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSourceTipoUsuarios" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idTipoUsuario, descripcionEstado)" TableName="tipoUsuarios">
    </asp:LinqDataSource>
</asp:Content>
