using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aula4.Classes
{
    public class Pessoa
    {
        private string nome;
        private string endereco;
        private char sexo;
        private int idade;
        private string cpf;
        private string rg;
        private DateTime dataNasc;

        public Pessoa()
        {

        }

        public Pessoa(string nome, string cpf, string rg, DateTime dataNasc, string endereco, char sexo, int idade)
        {
            this.nome = nome;
            this.cpf = cpf;
            this.rg = rg;
            this.dataNasc = dataNasc;
            this.endereco = endereco;
            this.sexo = sexo;
            this.idade = idade;
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public string Endereco
        {
            get { return endereco; }
            set { endereco = value; }
        }

        public char Sexo
        {
            get { return sexo; }
            set { sexo = value; }
        }

        public int Idade
        {
            get { return idade; }
            set { idade = value; }
        }

        public string Cpf { get => cpf; set => cpf = value; }
        public string Rg { get => rg; set => rg = value; }
        public DateTime DataNasc { get => dataNasc; set => dataNasc = value; }

        public void cadastrarPessoa(Pessoa pessoa)
        {
            //ações para cadastrar a pessoa
        }
    }
}