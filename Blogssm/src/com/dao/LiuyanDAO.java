package com.dao;
import java.util.*;

import com.bean.Liuyan;

public interface LiuyanDAO {
   Liuyan findById(int id);
   void update(Liuyan liuyan);
   void add(Liuyan liuyan);
   List<Liuyan> selectAll(HashMap map);
   void delete(int id);
}
