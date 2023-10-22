package com.springproject.dunk.hy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.hy.dao.PlaceDao;

@Service("pServiceImpl")
public class PlaceServiceImpl implements PlaceService {

	private PlaceDao dao;

	@Autowired
	public PlaceServiceImpl(PlaceDao dao) {		
		this.dao = dao;
	}

	@Override
	public List<PlaceBook> placeBookList(String id) {		
		return dao.placeBookList(id);
	}

	@Override
	public PlaceBook getPlaceBook(int no) {		
		return dao.getPlaceBook(no);
	}
	
	
	
}
