<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listarUsuarios.aspx.cs" Inherits="ProyectoICBF.listarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form>
    <br />
        <asp:GridView ID="gvTablaUsuarios" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSourceUsuarios" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" ReadOnly="True" SortExpression="idUsuario" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" ReadOnly="True" SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" ReadOnly="True" SortExpression="apellidos" />
                <asp:BoundField DataField="fechaNace" HeaderText="fechaNace" ReadOnly="True" SortExpression="fechaNace" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" ReadOnly="True" SortExpression="telefono" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" ReadOnly="True" SortExpression="direccion" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="clave" HeaderText="clave" ReadOnly="True" SortExpression="clave" />
                <asp:BoundField DataField="tUsuario" HeaderText="tUsuario" ReadOnly="True" SortExpression="tUsuario" />
                <asp:BoundField DataField="estado" HeaderText="estado" ReadOnly="True" SortExpression="estado" />
                <asp:BoundField DataField="estado" HeaderText="estado" ReadOnly="True" SortExpression="estado" ></asp:BoundField>
                <asp:ButtonField HeaderText="Cambiar estado" AccessibleHeaderText="Opciones" ButtonType="Button" Text="Botón" />

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView> 

        <asp:LinqDataSource ID="LinqDataSourceUsuarios" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (idUsuario, nombres, apellidos, fechaNace, telefono, direccion, email, tipoUsuario, ninos, jardines, clave, tUsuario, estado)" TableName="usuarios">
        </asp:LinqDataSource>

    </form>

</asp:Content>
