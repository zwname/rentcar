package zw.itman.rentcar.service;

import java.util.List;



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
}