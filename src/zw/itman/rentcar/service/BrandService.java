package zw.itman.rentcar.service;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Brand;

import java.util.List;

public interface BrandService {
    int deleteByPrimaryKey(String brandid);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(String brandid);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);

    List<Brand> allBrand();

    int count();

    List<Brand> findAllPage( Integer offset,Integer limit);
    
}