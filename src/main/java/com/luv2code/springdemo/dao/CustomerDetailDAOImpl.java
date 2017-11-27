package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.CustomerDetail;

@Repository
public class CustomerDetailDAOImpl implements CustomerDetailDAO {
	
	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			

	@Override
	public void saveCustomerDetail(CustomerDetail theCustomerDetail) {
		
		// get current hibernate session
					Session currentSession = sessionFactory.getCurrentSession();
					
					// save/update the customer
					currentSession.saveOrUpdate(theCustomerDetail);
	}


	@Override
	public List<CustomerDetail> getCustomerDetails() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query sort by last name
		Query<CustomerDetail> theQuery = 
				currentSession.createQuery("from CustomerDetail", CustomerDetail.class);
		
		// execute query and get result list
		List<CustomerDetail> customerDetail = theQuery.getResultList();
				
		// return the results		
		return customerDetail;
	}
	
	

}
