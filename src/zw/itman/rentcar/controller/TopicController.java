package zw.itman.rentcar.controller;

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

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName TopicController
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/15 19:22
 * @Version
 */
@Controller
public class TopicController {

    @Autowired
    private TopicService topicService;

    // 分页查询
    @RequestMapping(value = "/findAllPage",method = RequestMethod.GET)
    @ResponseBody
    public Map findAllPage(Integer limit,Integer offset){
        Map<String,Object> map=new HashMap<>();
        List<UserTopicCarsDto> allPage = topicService.findAllPage(limit, offset);
        int count = topicService.count();
        map.put("total",count);
        map.put("rows",allPage);
        return map;
    }

    // 删除单个评论
    @RequestMapping(value = "/deltopic",method = RequestMethod.POST)
    @ResponseBody
    public Message deltopic(String topicid){
        if(!topicid.equals("")){
            topicService.deltopicByPrimaryKey(topicid);
            return Message.success("删除成功");
        }else {
            return Message.fail("删除失败");
        }

    }
    
    

}
