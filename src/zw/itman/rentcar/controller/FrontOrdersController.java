package zw.itman.rentcar.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Orders;
import zw.itman.rentcar.service.OrdersService;
import zw.itman.rentcar.util.DateUtil;
import zw.itman.rentcar.util.Message;

@Controller
public class FrontOrdersController {

	@Autowired
	private OrdersService ordersService;
	
	// 前台显示未完成订单
		@RequestMapping("/findOrders1PageByusersid")
		@ResponseBody
		public Map findOrders1PageByusersid(Integer limit, Integer offset,String usersid) {
	        Map<String, Object> map1 = new HashMap<>();
	        int count = ordersService.countwithUseridStatus(usersid);
	      List<UsersOrdersCarsDto> ordersByusersid = ordersService.findOrders1PageByusersid(limit, offset,usersid);
	       System.err.println("------------count"+count);
	       System.err.println(ordersByusersid);
	      map1.put("total", count);
	        map1.put("rows", ordersByusersid);
	        return map1;
	    }
		
		
		// 前台显示已完成订单
			@RequestMapping("/findOrders2PageByusersid")
			@ResponseBody
			public Map findOrders2PageByusersid(Integer limit, Integer offset,String usersid) {
		        Map<String, Object> map2 = new HashMap<>();
		        int count = ordersService.countwithUseridstatus(usersid);
		      List<UsersOrdersCarsDto> ordersByusersid = ordersService.findOrders2PageByusersid(limit, offset,usersid);
		       System.err.println("------------count"+count);
		       System.err.println(ordersByusersid);
		      map2.put("total", count);
		        map2.put("rows", ordersByusersid);
		        return map2;
		    }
			
			
			//还车功能
			@RequestMapping("/backcar")
			@ResponseBody
			public Message backcar(@RequestParam("ordersid") String ordersid) {
				if(ordersid!=null && !"".equals(ordersid)) {
					if(ordersService.backcar(ordersid)>0){
						return Message.success("还车成功");
					}else {
						return Message.fail("还车失败");
					}
				}else {
					return Message.fail("还车失败");
				}
			}
			

			//续租功能
			@RequestMapping("/relet")
			@ResponseBody
			public Message relet(Orders orders) throws ParseException {
				Orders byPrimaryKey = ordersService.selectByPrimaryKey(orders.getOrdersid());
				System.err.println(orders.getTheend());
				System.err.println(byPrimaryKey.getTheend());
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
					Date oldTime = sdf.parse(byPrimaryKey.getTheend());
					Date newTime=sdf.parse(orders.getTheend());
					System.err.println("oldtime-----"+oldTime);
					System.err.println("newtime-----"+newTime);
					if(orders.getOrdersid()!=null && !"".equals(orders.getOrdersid())) {
						if(newTime.compareTo(oldTime)>0) {
							ordersService.relet(orders);
							return Message.success("续期成功");
						}else {
							return Message.fail("新日期必须大于原日期");
						}
					}else {
						return Message.fail("续期失败");
					}
				
				
				
			}
	
	@RequestMapping(value="/paid",method=RequestMethod.POST)
	@ResponseBody
	public Message paid(Orders orders) {
		if(orders.getOrdersid()!= null && !"".equals(orders.getOrdersid())) {
			orders.setPay("1");
			ordersService.paid(orders);
			return Message.success("结算成功");
		}else {
			return Message.fail("结算失败");
		}
		
	}
	
	// 用户下单
	@RequestMapping(value="/saveorder",method=RequestMethod.POST)
	@ResponseBody
	public Message saveorder(Orders orders) {
		if(null == orders.getOrdersid()) {
			orders.setOrdersid(UUID.randomUUID().toString().replaceAll("-", ""));
			orders.setOrdercode(DateUtil.craeteNum());
			orders.setAddtime(DateUtil.craeteDate());
			orders.setStatus("-1");
			orders.setTurnback("-1");
			orders.setPay("-1");
			orders.setMoney("-1");
			if(ordersService.insert(orders)>0) {
				return Message.success("下单成功");
			}else {
				return Message.fail("下单失败");
			}
		}else {
			return Message.fail("下单失败");
		}
		
	}
}
