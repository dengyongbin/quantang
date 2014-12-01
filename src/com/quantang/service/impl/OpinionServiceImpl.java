package com.quantang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.OpinionDao;
import com.quantang.domain.Opinion;
import com.quantang.service.OpinionService;

@Service
public class OpinionServiceImpl implements OpinionService {

	@Autowired
	private OpinionDao opiniondao;

	@Override
	public List<Map<String, Object>> findOpinion(String type) {
		return opiniondao.findOpinion(type);
	}

	@Override
	public Integer addOpinion(Opinion opinion) {
		return opiniondao.addOpinion(opinion);
	}

}
