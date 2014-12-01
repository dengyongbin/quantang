package com.quantang.service;

import java.util.List;
import java.util.Map;

import com.quantang.domain.Opinion;

public interface OpinionService {
	List<Map<String, Object>> findOpinion(String type);
	
	Integer addOpinion(Opinion opinion);
}
