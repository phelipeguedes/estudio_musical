package br.com.empresa.modelo;

public class Banda {
	
	/* Java Bean */
	
	private int id;
	private String nome;
	private int qtdMembros;
	private String genero;
	private String telefone;
	private String email;

	public int getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getQtdMembros() {
		return qtdMembros;
	}

	public void setQtdMembros(int qtdMembros) {
		this.qtdMembros = qtdMembros;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "Banda: " + this.nome + "Id: " + this.id;
	}
}
