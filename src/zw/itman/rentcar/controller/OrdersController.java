package zw.itman.rentcar.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Orders;
import zw.itman.rentcar.service.OrdersService;
import zw.itman.rentcar.util.Message;

@Controller
public class OrdersController {

	
	@Autowired
	private OrdersService ordersService;
	// 后台分页查询
	@RequestMapping(value = "/findAllOrdersPage", method = RequestMethod.GET)
    @ResponseBody
    public Map findAllOrdersPage(Integer limit, Integer offset) {
        Map<String, Object> map = new HashMap<>();
        int count = ordersService.count();
      List<UsersOrdersCarsDto> allPage = ordersService.findAllOrdersPage(limit, offset);
        map.put("total", count);
        map.put("rows", allPage);
        return map;
    }
	
	
	
	@RequestMapping(value="/findByOrdersid",method=RequestMethod.GET)
	public String findByOrdersid(@RequestParam("ordersid")String ordersid,HttpServletRequest request) {
		UsersOrdersCarsDto orderDto = ordersService.findByOrdersid(ordersid);
		request.getSession().setAttribute("ordersDto", orderDto);
		return "back/orders/ordersInfo";
		
	}
	
	
		
		
		
	
}
