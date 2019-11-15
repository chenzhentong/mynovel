package per.czt.mynovel.test;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import per.czt.mynovel.App;
import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.NovelChapter;
import per.czt.mynovel.pojo.NovelSort;
import per.czt.mynovel.service.NovelService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = { App.class })
public class NovelServiceImplTest {

	@Autowired
	private NovelService novelService;

	/*@Test
	public void testSaveNovel() {
		NovelSort novelsort = new NovelSort();
	
		novelsort.setName("玄幻");
		

		Novel novel = new Novel();
		novel.setAuthor("唐家三少");

		novel.setDescription("好看");
		novel.setState("已完结");
		novel.setTitle("狂神");
		
		novel.setNovelsort(novelsort);

		novelService.saveNovel(novel);

	}*/

	@Test
	public void testFindAll() {
		System.out.println("全部小说:");
		List<Novel> novels = novelService.findAll();
		for (Novel novel : novels) {
			System.out.println(novel);
			/*System.out.println(novel.getNovelChapters());
			for(NovelChapter novelchapter:novel.getNovelChapters()) {
				System.out.println(novelchapter.getNo()+":"+novelchapter.getTitle());
			}*/
			
		}
	}

	@Test
	public void testFindById() {
		System.out.println(novelService.findById(1));
		System.out.println(novelService.findById(1));
	}
	@Test
	public void testFindBySortByPage() {
		Pageable pageable=new PageRequest(0, 3);
		Page<Novel> pages=novelService.findNovelByNovelsortByPage(pageable, 1);
		
		for (Novel novel : pages.getContent()) {
			System.out.println(novel);
		}
		
	}
	
	
	@Test
	public void testFindAllNovelByPage() {
		System.out.println("所有小说 -第一页");
		Pageable pageable=new PageRequest(0, 3);
		Page<Novel> pages=novelService.findAllNovelByPage(pageable);
		
		for (Novel novel : pages.getContent()) {
			System.out.println(novel);
		}
		
	}
	
	
	@Test
	public void testFindByWords() {
		System.out.println("字数查询");
		List<Novel> novelList=novelService.findNovelByWordNumByPage(1, 20,0, 2);
		for (Novel novel : novelList) {
			System.out.println(novel);
		}
		
	}
	//select sum(char_length(novel_chapter.novel_chapter_content)),novel_title from novel,novel_chapter where novel.novel_id=novel_chapter.novel_id;

	@Test
	public void testFindByOrder() {
		System.out.println("按照书名顺序+状态顺序查询");
		Sort sort=new Sort(Direction.ASC,"title");
		Pageable pageable=new PageRequest(0, 2, sort);
		Page<Novel> novelList=novelService.findNovelByStateAndOrder(pageable, "连载中");
		for (Novel novel : novelList) {
			System.out.println(novel);
		}
	}
	
	
	
	

	@Test
	public void testFindByWordsAndFirstCharactersAndState() {
		System.out.println("首字母+字数+状态查询");
		List<Novel> novelList=novelService.findNovelByWordNumAndPinYinByPageAndState("d", "d%", 0, 18,"连载中", 0, 2);
		for (Novel novel : novelList) {
			System.out.println(novel);
		}
	}
	
	@Test
	public void testFindBySortAndWordsAndFirstCharactersAndState() {
		System.out.println("类型+首字母+字数+状态查询");
		List<Novel> novelList=novelService.findNovelBySortAndWordNumAndPinYinByPageAndState(1,"d", "d%", 0, 18,"连载中", 0, 2);
		for (Novel novel : novelList) {
			System.out.println(novel);
		}
	}
	
	@Test
	public void testFindLatestNovel() {
		System.out.println("最近上传的15本小说");
		List<Novel> novelList=novelService.findLatestNovelLimit(15);
		for (Novel novel : novelList) {
			System.out.println(novel);
		}
	}
	
	@Test
	public void testFindLatestUpdatedNovel() {
		System.out.println("最近更新的15本小说");
		List<Novel> novelList=novelService.findLatestUpdatedNovelLimit(15);
		for (Novel novel : novelList) {
			System.out.println(novel);
		}
	}
	
	@Test
	public void testFindNovelLimit() {
		System.out.println(" 查询10本小说");
		List<Novel> novelList=novelService.findNovelLimit(10);
		for (Novel novel : novelList) {
			System.out.println(novel);
		}
	}
	
	
	
	
	
}
