package zw.itman.rentcar.service;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Cars;

import java.util.List;

public interface CarsService {
    int deleteByPrimaryKey(String carsid);

    int insert(Cars record);

    int insertSelective(Cars record);

    Cars selectByPrimaryKey(String carsid);

    int updateByPrimaryKeySelective(Cars record);

    int updateByPrimaryKeyWithBLOBs(Cars record);

    int updateByPrimaryKey(Cars record);

    int count();
    List<CarsCateBrandDto> findAllPage(Integer limit, Integer offset);
}