package com.dao;
import java.util.*;

import com.bean.Type;




public interface TypeDAO {
	List<Type> selectAll(HashMap map);
	Type findByid(int id);
	void add(Type type);
	void update(Type type);
	void delete(int id);
	
}
