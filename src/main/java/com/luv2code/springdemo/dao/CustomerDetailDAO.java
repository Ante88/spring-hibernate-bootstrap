package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.CustomerDetail;

public interface CustomerDetailDAO {

	void saveCustomerDetail(CustomerDetail theCustomerDetail);

	List<CustomerDetail> getCustomerDetails();
	
	

}
