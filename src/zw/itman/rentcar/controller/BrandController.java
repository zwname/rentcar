package zw.itman.rentcar.controller;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Brand;
import zw.itman.rentcar.service.BrandService;
import zw.itman.rentcar.util.Message;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Action;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName BrandServiceImpl
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/17 13:19
 * @Version
 */
@Controller
public class BrandController {

    @Autowired
    private BrandService brandService;
    
    // 查许所有品牌信息
    @ResponseBody
    @RequestMapping(value = "/AllBrandName",method = RequestMethod.GET)
    public List<Brand> AllBrandName(){
        List<Brand> allBrands=brandService.allBrand();
        return allBrands;
    }

    // 后台显示品牌分页数据
    @RequestMapping(value = "/findAllBrandPage", method = RequestMethod.GET)
    @ResponseBody
    public Map findAllBrandPage( Integer offset,Integer limit) {
        Map<String, Object> map = new HashMap<>();
        int count = brandService.count();
        List<Brand> allPage = brandService.findAllPage(offset,limit);
        map.put("total", count);
        map.put("rows", allPage);
        return map;
    }


    // 后台跳转到修改单个品牌的页面
    @RequestMapping(value = "/goupdate")
    public String goupdate(@RequestParam(value = "brandid",required = false) String brandid, HttpServletRequest request){
        Brand brand = brandService.selectByPrimaryKey(brandid);
        request.getSession().setAttribute("brand",brand);
        return "back/brands/brands_update";
    }

    // 后台通过主键更新品牌数据
    @RequestMapping(value = "/updateBrandById",method = RequestMethod.POST)
    @ResponseBody
    public Message updateBrandById(MultipartFile file,Brand brand,HttpServletRequest request) throws IOException {
    	
    	if(file!=null){
            //使用UUID给图片重命名，并去掉“-”
            String name = UUID.randomUUID().toString().replaceAll("-", "");
            //获取文件的扩展名
            String ext = FilenameUtils.getExtension(file.getOriginalFilename());
            //设置图片上传路径
            String url = request.getSession().getServletContext().getRealPath("/upfiles");
            System.err.println("url====="+url);
            //以绝对路径保存重名命后的图片
            file.transferTo(new File(url+"/"+name + "." + ext));
            brand.setImage("upfiles/"+name + "." + ext);
            brandService.updateByPrimaryKeySelective(brand);
          return Message.success("更新成功");
        }else{
            brandService.updateByPrimaryKeySelective(brand);
            return Message.success("更新成功");
        }
    }
    
    
    // 后台新增品牌数据
    @RequestMapping(value = "/addBrand",method = RequestMethod.POST)
    @ResponseBody
    public Message addBrand(MultipartFile file,Brand brand,HttpServletRequest request) throws IOException {
    	if(brand.getBrandid()!=null) {
    		return Message.fail("添加失败");
    	}else {
    		String brandid=UUID.randomUUID().toString().replaceAll("-", "");
    		if(file!=null){
                //使用UUID给图片重命名，并去掉“-”
                String name = UUID.randomUUID().toString().replaceAll("-", "");
                //获取文件的扩展名
                String ext = FilenameUtils.getExtension(file.getOriginalFilename());
                //设置图片上传路径
                String url = request.getSession().getServletContext().getRealPath("/upfiles");
                System.err.println("url====="+url);
                //以绝对路径保存重名命后的图片
                file.transferTo(new File(url+"/"+name + "." + ext));
                brand.setBrandid(brandid);
                brand.setImage("upfiles/"+name + "." + ext);
                brandService.insertSelective(brand);
              return Message.success("添加成功");
            }else{
                brandService.insertSelective(brand);
                return Message.success("添加成功");
            }
    	}
    	
    }
    
    // 后台删除单个品牌信息
    @RequestMapping(value="/deleteBrand",method=RequestMethod.POST)
    @ResponseBody
    public Message deleteBrand(@RequestParam("brandid") String brandid) {
    	if(brandid!=null) {
    		int deleteByPrimaryKey = brandService.deleteByPrimaryKey(brandid);
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
