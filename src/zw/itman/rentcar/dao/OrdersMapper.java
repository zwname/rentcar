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
    // 评价过后吧money字段值设置为-1
    int updateMoneyById(@Param("ordersid")String ordersid);
    int count();
    List<UsersOrdersCarsDto> findAllOrdersPage(@Param("limit")Integer limit,@Param("offset")Integer offset);
   UsersOrdersCarsDto findByOrdersid(String ordersid);
   // 前台未完成订单
   List<UsersOrdersCarsDto> findOrders1PageByusersid(@Param("limit")Integer limit,@Param("offset") Integer offset, @Param("usersid")String usersid);
   int countwithUseridStatus(@Param("usersid")String usersid);
   // 前台已完成订单
   List<UsersOrdersCarsDto> findOrders2PageByusersid(@Param("limit")Integer limit,@Param("offset") Integer offset, @Param("usersid")String usersid);
   int countwithUseridstatus(@Param("usersid")String usersid);
   //还车功能
   int backcar(String id);
   //续租
   int relet(Orders orders);
 //结算
   int paid(Orders orders);
   
}