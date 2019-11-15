package per.czt.mynovel.test;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import per.czt.mynovel.pojo.NovelChapter;
import per.czt.mynovel.service.NovelChapterService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class NovelChapterServiceTest {
	
	
	@Autowired
	private NovelChapterService novelChapterService;
	
	@Test
	public void testFindNovelChapterByNovelId() {
		List<NovelChapter> novelChapterList=novelChapterService.findAllNovelChaptersByNovelId(2);
		System.out.println(novelChapterList.size());
	}
	
	@Test
	public void testFindMaxNoByNovelId() {
		System.out.println("最新章节:"+novelChapterService.findMaxNoByNovelId(2)+":"+novelChapterService.findMaxTitleByNovelId(2));
		
	}


	@Test
	public void testFindMinNoByNovelId() {
		System.out.println("第一章:"+novelChapterService.findMinNoByNovelId(2)+":"+novelChapterService.findMinTitleByNovelId(2));
	}

}
