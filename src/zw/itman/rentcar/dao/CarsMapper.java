package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Brand;
import zw.itman.rentcar.pojo.Cars;
import zw.itman.rentcar.pojo.Topic;

public interface CarsMapper {
    int deleteByPrimaryKey(String carsid);

    int insert(Cars record);

    int insertSelective(Cars record);

    CarsCateBrandDto selectByPrimaryKey(String carsid);

    int updateByPrimaryKeySelective(Cars record);

    int updateByPrimaryKeyWithBLOBs(Cars record);

    int updateByPrimaryKey(Cars record);

	int count();
	 List<CarsCateBrandDto> findAll();

	List<CarsCateBrandDto> findAllPage(@Param("limit")Integer limit, @Param("offset")Integer offset);

	/**
	 * 以下的借口是跟前台有关的
	 * 
	 */
	public List<CarsCateBrandDto> findByBrandid(String brandid);
	public List<CarsCateBrandDto> findByCateid(String cateid);
	CarsCateBrandDto findOneCarById(String carsid);
	
	// 查询首页的推荐车辆
	List <CarsCateBrandDto> findCarsWithRecommend();
	// 查询首页的特价车辆
	List <CarsCateBrandDto> findCarsWithSpecial();
	

}