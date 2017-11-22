<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listarNinos.aspx.cs" Inherits="ProyectoICBF.listarNinos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSourceNinos">
        <Columns>
            <asp:BoundField DataField="nombres" HeaderText="nombres" ReadOnly="True" SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" ReadOnly="True" SortExpression="apellidos" />
            <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" ReadOnly="True" SortExpression="FechaNacimiento" />
            <asp:BoundField DataField="tipoSangre" HeaderText="tipoSangre" ReadOnly="True" SortExpression="tipoSangre" />
            <asp:BoundField DataField="ciudadOrigen" HeaderText="ciudadOrigen" ReadOnly="True" SortExpression="ciudadOrigen" />
            <asp:BoundField DataField="aIdAcudiente" HeaderText="aIdAcudiente" ReadOnly="True" SortExpression="aIdAcudiente" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" ReadOnly="True" SortExpression="telefono" />
            <asp:BoundField DataField="direccion" HeaderText="direccion" ReadOnly="True" SortExpression="direccion" />
            <asp:BoundField DataField="EPS" HeaderText="EPS" ReadOnly="True" SortExpression="EPS" />
            <asp:BoundField DataField="jIdJardin" HeaderText="jIdJardin" ReadOnly="True" SortExpression="jIdJardin" />
            <asp:BoundField DataField="uIdUsuarioRegistra" HeaderText="uIdUsuarioRegistra" ReadOnly="True" SortExpression="uIdUsuarioRegistra" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSourceNinos" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (nombres, apellidos, FechaNacimiento, tipoSangre, ciudadOrigen, aIdAcudiente, telefono, direccion, EPS, jIdJardin, uIdUsuarioRegistra)" TableName="ninos">
    </asp:LinqDataSource>
</asp:Content>
