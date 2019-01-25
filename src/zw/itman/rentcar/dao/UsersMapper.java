package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.pojo.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(String usersid);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(String usersid);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    int count();
    List<Users> findAllUsersPage(@Param("limit")Integer limit,@Param("offset")Integer offset);
}