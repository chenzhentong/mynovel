package per.czt.mynovel.service;

import java.util.List;

import per.czt.mynovel.pojo.NovelSort;

public interface NovelSortService {
	public List<NovelSort> queryAllNovelSort();
	public NovelSort findById(Integer id);
	public NovelSort findByName(String name);
	public void addNovelsort(NovelSort novelsort);

}
