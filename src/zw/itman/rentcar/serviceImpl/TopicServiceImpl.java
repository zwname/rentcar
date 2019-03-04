package zw.itman.rentcar.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zw.itman.rentcar.dao.TopicMapper;
import zw.itman.rentcar.dto.UserTopicCarsDto;
import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Topic;
import zw.itman.rentcar.service.TopicService;

import java.util.List;

/**
 * @ClassName TopicServiceImpl
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/15 16:33
 * @Version
 */
@Service
public class TopicServiceImpl implements TopicService {

    @Autowired
    private TopicMapper topicMapper;
    @Override
    public int deleteByPrimaryKey(String topicid) {
        return topicMapper.deleteByPrimaryKey(topicid);
    }

    @Override
    public int insert(Topic record) {
        return topicMapper.insert(record);
    }

    @Override
    public int insertSelective(Topic record) {
        return topicMapper.insertSelective(record);
    }

    @Override
    public Topic selectByPrimaryKey(String topicid) {
        return topicMapper.selectByPrimaryKey(topicid);
    }

    @Override
    public int updateByPrimaryKeySelective(Topic record) {
        return topicMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKeyWithBLOBs(Topic record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Topic record) {
        return topicMapper.updateByPrimaryKey(record);
    }

    @Override
    public int count() {
        return topicMapper.count();
    }

    @Override
    public List<UserTopicCarsDto> findAllPage(Integer limit, Integer offset) {
        return topicMapper.findAllPage(limit,offset);
    }

    @Override
    public void deltopicByPrimaryKey(String topicid) {
        topicMapper.deleteByPrimaryKey(topicid);
    }

	@Override
	public List<UserTopicCarsDto> findtopicByUsersid(Integer limit, Integer offset, String usersid) {
		// TODO Auto-generated method stub
		return topicMapper.findtopicByUsersid(limit, offset, usersid);
	}

	@Override
	public int countTopicWithUserid(String usersid) {
		// TODO Auto-generated method stub
		return topicMapper.countTopicWithUserid(usersid);
	}

	
}
