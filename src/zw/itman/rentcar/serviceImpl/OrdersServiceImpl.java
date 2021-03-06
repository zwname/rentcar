package zw.itman.rentcar.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zw.itman.rentcar.dao.OrdersMapper;
import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Orders;
import zw.itman.rentcar.service.OrdersService;

@Service
public class OrdersServiceImpl implements OrdersService{

	@Autowired
	private OrdersMapper ordersMapper;

	@Override
	public int deleteByPrimaryKey(String ordersid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Orders record) {
		// TODO Auto-generated method stub
		return ordersMapper.insert(record);
	}

	@Override
	public int insertSelective(Orders record) {
		// TODO Auto-generated method stub
		return ordersMapper.insertSelective(record);
	}

	@Override
	public Orders selectByPrimaryKey(String ordersid) {
		// TODO Auto-generated method stub
		return ordersMapper.selectByPrimaryKey(ordersid);
	}

	@Override
	public int updateByPrimaryKeySelective(Orders record) {
		// TODO Auto-generated method stub
		return ordersMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Orders record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return ordersMapper.count();
	}

	@Override
	public List<UsersOrdersCarsDto> findAllOrdersPage(Integer limit, Integer offset) {
		// TODO Auto-generated method stub
		return ordersMapper.findAllOrdersPage(limit, offset);
	}

	@Override
	public UsersOrdersCarsDto findByOrdersid(String ordersid) {
		// TODO Auto-generated method stub
		return ordersMapper.findByOrdersid(ordersid);
	}

	// 前台显示未完成订单
	@Override
	public List<UsersOrdersCarsDto> findOrders1PageByusersid(Integer limit, Integer offset,String usersid) {
		// TODO Auto-generated method stub
		return ordersMapper.findOrders1PageByusersid(limit, offset,usersid);
	}

	@Override
	public int countwithUseridStatus(String usersid) {
		// TODO Auto-generated method stub
		return ordersMapper.countwithUseridStatus(usersid);
	}
	// 前台显示已完成订单
	@Override
	public List<UsersOrdersCarsDto> findOrders2PageByusersid(Integer limit, Integer offset, String usersid) {
		// TODO Auto-generated method stub
		return ordersMapper.findOrders2PageByusersid(limit, offset, usersid);
	}

	@Override
	public int countwithUseridstatus(String usersid) {
		// TODO Auto-generated method stub
		return ordersMapper.countwithUseridstatus(usersid);
	}

	//还车功能
	@Override
	public int backcar(String id) {
		// TODO Auto-generated method stub
		return ordersMapper.backcar(id);
	}

	@Override
	public int relet(Orders orders) {
		// TODO Auto-generated method stub
		return ordersMapper.relet(orders);
	}

	@Override
	public int paid(Orders orders) {
		// TODO Auto-generated method stub
		return ordersMapper.paid(orders);
	}

	@Override
	public int updateMoneyById(String ordersid) {
		// TODO Auto-generated method stub
		return ordersMapper.updateMoneyById(ordersid);
	}
	
	
}
