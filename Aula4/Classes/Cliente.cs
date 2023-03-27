using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aula4.Classes
{
    public class Cliente : Pessoa
    {
        private string profissao;
        private double renda;
        private int numFidelidade;
 

        public Cliente()
        {

        }

        public Cliente(string profissao, double renda, int numFidelidade,
            string nome, string cpf, string rg, DateTime dataNasc, string endereco, char sexo, int idade) : 
            base(nome, cpf, rg, dataNasc, endereco, sexo,  idade)
        {
            this.profissao = profissao;
            this.renda = renda;
            this.numFidelidade = numFidelidade;
    }

        public string Profissao
        {
            get { return profissao; }
            set { profissao = value; }
        }

        public double Renda
        {
            get { return renda; }
            set { renda = value; }
        }

        public int NumFidelidade
        {
            get { return numFidelidade; }
            set { numFidelidade = value; }
        }

        

        public void cadastrarCliente(Cliente cliente)
        {
            //ações para cadastrar o cliente
        }

      
    }
}