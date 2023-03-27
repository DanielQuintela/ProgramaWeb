using System;
using Aula4.Classes;

namespace Aula4
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        
        }

        protected void BTCadastrar_Click(object sender, EventArgs e)
        {
            bool erroValidacao = false;

            if (TBNome.Text.Equals(""))
            {
                erroValidacao = true;
            } else
            {
                if (TBCPF.Equals("") || TBCPF.Text.Length < 11)
                {
                    erroValidacao = true;
                } else
                {
                    if (TBRG.Equals(""))
                    {
                        erroValidacao = true;
                    } else
                    {
                        if (DDLSexo.SelectedValue.ToString() == "Selecione")
                        {
                            erroValidacao = true;
                        } else
                        {
                            if (CLDataNasc.SelectedDate.CompareTo(DateTime.Now) > 0)
                            {
                                erroValidacao = true;
                            }
                            else
                            {
                                if (TBEndereco.Text.Equals(""))
                                {
                                    erroValidacao = true;
                                }
                            }
                        }  
                    }
                }
            }

            if (erroValidacao)
            {
                Response.Write("<script>alert('Erro! Preencha todos os campos!')</script>");
            } else
            {
                Cliente cliente = new Cliente();
                cliente.Nome = TBNome.Text;
                cliente.Sexo = Char.Parse(DDLSexo.SelectedValue.ToString());
                cliente.Cpf = TBCPF.Text;
                cliente.Rg = TBRG.Text;
                cliente.DataNasc = CLDataNasc.SelectedDate;
                cliente.Endereco = TBEndereco.Text;
                cliente.Profissao = TBProfissão.Text;
                cliente.Renda = Double.Parse(TBRenda.Text);
                cliente.NumFidelidade = Int32.Parse(TBNumFidelidade.Text);
                Session["cliente"] = cliente;
                string url = "Form2.aspx";
                Response.Redirect(url);

                
            }
        }
    }
}