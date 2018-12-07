package com.backend.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="AddressTable_04")
public class Address {

	 
		@Id
		@GeneratedValue
		private int id;
		private int houseNumber;
		private String locality;
		private String city;
		private String state;
		private String pinCode;

		@ManyToOne(fetch=FetchType.EAGER)
		@JoinColumn(name="email")
		private User user;
	
		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public int getHouseNumber() {
			return houseNumber;
		}


		public void setHouseNumber(int houseNumber) {
			this.houseNumber = houseNumber;
		}


		public String getLocality() {
			return locality;
		}


		public void setLocality(String locality) {
			this.locality = locality;
		}


		public String getCity() {
			return city;
		}


		public void setCity(String city) {
			this.city = city;
		}


		public String getState() {
			return state;
		}


		public void setState(String state) {
			this.state = state;
		}


		public String getPinCode() {
			return pinCode;
		}


		public void setPinCode(String pinCode) {
			this.pinCode = pinCode;
		}


		public User getUser() {
			return user;
		}


		public void setUser(User user) {
			this.user = user;
		}


		
		
}
