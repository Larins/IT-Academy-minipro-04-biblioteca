package com.example.demo.bean;

import javax.persistence.*;


@Entity
@Table(name="libros")

public class Libro { 

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)

	private int id;

	@Column(name="titulo", nullable=false, length=30)
	private String titulo;
	private String autor;
	private String publicacion;
	private String isbn;
	private int paginas;
	private String descripcion;
	private int num;
	
	//Para usar combobox usamos la siguiente declaracion:
	@Column(name="GENERO")
	@Enumerated(EnumType.STRING)
	private Genero genero;

	public Libro(int id, String titulo, String autor, String publicacion, String isbn, Genero genero, int paginas, String descripcion) {
		this.id = id;
		this.titulo = titulo;
		this.autor = autor;
		this.isbn = isbn;
		this.publicacion = publicacion;
		this.genero = genero;	
		this.paginas = paginas;
		this.descripcion = descripcion;
	}
	
	public Libro() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}
	
	public String getPublicacion() {
		return publicacion;
	}

	public void setPublicacion(String publicacion) {
		this.publicacion = publicacion;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}
	
	public int getPaginas() {
		return paginas;
	}

	public void setPaginas(int paginas) {
		this.paginas = paginas;
	}
	
	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}	
}