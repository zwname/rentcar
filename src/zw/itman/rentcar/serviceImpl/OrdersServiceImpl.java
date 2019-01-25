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
		return 0;
	}

	@Override
	public int insertSelective(Orders record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Orders selectByPrimaryKey(String ordersid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Orders record) {
		// TODO Auto-generated method stub
		return 0;
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
	
	
}
