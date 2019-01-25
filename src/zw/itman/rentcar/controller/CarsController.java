package zw.itman.rentcar.controller;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Cars;
import zw.itman.rentcar.service.CarsService;
import zw.itman.rentcar.util.Message;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName CarsController
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/17 10:27
 * @Version
 */
@Controller
public class CarsController {
    @Autowired
    private CarsService carsService;

    @RequestMapping(value = "/findAllCarsPage", method = RequestMethod.GET)
    @ResponseBody
    public Map findAllCarsPage(Integer limit, Integer offset) {
        Map<String, Object> map = new HashMap<>();
        int count = carsService.count();
        List<CarsCateBrandDto> allPage = carsService.findAllPage(limit, offset);
        map.put("total", count);
        map.put("rows", allPage);
        return map;
    }

    @RequestMapping(value = "/addCars",method = RequestMethod.POST)
    @ResponseBody
    public Message addCar(@RequestParam(value = "file",required = false)MultipartFile file, HttpServletRequest request, Cars cars) throws IOException {

            String carsid = UUID.randomUUID().toString().substring(0,8).replaceAll("-", "");
            if(file!=null){
                //使用UUID给图片重命名，并去掉“-”
                String name = UUID.randomUUID().toString().substring(0,8).replaceAll("-", "");
                //获取文件的扩展名
                String ext = FilenameUtils.getExtension(file.getOriginalFilename());
                //设置图片上传路径
                String url = request.getSession().getServletContext().getRealPath("/upfiles");
                System.err.println("url====="+url);
                //以绝对路径保存重名命后的图片
                file.transferTo(new File(url+"/"+name + "." + ext));
                //把图片存储路径保存到数据库
                cars.setCarsid(carsid);
                cars.setImage("upfiles/"+name+"."+ext);
                carsService.insert(cars);
                return Message.success("添加成功");
            }else {
                cars.setCarsid(carsid);
                carsService.insert(cars);
                return Message.success("添加成功");
            }

        }
    
    
    @RequestMapping(value="/deleteCar",method=RequestMethod.POST)
    @ResponseBody
    public Message deleteCar(@RequestParam("carsid")String carsid) {
    	if(carsid!=null) {
    		int deleteByPrimaryKey = carsService.deleteByPrimaryKey(carsid);
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

