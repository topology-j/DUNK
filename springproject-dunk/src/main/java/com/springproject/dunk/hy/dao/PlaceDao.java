package com.springproject.dunk.hy.dao;

import java.util.List;

import com.springproject.dunk.ch.domain.PlaceBook;

public interface PlaceDao {

	public List<PlaceBook> placeBookList(String id);
	
	public PlaceBook getPlaceBook(int no);
	
}
