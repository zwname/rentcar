package zw.itman.rentcar.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zw.itman.rentcar.dao.BrandMapper;
import zw.itman.rentcar.pojo.Brand;
import zw.itman.rentcar.service.BrandService;

import java.util.List;

/**
 * @ClassName BrandServiceImpl
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/17 13:22
 * @Version
 */
@Service
public class BrandServiceImpl implements BrandService {

    @Autowired
    private BrandMapper brandMapper;
    @Override
    public int deleteByPrimaryKey(String brandid) {
        return brandMapper.deleteByPrimaryKey(brandid);
    }

    @Override
    public int insert(Brand record) {
        return 0;
    }

    @Override
    public int insertSelective(Brand record) {
        return brandMapper.insertSelective(record);
    }

    @Override
    public Brand selectByPrimaryKey(String brandid) {
        return brandMapper.selectByPrimaryKey(brandid);
    }

    @Override
    public int updateByPrimaryKeySelective(Brand record) {
        return brandMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Brand record) {
        return brandMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Brand> allBrand() {
        return brandMapper.allBrand();
    }

    @Override
    public int count() {
        return brandMapper.count();
    }

    @Override
    public List<Brand> findAllPage(Integer offset, Integer limit) {
        return brandMapper.findAllPage(offset , limit);
    }

  
}
