package per.czt.mynovel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import per.czt.mynovel.dao.UserDao;
import per.czt.mynovel.pojo.User;
import per.czt.mynovel.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}

}
