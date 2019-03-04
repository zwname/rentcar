package zw.itman.rentcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.pojo.Article;
import zw.itman.rentcar.pojo.Topic;

public interface ArticleMapper {
    int deleteByPrimaryKey(String articleid);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(String articleid);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
    int count();
    List<Article> findAllPage(@Param("limit") Integer limit,@Param("offset") Integer offset);
    
 // 首页显示的公告
    List<Article> findToIndex();
}