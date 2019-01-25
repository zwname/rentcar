package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Cars;

public interface CarsMapper {
    int deleteByPrimaryKey(String carsid);

    int insert(Cars record);

    int insertSelective(Cars record);

    Cars selectByPrimaryKey(String carsid);

    int updateByPrimaryKeySelective(Cars record);

    int updateByPrimaryKeyWithBLOBs(Cars record);

    int updateByPrimaryKey(Cars record);

	int count();

	List<CarsCateBrandDto> findAllPage(@Param("limit")Integer limit, @Param("offset")Integer offset);
}