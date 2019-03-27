package zw.itman.rentcar.controller;

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

import zw.itman.rentcar.pojo.Users;
import zw.itman.rentcar.service.UsersService;
import zw.itman.rentcar.util.Message;

@Controller
public class UsersController {
	@Autowired
	private UsersService usersService;
	
	// 后台白名单用戶列表
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
	    // 后台黑名单用戶列表
		@RequestMapping(value="/findAllUsersPage1",method=RequestMethod.GET)
		@ResponseBody
		public Map findAllUsersPage1(Integer limit,Integer offset) {
			Map<String, Object> map=new HashMap<>();
			int count = usersService.count1();
			List<Users> findAllUsersPage1 = usersService.findAllUsersPage1(limit, offset);
			map.put("total", count);
			map.put("rows", findAllUsersPage1);
			return map;
		}
		
		// 后台拉黑接口
		@RequestMapping(value="/tobacklist",method=RequestMethod.POST)
		@ResponseBody
		public Message tobacklist(Users user) {
			if(user.getUsersid()!=null) {
				user.setUserstatus("-1");
				if(usersService.updateByPrimaryKeySelective(user)>0) {
					return Message.success("操作成功");
				}else {
					return Message.fail("操作失败");
				}
			}else {
				return Message.fail("操作失败");
			}
		}
		
		    // 后台恢复接口
				@RequestMapping(value="/recoverlist",method=RequestMethod.POST)
				@ResponseBody
				public Message recoverlist(Users user) {
					if(user.getUsersid()!=null) {
						user.setUserstatus("1");
						if(usersService.updateByPrimaryKeySelective(user)>0) {
							return Message.success("操作成功");
						}else {
							return Message.fail("操作失败");
						}
					}else {
						return Message.fail("操作失败");
					}
				}
	
	// 后台密码重置
	
	@RequestMapping(value="/resetpwd",method=RequestMethod.POST)
	@ResponseBody
	public Message deleteUsers(Users users) {
		if(users.getUsersid()!=null) {
			users.setPassword("000000");
			int updateByPrimaryKey = usersService.updateByPrimaryKeySelective(users);
			if(updateByPrimaryKey>0) {
				
				return Message.success("操作成功");
			}else {
				return Message.fail("操作失败");
			}
		}else {
			return Message.fail("操作失败");
		}
	}

}
