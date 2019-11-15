package per.czt.mynovel.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import per.czt.mynovel.App;
import per.czt.mynovel.pojo.NovelSort;
import per.czt.mynovel.service.NovelSortService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes= {App.class})
public class NovelSortServiceImplTest {

	@Autowired
	private NovelSortService novelSortService;
	
	@Test
	public void test1() {
		List<NovelSort> novelsortList=novelSortService.queryAllNovelSort();
		for(NovelSort novelsort:novelsortList) {
			System.out.println(novelsort);
		}
	}
	
	/*@Test
	public void test2() {
		NovelSort novelsort=new NovelSort();
		novelsort.setName("言情");
		novelSortService.addNovelsort(novelsort);
		
	}*/
	@Test
	public void test3() {
		
		System.out.println(novelSortService.findByName("玄幻"));
	}
	
	
}
