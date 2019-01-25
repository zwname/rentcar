package zw.itman.rentcar.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zw.itman.rentcar.dao.TopicMapper;
import zw.itman.rentcar.dto.UserTopicCarsDto;
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
        return 0;
    }

    @Override
    public int insert(Topic record) {
        return 0;
    }

    @Override
    public int insertSelective(Topic record) {
        return 0;
    }

    @Override
    public Topic selectByPrimaryKey(String topicid) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Topic record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeyWithBLOBs(Topic record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Topic record) {
        return 0;
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
}
