package zw.itman.rentcar.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zw.itman.rentcar.dao.UsersMapper;
import zw.itman.rentcar.pojo.Users;
import zw.itman.rentcar.service.UsersService;
@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersMapper usersMapper;
	@Override
	public int deleteByPrimaryKey(String usersid) {
		// TODO Auto-generated method stub
		return usersMapper.deleteByPrimaryKey(usersid);
	}

	@Override
	public int insert(Users record) {
		// TODO Auto-generated method stub
		return usersMapper.insert(record);
	}

	@Override
	public int insertSelective(Users record) {
		// TODO Auto-generated method stub
		return usersMapper.insertSelective(record);
	}

	@Override
	public Users selectByPrimaryKey(String usersid) {
		// TODO Auto-generated method stub
		return usersMapper.selectByPrimaryKey(usersid);
	}

	@Override
	public int updateByPrimaryKeySelective(Users record) {
		// TODO Auto-generated method stub
		return usersMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Users record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return usersMapper.count();
	}

	@Override
	public List<Users> findAllUsersPage(Integer limit, Integer offset) {
		// TODO Auto-generated method stub
		return usersMapper.findAllUsersPage(limit, offset);
	}

	
	// 前台的用户登陆
	@Override
	public Users userlogin(Users users) {
		// TODO Auto-generated method stub
		return usersMapper.userlogin(users);
	}

}
