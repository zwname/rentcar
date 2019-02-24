package zw.itman.rentcar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName JumpController
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/7 10:44
 * @Version
 */

@Controller
public class JumpController {

    @RequestMapping("toIndex")
    public String toIndex() {
        return "back/index";
    }

    @RequestMapping("toBackLogin")
    public String toBackLogin() {
        return "back/login/login";
    }


    @RequestMapping("/newsList")
    public String newsList() {
        return "back/news/news_list";
    }

    @RequestMapping("/newsAdd")
    public String newsAdd() {
        return "back/news/news_add";
    }


    @RequestMapping("/usersList")
    public String userList() {
        return "back/users/users_list";
    }


    @RequestMapping("/catesList")
    public String cateList() {
        return "back/cates/cates_list";
    }

    @RequestMapping("/catesAdd")
    public String cateAdd() {
        return "back/cates/cates_add";
    }


    @RequestMapping("/brandsList")
    public String brandsList() {
        return "back/brands/brands_list";
    }

    @RequestMapping("brandsAdd")
    public String brandsAdd() {
        return "back/brands/brands_add";
    }


    @RequestMapping("/carsList")
    public String carsList() {
        return "back/cars/cars_list";
    }

    @RequestMapping("/carsAdd")
    public String carsAdd() {
        return "back/cars/cars_add";
    }


    @RequestMapping("/orderList")
    public String orderList() {
        return "back/orders/orders_list";
    }


    @RequestMapping("/topicList")
    public String topicList() {
        return "back/topic/topic_list";
    }

    @RequestMapping("/person")
    public String person() {
        return "back/person/person";
    }

    @RequestMapping("/changePassword")
    public String changePassword() {
        return "back/person/password";
    }
    
    
    @RequestMapping("/toheader")
    public String toheader() {
        return "front/header";
    }
    
    @RequestMapping("/toindex")
    public String toindex() {
        return "front/index";
    }
    
   
}
