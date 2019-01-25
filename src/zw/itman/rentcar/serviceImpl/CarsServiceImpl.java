package zw.itman.rentcar.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zw.itman.rentcar.dao.CarsMapper;
import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Cars;
import zw.itman.rentcar.service.CarsService;

import java.util.List;

/**
 * @ClassName CarsServiceImpl
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/17 10:12
 * @Version
 */
@Service
public class CarsServiceImpl implements CarsService {

    @Autowired
    private CarsMapper carsMapper;
    @Override
    public int deleteByPrimaryKey(String carsid) {
        return carsMapper.deleteByPrimaryKey(carsid);
    }

    @Override
    public int insert(Cars record)
    {
        return carsMapper.insert(record);
    }

    @Override
    public int insertSelective(Cars record) {
        return 0;
    }

    @Override
    public Cars selectByPrimaryKey(String carsid) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Cars record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeyWithBLOBs(Cars record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Cars record) {
        return 0;
    }

    @Override
    public int count() {
        return carsMapper.count();
    }

    @Override
    public List<CarsCateBrandDto> findAllPage(Integer limit, Integer offset) {
        return carsMapper.findAllPage(limit,offset);
    }
}
