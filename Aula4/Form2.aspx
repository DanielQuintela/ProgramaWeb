<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form2.aspx.cs" Inherits="Aula4.Form2" %>

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
        <div>
            <asp:Label ID="LBTitulo" runat="server" Text="Consulta de Clientes" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
        <br />
            <br />
             <table >
                <tr>
                    <td class="auto-style1">
                         <asp:Label ID="LBNomeE" runat="server" Text="Nome"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LBNomeE2" runat="server" Text=""></asp:Label>
                        
                       
                    </td>
   
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LbSexoE" runat="server" Text="Sexo"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LbSexoE2" runat="server" Text=""></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBCPFE" runat="server" Text="CPF"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LBCPFE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBRGE" runat="server" Text="RG"></asp:Label>
                    </td>
                    <td class="auto-style2">
                       <asp:Label ID="LBRGE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBDataNascE" runat="server" Text="Data de Nascimento"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="LBDataNascE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBEnderecoE" runat="server" Text="Endereço"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:Label ID="LBEnderecoE2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBProfissao" runat="server" Text="Profissão"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:Label ID="LBProfissao2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBRenda" runat="server" Text="Renda"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:Label ID="LBRenda2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
                  <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LBNumFidelidade" runat="server" Text="Número Fidelidade"></asp:Label>
                    </td>
                    <td class="auto-style2">
                         <asp:Label ID="LBNumFidelidade2" runat="server" Text=""></asp:Label>
                    </td>
      
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
