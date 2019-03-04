package zw.itman.rentcar.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Orders;

public interface OrdersService {
    int deleteByPrimaryKey(String ordersid);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(String ordersid);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
    int count();
    List<UsersOrdersCarsDto> findAllOrdersPage(Integer limit,Integer offset);
    UsersOrdersCarsDto findByOrdersid(String ordersid);

	// 前台未完成订单
	List<UsersOrdersCarsDto> findOrders1PageByusersid(Integer limit, Integer offset, String usersid);
	int countwithUseridStatus(String usersid);
	// 前台已完成订单
	List<UsersOrdersCarsDto> findOrders2PageByusersid(@Param("limit")Integer limit,@Param("offset") Integer offset, @Param("usersid")String usersid);
	int countwithUseridstatus(@Param("usersid")String usersid);
    // 还车功能
	int backcar(String id);
	int relet(Orders orders);

	// 评价过后吧money字段值设置为-1
    int updateMoneyById(String ordersid);
	int paid(Orders orders);
}