package com.dao;
import java.util.*;

import com.bean.Wenzhang;

public interface WenzhangDAO {
   Wenzhang findById(int id);
   void update(Wenzhang wenzhang);
   void add(Wenzhang wenzhang);
   List<Wenzhang> selectAll(HashMap map);
   List<Wenzhang> selectIndex(HashMap map);
   void delete(int id);
}
