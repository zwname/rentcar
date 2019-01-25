package zw.itman.rentcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import zw.itman.rentcar.pojo.Cate;
import zw.itman.rentcar.service.CateService;
import zw.itman.rentcar.util.Message;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName CateController
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/17 11:36
 * @Version
 */
@Controller
public class CateController {
    @Autowired
    private CateService cateService;

    // 查找所有数据
    @RequestMapping(value = "/AllCateName",method = RequestMethod.GET)
    @ResponseBody
    public List<Cate> AllCateName(){
        List<Cate> cates = cateService.allCate();
        return cates;
    }
    
    //后台显示分页数据
    @RequestMapping(value="/findAllCatePage",method=RequestMethod.GET)
    @ResponseBody
    public Map findAllCatePage(Integer limit,Integer offset) {
    	Map<String, Object> map=new HashMap<>();
    	int count=cateService.count();
    	List<Cate> allCates=cateService.findAllCatePage(limit, offset);
    	map.put("total", count);
    	map.put("rows", allCates);
    	return map;
    }
    
    // 后台删除
    @RequestMapping(value="/deleteCate",method=RequestMethod.POST)
    @ResponseBody
    public Message deleteBrand(@RequestParam("cateid") String cateid) {
    	if(cateid!=null) {
    		int deleteByPrimaryKey = cateService.deleteByPrimaryKey(cateid);
    		if(deleteByPrimaryKey>0) {
    			return Message.success("删除成功");
    		}else {
    			return Message.fail("删除失败");
    		}
    	}else {
    		return Message.fail("删除失败");
    	}
    }

  // 后台添加类型信息
    @RequestMapping(value="/addCate",method=RequestMethod.POST)
    @ResponseBody
    public Message addCate(Cate cate) {
    	if(cate.getCateid()!=null) {
    		return Message.fail("添加失败");
    	}else {
    		String cateid=UUID.randomUUID().toString().replaceAll("-", "");
    		cate.setCateid(cateid);
    		if(cateService.insertSelective(cate)>0) {
    			return Message.success("添加成功");
    		}else {
    			return Message.fail("添加失败");
    		}
    	}
    }
}
