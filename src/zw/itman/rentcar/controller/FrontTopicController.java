package zw.itman.rentcar.controller;

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

import zw.itman.rentcar.dto.UserTopicCarsDto;
import zw.itman.rentcar.pojo.Orders;
import zw.itman.rentcar.pojo.Topic;
import zw.itman.rentcar.service.OrdersService;
import zw.itman.rentcar.service.TopicService;
import zw.itman.rentcar.util.DateUtil;
import zw.itman.rentcar.util.Message;

@Controller
public class FrontTopicController {

	@Autowired
    private TopicService topicService;
    @Autowired
    private OrdersService ordersService;
	
	@RequestMapping("/addtopic")
    @ResponseBody
    public Message addtopic(Topic topic,Orders orders) {
    	if(null==topic.getTopicid()) {
    		topic.setTopicid(UUID.randomUUID().toString().replaceAll("-", ""));
    		topic.setAddtime( DateUtil.craeteDate());
    		topicService.insertSelective(topic);
    		orders.setStatus("1");
    		orders.setMoney("1");
    		ordersService.updateByPrimaryKeySelective(orders);
    		return Message.success("评价成功");
    	}else {
    		return Message.fail("评价失败");
    	}
    }
	
	 // 前台分页查询
    @RequestMapping(value = "/findtopicByUsersid",method = RequestMethod.GET)
    @ResponseBody
    public Map findAllPage(Integer limit,Integer offset,String usersid){
        Map<String,Object> map=new HashMap<>();
        List<UserTopicCarsDto> withUsersid = topicService.findtopicByUsersid(limit, offset, usersid);
        int countwithUsersid = topicService.countTopicWithUserid(usersid);
        map.put("total",countwithUsersid);
        map.put("rows",withUsersid);
        return map;
    }
    
    @RequestMapping("/deltopicByid")
    @ResponseBody
    public Message deltopicByid(Topic topic) {
    	if(topic.getTopicid()!=null) {
    		topicService.deleteByPrimaryKey(topic.getTopicid());
    		return Message.success("删除成功");
    	}else {
    		return Message.fail("删除失败");
    	}
    }
    
    @RequestMapping("/findOnetopic")
    @ResponseBody
    public Topic findOnetopic(@RequestParam("topicid")String topicid,HttpServletRequest request) {
    	Topic oneTopic = topicService.selectByPrimaryKey(topicid);
    	System.err.println("oneTopic==========="+oneTopic);
    	
    	return oneTopic;
    }
    
    
    @RequestMapping(value="updateOneTopic",method = RequestMethod.POST)
    @ResponseBody
    public Message updateOneTopic(Topic topic) {
    	if(null!=topic.getTopicid() && !"".equals(topic.getTopicid())) {
    		topicService.updateByPrimaryKeySelective(topic);
    		return Message.success("修改成功");
    	}else {
    		return Message.fail("修改失败");
    	}
    	
    }
}
