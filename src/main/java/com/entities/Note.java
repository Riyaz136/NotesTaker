package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Entity;


@Entity
@Table(name = "notes")
public class Note {
	
	@Id
	private int Id;
	private String title ;
	@Column(length = 1500)
	private String content;
	private  Date addedDate;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	public Note( String title, String content, Date addedDate) {
		super();
		this.Id =new Random().nextInt(10000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	
public Note() {
	super();
     
}
}
