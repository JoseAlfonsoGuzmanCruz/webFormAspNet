<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_02_Crud_webForm_AspNet_4_7_PaginaMaestra.Page.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Indeex
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
<form runat="server">
    <br />
    <div class="mx-auto" style="width:300px">
        <h2>Lista de registros</h2>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col align-self-end">
                <asp:Button runat="server" ID="BtnCreate" CssClass="btn btn-success form-control align-bottom" Text="Create" OnClick="BtnCreate_Click1" Width="250px"/>
            </div>
        </div>
    </div>
    <br />
    <div class="container row">
        <div class="table small">
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center">
                <Columns>
                    <asp:TemplateField HeaderText="Opciones del administrador">
                        <ItemTemplate>
                            <asp:Button ID="BtnRead" runat="server" Text="Read" CssClass="btn form-control-sm btn-info" OnClick="BtnRead_Click"/>
                            <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="btn form-control-sm btn-warning" OnClick="BtnUpdate_Click"/>
                            <asp:Button ID="BtnDelete" runat="server" Text="Delete" CssClass="btn form-control-sm btn-danger " OnClick="BtnDelete_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <%--<asp:GridView runat="server" ID="gvusuarios" Class="table table-borderless table-hover">
                <Columns>
                    <asp:TemplateField HeaderText="Opciones del administrador">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="BtnRead" Text="Read/" CssClass="btn form-control btn-info"/>
                            <asp:Button runat="server" ID="BtnUpdate" Text="Update/" CssClass="btn form-control btn-info"/>
                            <asp:Button runat="server" ID="BtnDelete" Text="Delete/" CssClass="btn form-control btn-info"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>
        </div>
    </div>
</form>
</asp:Content>
