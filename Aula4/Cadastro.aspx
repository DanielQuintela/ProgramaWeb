<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Aula4.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:Label ID="LBTitulo" runat="server" Text="Tela Cadastro" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
            <br />
            <br />

        <table> 
            <tr>
                  <td class="auto-style1">
                      <asp:Label ID="Label1" runat="server" Text="Adicione Abaixo Seus Dados: "></asp:Label>
                  </td>
               </tr>
        </table>

            <table>
                
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
                         <asp:Label ID="LBEmail" runat="server" Text="E-mail"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       
                        <asp:TextBox ID="TBEmail" runat="server" Width="205px"></asp:TextBox>
                       
                    </td>
   
                </tr>
                
                
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBSenha" runat="server" Text="Senha"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       
                        <asp:TextBox ID="TBSenha" runat="server" Width="205px"></asp:TextBox>
                       
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
                         <asp:Label ID="LBCPF" runat="server" Text="CPF"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       
                        <asp:TextBox ID="TBCPF" runat="server" Width="205px"></asp:TextBox>
                       
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




            </table>
            <br/>
       

          <asp:Button ID="BTCadastrar" runat="server" Text="Entrar" OnClick="BTCadastrar_Click" />


        <div>
        </div>
    </form>
</body>
</html>
