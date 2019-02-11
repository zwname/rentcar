package zw.itman.rentcar.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zw.itman.rentcar.dao.CateMapper;
import zw.itman.rentcar.pojo.Cate;
import zw.itman.rentcar.service.CateService;

import java.util.List;

/**
 * @ClassName CateServiceImpl
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/17 11:34
 * @Version
 */
@Service
public class CateServiceImpl implements CateService {

    @Autowired
    private CateMapper cateMapper;

    @Override
    public int deleteByPrimaryKey(String cateid) {
        return cateMapper.deleteByPrimaryKey(cateid);
    }

    @Override
    public int insert(Cate record) {
        return cateMapper.insert(record);
    }

    @Override
    public int insertSelective(Cate record) {
        return cateMapper.insertSelective(record);
    }

    @Override
    public Cate selectByPrimaryKey(String cateid) {
        return cateMapper.selectByPrimaryKey(cateid);
    }

    @Override
    public int updateByPrimaryKeySelective(Cate record) {
        return cateMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Cate record) {
        return cateMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Cate> allCate() {
        return cateMapper.allCate();
    }

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return cateMapper.count();
	}

	@Override
	public List<Cate> findAllCatePage(Integer limit, Integer offset) {
		// TODO Auto-generated method stub
		return cateMapper.findAllCatePage(limit, offset);
	}
}
