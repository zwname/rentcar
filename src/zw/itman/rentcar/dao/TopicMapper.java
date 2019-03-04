package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.dto.UserTopicCarsDto;
import zw.itman.rentcar.dto.UsersOrdersCarsDto;
import zw.itman.rentcar.pojo.Topic;

public interface TopicMapper {
    int deleteByPrimaryKey(String topicid);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(String topicid);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKeyWithBLOBs(Topic record);

    int updateByPrimaryKey(Topic record);

    int count ();
 // 评价过后吧money字段值设置为-1
    int updateMoneyById(String ordersid);

    List<UserTopicCarsDto> findAllPage(@Param("limit") Integer limit, @Param("offset") Integer offset);

    List<UserTopicCarsDto> findtopicByUsersid(@Param("limit")Integer limit,@Param("offset") Integer offset, @Param("usersid")String usersid);
    int countTopicWithUserid(@Param("usersid")String usersid);
    
 
}