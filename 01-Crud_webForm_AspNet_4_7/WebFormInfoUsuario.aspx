<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormInfoUsuario.aspx.cs" Inherits="_01_Crud_webForm_AspNet_4_7.WebFormInfoUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 50px;
        }
        .auto-style3 {
            width: 31px;
        }
        .auto-style4 {
            width: 116px;
        }
        .auto-style5 {
            width: 31px;
            height: 26px;
        }
        .auto-style6 {
            width: 116px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 31px;
            height: 24px;
        }
        .auto-style9 {
            width: 116px;
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
        }
        .auto-style11 {
            width: 31px;
            height: 30px;
        }
        .auto-style12 {
            width: 116px;
            height: 30px;
        }
        .auto-style13 {
            height: 30px;
        }
        .auto-style14 {
            width: 31px;
            height: 28px;
        }
        .auto-style15 {
            width: 116px;
            height: 28px;
        }
        .auto-style16 {
            height: 28px;
        }
        .auto-style17 {
            width: 201px;
        }
        .auto-style18 {
            height: 26px;
            width: 201px;
        }
        .auto-style19 {
            height: 24px;
            width: 201px;
        }
        .auto-style20 {
            height: 28px;
            width: 201px;
        }
        .auto-style21 {
            height: 30px;
            width: 201px;
        }
        .auto-style27 {
            width: 128px;
        }
        .auto-style28 {
            width: 128px;
            height: 26px;
        }
        .auto-style29 {
            width: 128px;
            height: 24px;
        }
        .auto-style30 {
            width: 128px;
            height: 28px;
        }
        .auto-style31 {
            width: 128px;
            height: 30px;
        }
        .auto-style32 {
            width: 277px;
        }
        .auto-style33 {
            width: 277px;
            height: 26px;
        }
        .auto-style34 {
            width: 277px;
            height: 24px;
        }
        .auto-style35 {
            width: 277px;
            height: 28px;
        }
        .auto-style36 {
            width: 277px;
            height: 30px;
        }
        .auto-style37 {
            width: 251px;
        }
        .auto-style38 {
            width: 251px;
            height: 26px;
        }
        .auto-style39 {
            width: 251px;
            height: 24px;
        }
        .auto-style40 {
            width: 251px;
            height: 28px;
        }
        .auto-style41 {
            width: 251px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="7">Web Font DataBase</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style27">
                        <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblMensajeActualizacion" runat="server" Text="-"></asp:Label>
                    </td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style32">
                        <asp:Label ID="Label7" runat="server" Text="Id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIdUpdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style28">
                        <asp:Label ID="Label2" runat="server" Text="Apellido Paterno"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtApellidoP" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style33">
                        <asp:Label ID="Nombre" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNombreUpdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style27">
                        <asp:Label ID="Label3" runat="server" Text="Apellido Materno"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtApellidoM" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtSearch" runat="server" Width="105px"></asp:TextBox>
                    </td>
                    <td class="auto-style37">
                        <asp:TextBox ID="txtFindUpdate" runat="server" OnTextChanged="txtFindUpdate_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style32">
                        <asp:Label ID="Label9" runat="server" Text="Apellido Paterno"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellidoPUpdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="Label5" runat="server" Text="Area de trabajo"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Width="110px" />
                        </td>
                    <td class="auto-style39">
                        <asp:Button ID="btnFind" runat="server" OnClick="btnFind_Click" Text="Find" Width="65px" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Width="62px" />
                        </td>
                    <td class="auto-style34">
                        <asp:Label ID="Label10" runat="server" Text="Apellido Materno"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtApellidoMUpdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style30">
                        <asp:Label ID="Label6" runat="server" Text="Division" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="auto-style40">
                        &nbsp;</td>
                    <td class="auto-style35">
                        <asp:Label ID="Label11" runat="server" Text="Area"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtAreaUpdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style31">
                        <asp:Label ID="lblMensaje" runat="server" Text="-"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="123px" OnClick="btnInsert_Click" />
                    </td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style41">
                        &nbsp;</td>
                    <td class="auto-style36">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style27">
                        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [empleados]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Visible="False" />
                    </td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style32">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:GridView ID="GridViewInfoUsuarios" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="apellido_paterno" HeaderText="apellido_paterno" SortExpression="apellido_paterno" />
                                <asp:BoundField DataField="apellido_materno" HeaderText="apellido_materno" SortExpression="apellido_materno" />
                                <asp:BoundField DataField="area_trabajo" HeaderText="area_trabajo" SortExpression="area_trabajo" />
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
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style37">
                        <asp:GridView ID="GVSearch" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GVSearch_SelectedIndexChanged">
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
                    </td>
                    <td class="auto-style32">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style32">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
