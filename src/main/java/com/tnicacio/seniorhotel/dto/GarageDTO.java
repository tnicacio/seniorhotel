package com.tnicacio.seniorhotel.dto;

import java.io.Serializable;

import com.tnicacio.seniorhotel.entities.Garage;

public class GarageDTO implements Serializable{
	private static final long serialVersionUID = 1L;

	private Long id;
	private String name;
	private Boolean isAvailable;
	
	public GarageDTO() {}
	
	public GarageDTO(Long id, String name, Boolean isAvailable) {
		this.id = id;
		this.name = name;
		this.isAvailable = isAvailable;
	}

	public GarageDTO(Garage entity) {
		this.id = entity.getId();
		this.name = entity.getName();
		this.isAvailable = entity.getIsAvailable();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getIsAvailable() {
		return isAvailable;
	}

	public void setIsAvailable(Boolean isAvailable) {
		this.isAvailable = isAvailable;
	}

}
