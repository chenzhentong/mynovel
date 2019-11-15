package per.czt.mynovel.dao;

import java.util.List;

import javax.persistence.OrderBy;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import per.czt.mynovel.pojo.Novel;

public interface NovelDao  extends JpaRepository<Novel, Integer>,JpaSpecificationExecutor<Novel>{
	
	
	
	
	@Query(value="select * from novel where  limit ?,?",nativeQuery=true)
	public List<Novel> findNovelByPinYinByPage(String str,String str1,int page1,int page2);

	@Query(value="select * from novel where novel_words>=? and novel_words<? limit ?,?",nativeQuery=true)
	public List<Novel> findNovelByWordNumByPage(Integer smallwords,Integer bigwords,int page,int pagesize );
	
	
	
	
	@Query(value="select * from novel where  (firstPinyin(novel_title)=? or novel_title like ?) and  novel_words>=? and novel_words<? and novel_state=? order by novel_id desc limit ?,?",nativeQuery=true)
	public List<Novel> findNovelByWordNumAndPinYinByPageAndState(String str,String str1,Integer smallwords,Integer bigwords,String novel_state,int page1,int page2);
	
	
	@Query(value="select * from novel where  novel_sort_id=? and (firstPinyin(novel_title)=? or novel_title like ?) and  novel_words>=? and novel_words<? and novel_state=? order by novel_id desc limit ?,?",nativeQuery=true)
	public List<Novel> findNovelBySortAndWordNumAndPinYinByPageAndState(Integer novel_sort_id,String str,String str1,Integer smallwords,Integer bigwords,String novel_state,int page1,int page2);

	
	@Query(value="select * from novel order by novel_uploaded_time desc limit ?",nativeQuery=true)
	public List<Novel> findLatestNovelLimit(Integer num);
	
	@Query(value="select * from novel order by novel_updated_time desc limit ?",nativeQuery=true)
	public List<Novel> findLatestUpdatedNovelLimit(Integer num);
	@Query(value="select * from novel limit ?",nativeQuery=true)
	public List<Novel> findNovelLimit(Integer num);
	

	
}
