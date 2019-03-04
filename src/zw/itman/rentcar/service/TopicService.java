package zw.itman.rentcar.service;

import org.apache.ibatis.annotations.Param;
import zw.itman.rentcar.dto.UserTopicCarsDto;
import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Topic;

import java.util.List;

public interface TopicService {
    int deleteByPrimaryKey(String topicid);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(String topicid);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKeyWithBLOBs(Topic record);

    int updateByPrimaryKey(Topic record);
    int count();
    List<UserTopicCarsDto> findAllPage(@Param("limit") Integer limit, @Param("offset") Integer offset);

    void deltopicByPrimaryKey(String topicid);
    
    List<UserTopicCarsDto> findtopicByUsersid(Integer limit,Integer offset, String usersid);
    int countTopicWithUserid(String usersid);
    
}