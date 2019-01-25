package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.dto.UserTopicCarsDto;
import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Orders;

public interface OrdersMapper {
    int deleteByPrimaryKey(String ordersid);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(String ordersid);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
    int count();
    List<UsersOrdersCarsDto> findAllOrdersPage(@Param("limit")Integer limit,@Param("offset")Integer offset);
   UsersOrdersCarsDto findByOrdersid(String ordersid);
}