package com.luv2code.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer_detail")
public class CustomerDetail {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="home_address")
	private String homeAddress;
	
	@Column(name="work_address")
	private String workAddress;
	
	@Column(name="mobile")
	private String mobile;

	public CustomerDetail() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}

	public String getWorkAddress() {
		return workAddress;
	}

	public void setWorkAddress(String workAddress) {
		this.workAddress = workAddress;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public CustomerDetail(String homeAddress, String workAddress, String mobile) {
		this.homeAddress = homeAddress;
		this.workAddress = workAddress;
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "CustomerDetail [id=" + id + ", homeAddress=" + homeAddress + ", workAddress=" + workAddress
				+ ", mobile=" + mobile + "]";
	}
	
}
