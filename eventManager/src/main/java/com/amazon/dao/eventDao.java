package com.amazon.dao;

import com.amazon.model.Event;

public interface eventDao {
     
	public void insert(Event event);
	
	public void update(Event event);
    
    public void delete(int event_id);
}
