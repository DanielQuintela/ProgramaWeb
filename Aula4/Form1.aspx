<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="Aula4.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 170px;
        }
        .auto-style2 {
            width: 294px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divCadastro">
            <asp:Label ID="LBTitulo" runat="server" Text="Cadastro de Clientes" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
            <br />
            <br />
            <table >
                <tr>
                    <td class="auto-style1">
                         <asp:Label ID="LBNome" runat="server" Text="Nome"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       
                        <asp:TextBox ID="TBNome" runat="server" Width="205px"></asp:TextBox>
                       
                    </td>
   
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBSexo" runat="server" Text="Sexo"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DDLSexo" runat="server">
                            <asp:ListItem>Selecione</asp:ListItem>
                            <asp:ListItem Value="F">Feminino</asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBCPF" runat="server" Text="CPF"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TBCPF" runat="server" Width="134px"></asp:TextBox>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBRG" runat="server" Text="RG"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TBRG" runat="server" Width="134px"></asp:TextBox>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBDataNasc" runat="server" Text="Data de Nascimento"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Calendar ID="CLDataNasc" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBEndereco" runat="server" Text="Endereço"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:TextBox ID="TBEndereco" runat="server" Width="205px"></asp:TextBox>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBProfissao" runat="server" Text="Profissão"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:TextBox ID="TBProfissão" runat="server" Width="205px"></asp:TextBox>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBRenda" runat="server" Text="Renda"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:TextBox ID="TBRenda" runat="server" Width="205px"></asp:TextBox>
                    </td>
      
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBNumFidelidade" runat="server" Text="Número Fidelidade"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:TextBox ID="TBNumFidelidade" runat="server" Width="205px"></asp:TextBox>
                    </td>
      
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="BTCadastrar" runat="server" Text="Cadastrar" OnClick="BTCadastrar_Click" />
     
        </div>

        <br />
        <div id="divExibicao">
            <table >
                <tr>
                    <td class="auto-style1">
                         <asp:Label ID="LBNomeE" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LBNomeE2" runat="server" Text=""></asp:Label>
                        
                       
                    </td>
   
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LbSexoE" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LbSexoE2" runat="server" Text=""></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBCPFE" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LBCPFE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBRGE" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LBRGE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBDataNascE" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="LBDataNascE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBEnderecoE" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:Label ID="LBEnderecoE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
            </table>

           


        </div>
        
    </form>
    
</body>
</html>
