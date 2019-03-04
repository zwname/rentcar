package zw.itman.rentcar.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;

import java.util.UUID;

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
public class FrontUserLoginController {
	
	@Autowired
	private UsersService userService;
	
	@RequestMapping("/touserlogin")
	public String touserlogin() {
		return "front/userlogin";
	}
	
	@RequestMapping("/userlogin")
	@ResponseBody
	public Message userLogin(Users users,HttpServletRequest request) {
		Users user=userService.userlogin(users);
		//request.getSession().setAttribute("users", user);
		System.err.println("========"+user);
		if(user!=null) {
			request.getSession().setAttribute("users", user);
			return Message.success("登陆成功");
			//
		}else {
			return Message.fail("用户名或密码错误");
		}
	}

	// 前台的注销功能
	@RequestMapping("/loginout")
	public String loginout(HttpServletRequest request) {
		request.getSession().removeAttribute("users");
		return "front/header";
		
	}
	
	// 个人中心信息（包括个人信息，订单信息，评价信息）
	@RequestMapping("/touserinfo")
	public String touserinfo(@RequestParam("usersid") String usersid,HttpServletRequest request) {
		//用户信息
		request.getSession().setAttribute("userinfo", userService.selectByPrimaryKey(usersid));
		return "front/userinfo";
		
	}
	
	@RequestMapping(value="/frontupdateuser",method=RequestMethod.POST)
	@ResponseBody
	public Message frontupdateuser(Users users) {
		if(users.getUsersid()!= null && !"".equals(users.getUsersid())) {
			if(userService.updateByPrimaryKeySelective(users)>0) {
				return Message.success("更新成功");
			}else {
				return Message.fail("更新失败");
			}
		}else {
			return Message.fail("更新失败");
		}
		
	}
	
	
	@RequestMapping(value="/userRegister",method=RequestMethod.POST)
	@ResponseBody
	public Message userRegister(Users users) {
		if(users.getUsersid()!=null) {
			return Message.fail("注册失败");
		}else {
			
			users.setUsersid(UUID.randomUUID().toString().replaceAll("-", ""));
			int i = userService.insert(users);
			if(i>0) {
				return Message.success("注册成功，即将前往登陆页面");
			}else {
				return Message.fail("注册失败");
			}
		}
		
	}
}
