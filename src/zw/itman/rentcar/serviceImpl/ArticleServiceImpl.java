package zw.itman.rentcar.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zw.itman.rentcar.dao.ArticleMapper;
import zw.itman.rentcar.pojo.Article;
import zw.itman.rentcar.service.ArticleService;
@Service
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	private ArticleMapper  articleMapper;

	@Override
	public int deleteByPrimaryKey(String articleid) {
		// TODO Auto-generated method stub
		return articleMapper.deleteByPrimaryKey(articleid);
	}

	@Override
	public int insert(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Article record) {
		// TODO Auto-generated method stub
		return articleMapper.insertSelective(record);
	}

	@Override
	public Article selectByPrimaryKey(String articleid) {
		// TODO Auto-generated method stub
		return articleMapper.selectByPrimaryKey(articleid);
	}

	@Override
	public int updateByPrimaryKeySelective(Article record) {
		// TODO Auto-generated method stub
		return articleMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return articleMapper.count();
	}

	@Override
	public List<Article> findAllPage(Integer limit, Integer offset) {
		// TODO Auto-generated method stub
		return articleMapper.findAllPage(limit, offset);
	}

	@Override
	public List<Article> findToIndex() {
		// TODO Auto-generated method stub
		return articleMapper.findToIndex();
	}

}
