package per.czt.mynovel.service;

import java.util.List;
import java.util.Map;

import per.czt.mynovel.pojo.NovelChapter;

public interface NovelChapterService {
	
	public List<NovelChapter> findAllNovelChaptersByNovelId(Integer novelId);
	public void saveNovelChapter(NovelChapter novelChapter);
	public NovelChapter findOneChapter(int no);

	
	public Integer findMinNoByNovelId(Integer novel_id);
	public String findMinTitleByNovelId(Integer novel_id);
	public Integer findMaxNoByNovelId(Integer novel_id);
	public String findMaxTitleByNovelId(Integer novel_id);
	
	

}
