package zw.itman.rentcar.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.sql.dialect.mysql.ast.MysqlForeignKey.On;

import zw.itman.rentcar.pojo.Article;
import zw.itman.rentcar.service.ArticleService;
import zw.itman.rentcar.util.Message;

@Controller
public class ArticleController {
	
	@Autowired
	private ArticleService articleService;
	
	@RequestMapping(value="/findAllArticlePage",method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> findAllArticlePage(Integer limit,Integer offset){
		Map<String,Object> map=new HashMap<>();
		int count = articleService.count();
		List<Article> findAllPage = articleService.findAllPage(limit, offset);
		map.put("total", count);
		map.put("rows", findAllPage);
		return map;
	}
	
	@RequestMapping(value="/deleteArticle",method=RequestMethod.POST)
	@ResponseBody
	public Message deleteArticle(@RequestParam("articleid") String articleid) {
		System.err.println("articleid====="+articleid);
		int deleteByPrimaryKey = articleService.deleteByPrimaryKey(articleid);
		if(deleteByPrimaryKey>0) {
			return Message.success("删除成功");
		}else {
			return Message.fail("删除失败");
		}
	}
	
	@RequestMapping(value="/addArticle",method=RequestMethod.POST)
	@ResponseBody
	public Message addArticle(Article article) {
		if(null!=article.getArticleid() ) {
			return Message.fail("保存失败");
		}else {
			article.setArticleid(this.getPrimaryKey());
			article.setAddtime(this.getAddTime());
			articleService.insertSelective(article);
			return Message.success("保存成功");
		}
		
	}
	
	@RequestMapping(value="/goupdateArticle",method=RequestMethod.GET)
	public String goupdateArticle(@RequestParam("articleid")String articleid,HttpServletRequest request) {
		Article selectByPrimaryKey = articleService.selectByPrimaryKey(articleid);
		System.err.println("selectByPrimaryKey---------"+selectByPrimaryKey);
		request.getSession().setAttribute("article", selectByPrimaryKey);
		return "back/news/news_update";
	}
	
	@RequestMapping(value="/updateArticle",method=RequestMethod.POST)
	@ResponseBody
	public Message updateArticle(Article article) {
		if(null!=article.getArticleid() ) {
			articleService.updateByPrimaryKeySelective(article);
			return Message.success("更新成功");
		}else {
			return Message.fail("更新失败");
		}
	}
	
	public String getAddTime() {
		 Date date = new Date();
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	      String addtime = sdf.format(date);
	      System.err.println("addtime======="+addtime);
	      return addtime;
	}
	
	public String getPrimaryKey() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
