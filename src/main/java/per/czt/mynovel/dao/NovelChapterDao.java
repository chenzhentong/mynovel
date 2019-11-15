package per.czt.mynovel.dao;


import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import per.czt.mynovel.pojo.NovelChapter;

public interface NovelChapterDao extends JpaRepository<NovelChapter,Integer>,JpaSpecificationExecutor<NovelChapter>{


	
	@Query(value="select min(novel_chapter_no) from novel_chapter where novel_id=?",nativeQuery=true)
	public Integer findMinNoByNovelId(Integer novel_id);
	
	@Query(value="select novel_chapter_title from novel_chapter where novel_id=? order by novel_chapter_no asc limit 1;",nativeQuery=true)
	public String findMinTitleByNovelId(Integer novel_id);
	
	@Query(value="select max(novel_chapter_no),novel_chapter_title from novel_chapter where novel_id=?",nativeQuery=true)
	public Integer findMaxNoByNovelId(Integer novel_id);
	
	@Query(value="select novel_chapter_title from novel_chapter where novel_id=? order by novel_chapter_no desc limit 1;",nativeQuery=true)
	public String findMaxTitleByNovelId(Integer novel_id);
}
