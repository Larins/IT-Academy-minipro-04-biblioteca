package com.example.demo.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.bean.Libro;

public interface BaseDatos extends JpaRepository<Libro, Integer> {
	
	/*
	public void inserta(Libro libro);		//SAVE
	public void borrar(int id);				//DELETE BY ID
	public void modifica(Libro libro);		//SAVE
	public Libro getLibro(int id);			//FIND BY ID
	public ArrayList<Libro> getLibros();	//FIND ALL
	public boolean compruebaUsuario(String usuario, String password);
	*/

}
