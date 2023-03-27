using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aula4.Classes;

namespace Aula4
{
    public partial class Form2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cliente cliente = (Cliente)(Session["cliente"]);
            LBNomeE2.Text = cliente.Nome;
            LBCPFE2.Text = cliente.Cpf;
            LBRGE2.Text = cliente.Rg;
            if (cliente.Sexo.ToString().Equals("F"))
            {
                LbSexoE2.Text = "Feminino";
            } else
            {
                LbSexoE2.Text = "Masculino";
            }
            
            LBDataNascE2.Text = cliente.DataNasc.ToString();
            LBEnderecoE2.Text = cliente.Endereco;
            LBProfissao2.Text = cliente.Profissao;
            LBRenda2.Text = cliente.Renda.ToString();
            LBNumFidelidade2.Text = cliente.NumFidelidade.ToString();
        }
    }
}