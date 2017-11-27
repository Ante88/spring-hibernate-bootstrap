package com.luv2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.dao.CustomerDAO;
import com.luv2code.springdemo.dao.CustomerDetailDAO;
import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.CustomerDetail;

@Service
public class CustomerServiceImpl implements CustomerService {

	// inject the customerDAO
	@Autowired
	private CustomerDAO customerDAO;
	
	@Autowired	
	private CustomerDetailDAO customerDetailDAO;
	
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		
		customerDAO.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerDAO.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDAO.deleteCustomer(theId);
		
	}

	@Override
	@Transactional
	public void saveCustomerDetail(CustomerDetail theCustomerDetail) {
		customerDetailDAO.saveCustomerDetail(theCustomerDetail);
	}

	@Override
	@Transactional
	public List<CustomerDetail> getCustomerDetails() {
		
		return customerDetailDAO.getCustomerDetails();
	}	

}
