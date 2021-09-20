package com.example.demo.bean;

public enum Genero { 
	
	CUERPOS("CUERPOS",1),ECONOMIA("ECONOMIA",2),FEMINISMOS("FEMINISMOS",3),HISTORIA("HISTORIA",4),NARRATIVA("NARRATIVA",5),POESIA("POESIA",6),POLITICA("POLITICA",7),SOCIOLOGIA("SOCIOLOGIA",8),TEORIADELGENERO("TEORIADELGENERO",9),OTROS("OTROS",10);

	private String tema;
	private int num;

	private Genero(String tema, int num) {
		this.tema = tema;
		this.num = num;
	}

	public String getTema() {
		return tema;
	}

	public void setTema(String tema) {
		this.tema = tema;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	
}
