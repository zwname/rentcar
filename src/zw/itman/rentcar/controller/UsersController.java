package zw.itman.rentcar.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zw.itman.rentcar.pojo.Users;
import zw.itman.rentcar.service.UsersService;
import zw.itman.rentcar.util.Message;

@Controller
public class UsersController {
	@Autowired
	private UsersService usersService;
	
	// 后台用戶列表
	@RequestMapping(value="/findAllUsersPage",method=RequestMethod.GET)
	@ResponseBody
	public Map findAllUsersPage(Integer limit,Integer offset) {
		Map<String, Object> map=new HashMap<>();
		int count = usersService.count();
		List<Users> findAllUsersPage = usersService.findAllUsersPage(limit, offset);
		map.put("total", count);
		map.put("rows", findAllUsersPage);
		return map;
	}
	
	// 后台删除用户
	
	@RequestMapping(value="/deleteUsers",method=RequestMethod.POST)
	@ResponseBody
	public Message deleteUsers(@RequestParam("usersid")String usersid) {
		if(usersid!=null) {
			int deleteByPrimaryKey = usersService.deleteByPrimaryKey(usersid);
			if(deleteByPrimaryKey>0) {
				return Message.success("删除成功");
			}else {
				return Message.fail("删除失败");
			}
		}else {
			return Message.fail("删除失败");
		}
	}

}
