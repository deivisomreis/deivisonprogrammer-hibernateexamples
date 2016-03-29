package com.hibernate_examples.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Agenda {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String nome;
	private String descricao;
	private boolean status;
	
	@DateTimeFormat(pattern="dd/MM/yyyy HH:mm:ss")
	private Date dataInscricao;
	
	@DateTimeFormat(pattern="dd/MM/yyyy HH:mm:ss")
	private Date dataFinalizacao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Date getDataInscricao() {
		return dataInscricao;
	}
	public void setDataInscricao(Date dataInscricao) {
		this.dataInscricao = dataInscricao;
	}
	public Date getDataFinalizacao() {
		return dataFinalizacao;
	}
	public void setDataFinalizacao(Date dataFinalizacao) {
		this.dataFinalizacao = dataFinalizacao;
	}
}
