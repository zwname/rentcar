package zw.itman.rentcar.service;

import zw.itman.rentcar.pojo.Cate;

import java.util.List;

public interface CateService {
    int deleteByPrimaryKey(String cateid);

    int insert(Cate record);

    int insertSelective(Cate record);

    Cate selectByPrimaryKey(String cateid);

    int updateByPrimaryKeySelective(Cate record);

    int updateByPrimaryKey(Cate record);

    List<Cate> allCate();
    
    int count();
    List<Cate> findAllCatePage(Integer limit,Integer offset);
}