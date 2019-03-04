package zw.itman.rentcar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Article;
import zw.itman.rentcar.pojo.Cars;
import zw.itman.rentcar.service.ArticleService;
import zw.itman.rentcar.service.CarsService;
import zw.itman.rentcar.service.TopicService;

@Controller
public class FrontIndexController {

	@Autowired
	private CarsService carsService;
	@Autowired
	private ArticleService articleService;
	
	//首页
	 @RequestMapping("/toindex")
	    public String toindex(HttpServletRequest request) {
		 List<CarsCateBrandDto> specialCars = carsService.findCarsWithSpecial();
			List<CarsCateBrandDto> recommendCars = carsService.findCarsWithRecommend();
			List<Article> indexArticle = articleService.findToIndex();
			//首页特价车
			 request.getSession().setAttribute("specialCars",specialCars);
			// 首页推荐车
			 request.getSession().setAttribute("recommendCars",recommendCars);
			 // 首页公告
			 request.getSession().setAttribute("indexArticle",indexArticle);
	        return "front/index";
	    }
}
