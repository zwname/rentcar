package zw.itman.rentcar.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zw.itman.rentcar.dao.AdminMapper;
import zw.itman.rentcar.pojo.Admin;
import zw.itman.rentcar.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public int deleteByPrimaryKey(String adminid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Admin record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Admin record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Admin selectByPrimaryKey(String adminid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Admin record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Admin record) {
		// TODO Auto-generated method stub
		return 0;
	}


	public Admin login(Admin admin) {
		return adminMapper.login(admin);
	}


}
