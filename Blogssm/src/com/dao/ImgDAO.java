package com.dao;
import java.util.*;

import com.bean.Img;



public interface ImgDAO {
	List<Img> selectAll(HashMap map);
	void add(Img img);
	void delete(int id);
	
}
