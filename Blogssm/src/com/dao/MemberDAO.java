package com.dao;
import java.util.*;

import com.bean.Member;

public interface MemberDAO {
   Member findById(int id);
   void update(Member member);
   void updatepwd(int id,String upass);
   List<Member> selectOne(Member member);
   void add(Member member);
   List<Member> selectAll(HashMap map);
   List<Member> selectAllxs(HashMap map);
   void delete(int id);
   List<Member> checkUname(String uname);
}
