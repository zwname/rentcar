package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.pojo.Brand;

public interface BrandMapper {
    int deleteByPrimaryKey(String brandid);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(String brandid);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);

	int count();

	List<Brand> allBrand();

	List<Brand> findAllPage(@Param("offset")Integer offset, @Param("limit")Integer limit);

}