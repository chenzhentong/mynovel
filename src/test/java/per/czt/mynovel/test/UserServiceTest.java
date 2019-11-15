package per.czt.mynovel.test;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import per.czt.mynovel.App;
import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.User;

import per.czt.mynovel.service.NovelService;
import per.czt.mynovel.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes= {App.class})
public class UserServiceTest {
	
	@Autowired
	private UserService userService;
	@Autowired
	private NovelService novelService;

	

	/*@Test
	@Transactional
	@Rollback(false)
	public void testSaveUser() {
		User user=new User();
		user.setEmail("1765770246@qq.com");
		user.setPassword("200934652qwe+-@");
		user.setUsername("1765770246");

		
		userService.saveUser(user);
		Novel novel=novelService.findById(1);
		
		user.getNovels().add(novel);
		novel.getUsers().add(user);
		
		
	}
	*/
	
}
