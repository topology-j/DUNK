package com.springproject.dunk.hy.service;

import java.util.List;

import com.springproject.dunk.ch.domain.PlaceBook;

public interface PlaceService {

	public List<PlaceBook> placeBookList(String id);
	
	public PlaceBook getPlaceBook(int no);
	
}
