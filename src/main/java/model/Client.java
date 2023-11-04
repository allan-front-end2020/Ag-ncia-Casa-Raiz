package model;

import java.time.LocalDate;

public class Client {

		private int id;
		
		private String nome;
		
		private String login;
		
		private String endereco;
		
		private String tel;
		
		private String senha;
		
		private LocalDate  dataNasc;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public String getLogin() {
			return login;
		}

		public void setLogin(String login) {
			this.login = login;
		}

		public String getEndereco() {
			return endereco;
		}

		public void setEndereco(String endereco) {
			this.endereco = endereco;
		}

		public String getTel() {
			return tel;
		}

		public void setTel(String tel) {
			this.tel = tel;
		}

		public String getSenha() {
			return senha;
		}

		public void setSenha(String senha) {
			this.senha = senha;
		}

		public LocalDate getDataNasc() {
			return dataNasc;
		}

		public void setDataNasc(LocalDate dataNasc) {
			this.dataNasc = dataNasc;
		}

		public void add(Client clients) {
			// TODO Auto-generated method stub
			
		}
		
		//xxxxxxxxxxxxxxxxxxxxxxxxxxx

		public void setId(String parameter) {
			// TODO Auto-generated method stub
			
		}

	}
	 
