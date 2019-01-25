package zw.itman.rentcar.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import zw.itman.rentcar.pojo.Admin;
import zw.itman.rentcar.service.AdminService;
import zw.itman.rentcar.util.Message;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @ClassName AdminController
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/7 10:44
 * @Version
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;


    // 执行登录操作
    @RequestMapping(value = "/adminLogin",method = RequestMethod.GET)
    @ResponseBody
    public Message adminLogin(Admin admin)  {
        System.err.println(admin.toString());

        if ("".equals(admin.getUsername())) {
            return Message.fail("用户名不能为空");
        }else if("".equals(admin.getPassword())){
            return Message.fail("密码不能为空");
        }else {
            Admin login = adminService.login(admin);
            if(null!=login){
                System.err.println(login.toString());
                return Message.success("登录成功");
            }else{
                return Message.fail("用户名或密码错误");
            }
        }

    }
    // 去登录页面
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "back/login/login";
    }


}
