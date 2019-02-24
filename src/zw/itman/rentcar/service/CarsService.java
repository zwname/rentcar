package zw.itman.rentcar.service;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Cars;

import java.util.List;

public interface CarsService {
    int deleteByPrimaryKey(String carsid);

    int insert(Cars record);

    int insertSelective(Cars record);

    CarsCateBrandDto selectByPrimaryKey(String carsid);

    int updateByPrimaryKeySelective(Cars record);

    int updateByPrimaryKeyWithBLOBs(Cars record);

    int updateByPrimaryKey(Cars record);

    int count();
    List<CarsCateBrandDto> findAllPage(Integer limit, Integer offset);

	 List<CarsCateBrandDto> findAll();
	 
	 
	 
	   /**
		 * 以下的借口是跟前台有关的
		 * 
		 */
	 public List<CarsCateBrandDto> findByBrandid(String brandid);
		public List<CarsCateBrandDto> findByCateid(String cateid);
CarsCateBrandDto findOneCarById(String carsid);

}