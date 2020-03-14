package com.project.SellerSignupService.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.SellerSignupService.dao.SellerSignupServiceDao;
import com.project.SellerSignupService.dao.entity.SellerSignupServiceEntity;
import com.project.SellerSignupService.model.SellerSignupServicePojo;

@Service

public class SellerSignupServiceImpl implements SellerSignupService {
	
	static Logger LOG = Logger.getLogger(SellerSignupServiceImpl.class.getClass());
	@Autowired
	SellerSignupServiceDao sellerDao;

	

	@Override
	public SellerSignupServicePojo addSeller(SellerSignupServicePojo sellerPojo) {
		LOG.info("entered addBuyer()");
		SellerSignupServiceEntity SellerSignupEntity = new SellerSignupServiceEntity(sellerPojo.getId(),sellerPojo.getUsername(),sellerPojo.getPassword(),
			sellerPojo.getCompany(),sellerPojo.getBrief(),sellerPojo.getGst(),sellerPojo.getAddress(),sellerPojo.getEmail(),sellerPojo.getWebsite(),sellerPojo.getContact());
		sellerDao.save(SellerSignupEntity);
		LOG.info("Exited addBuyer()");
		return sellerPojo;

		
	}

}
