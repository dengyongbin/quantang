package com.quantang.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.CaptureDao;
import com.quantang.service.CaptureService;

@Service
public class CaptureServiceImpl implements CaptureService {
	@Autowired
	private CaptureDao capturedao;

	@Override
	public void saveNobleMetalData(String data) {
		// TODO Auto-generated method stub
		capturedao.saveNobleMetalData(data);
	}

}
