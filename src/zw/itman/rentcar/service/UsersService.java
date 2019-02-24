package zw.itman.rentcar.service;

import java.util.List;

import zw.itman.rentcar.pojo.Users;

public interface UsersService {
    int deleteByPrimaryKey(String usersid);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(String usersid);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    int count();
    List<Users> findAllUsersPage(Integer limit,Integer offset);

	Users userlogin(Users users);
}