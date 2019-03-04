package zw.itman.rentcar.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zw.itman.rentcar.pojo.Article;
import zw.itman.rentcar.pojo.Topic;

public interface ArticleService {
    int deleteByPrimaryKey(String articleid);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(String articleid);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
    int count();
    List<Article> findAllPage(Integer limit, Integer offset);
 // 首页显示的公告
    List<Article> findToIndex();
}