package per.czt.mynovel.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import per.czt.mynovel.pojo.Novel;

public interface NovelService {
	public void saveNovel(Novel  novel);
	public void updateNovel(Novel novel);
	public void deleteNovelById(Integer novel_id);
	public List<Novel> findAll();
	public List<Novel> findLatestNovelLimit(Integer num);
	public List<Novel> findLatestUpdatedNovelLimit(Integer num);
	public List<Novel> findNovelLimit(Integer num);

	public Novel findById(Integer novel_id);
	public Page<Novel> findNovelByNovelsortByPage(Pageable pageable,final Integer novelsort_id);
	public Page<Novel> findAllNovelByPage(Pageable pageable);
	public List<Novel> findNovelByPinYinByPage(String str,String str1,int page1,int page2);
	public List<Novel> findNovelByWordNumByPage(Integer smallwords,Integer bigwords,int page,int pagesize );
	
	public Page<Novel> findNovelByStateAndOrder(Pageable pageable,final String state);
	public List<Novel> findNovelByWordNumAndPinYinByPageAndState(String str,String str1,Integer smallwords,Integer bigwords,String novel_state,int page1,int page2);
	public List<Novel> findNovelBySortAndWordNumAndPinYinByPageAndState(Integer novel_sort_id,String str,String str1,Integer smallwords,Integer bigwords,String novel_state,int page1,int page2);
	
	
	
}
