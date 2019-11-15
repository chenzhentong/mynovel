package per.czt.mynovel.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.NovelSort;

public interface NovelSortDao extends JpaRepository<NovelSort, Integer>{
	@Query("from NovelSort where name=?")
	public NovelSort findNovelSortByName(String name);

}
