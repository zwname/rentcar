package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.pojo.Brand;
import zw.itman.rentcar.pojo.Cate;

public interface CateMapper {
    int deleteByPrimaryKey(String cateid);

    int insert(Cate record);

    int insertSelective(Cate record);

    Cate selectByPrimaryKey(String cateid);

    int updateByPrimaryKeySelective(Cate record);

    int updateByPrimaryKey(Cate record);

	List<Cate> allCate();
	int count();
    List<Cate> findAllCatePage(@Param("limit")Integer limit,@Param("offset")Integer offset);
}