package zw.itman.rentcar.service;

import zw.itman.rentcar.pojo.Admin;

public interface AdminService {
    int deleteByPrimaryKey(String adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    Admin login(Admin admin);
}