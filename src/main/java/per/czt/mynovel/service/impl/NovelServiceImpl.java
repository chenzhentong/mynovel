package per.czt.mynovel.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import per.czt.mynovel.dao.NovelDao;
import per.czt.mynovel.dao.NovelSortDao;
import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.NovelSort;
import per.czt.mynovel.service.NovelService;

@Service
public class NovelServiceImpl implements NovelService {

	@Autowired
	private NovelDao novelDao;
	@Autowired
	private NovelSortDao novelSortDao;
	
	@Override
	@CacheEvict(value="cache",allEntries=true)
	public void saveNovel(Novel novel) {
		// TODO Auto-generated method stub
		novelDao.save(novel);
	}
	@Override
	public List<Novel> findAll() {
		// TODO Auto-generated method stub
		return novelDao.findAll();
	}
	
	@Override
	@Cacheable(value="cache")
	public Novel findById(Integer novel_id) {
		// TODO Auto-generated method stub
		return novelDao.findOne(novel_id);
	}
	@Override
	public Page<Novel> findNovelByNovelsortByPage(Pageable pageable, final Integer novelsort_id) {
		// TODO Auto-generated method stub
		Specification<Novel> spec=new Specification<Novel>() {

			@Override
			public Predicate toPredicate(Root<Novel> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				// TODO Auto-generated method stub
				return cb.equal(root.get("novelsort").as(NovelSort.class), novelSortDao.findOne(novelsort_id));
			}
		};
		
		return novelDao.findAll(spec, pageable);
	}
	@Override
	public Page<Novel> findAllNovelByPage(Pageable pageable) {
		// TODO Auto-generated method stub
		return novelDao.findAll(pageable);
	}
	@Override
	public List<Novel> findNovelByPinYinByPage(String str, String str1, int page1, int page2) {
		// TODO Auto-generated method stub
		return novelDao.findNovelByPinYinByPage(str, str1, page1, page2);
	}
	@Override
	public List<Novel> findNovelByWordNumByPage(Integer smallwords, Integer bigwords, int page, int pagesize) {
		// TODO Auto-generated method stub
		return novelDao.findNovelByWordNumByPage(smallwords, bigwords, page, pagesize);
	}
	@Override
	public Page<Novel> findNovelByStateAndOrder(Pageable pageable,final String state) {
		// TODO Auto-generated method stub
		Specification<Novel> spec=new Specification<Novel>() {
			
			@Override
			public Predicate toPredicate(Root<Novel> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				// TODO Auto-generated method stub
				return cb.equal(root.get("state").as(String.class), state);
			}
		};
		
		return novelDao.findAll(spec, pageable);
	}
	
	@Override
	public List<Novel> findNovelByWordNumAndPinYinByPageAndState(String str, String str1, Integer smallwords,
			Integer bigwords, String novel_state, int page1, int page2) {
		// TODO Auto-generated method stub
		return novelDao.findNovelByWordNumAndPinYinByPageAndState(str, str1, smallwords, bigwords, novel_state, page1, page2);
	}
	@Override
	public List<Novel> findNovelBySortAndWordNumAndPinYinByPageAndState(Integer novel_sort_id, String str, String str1,
			Integer smallwords, Integer bigwords, String novel_state, int page1, int page2) {
		// TODO Auto-generated method stub
		return novelDao.findNovelBySortAndWordNumAndPinYinByPageAndState(novel_sort_id, str, str1, smallwords, bigwords, novel_state, page1, page2);
	}
	@Override
	public void updateNovel(Novel novel) {
		// TODO Auto-generated method stub
		novelDao.save(novel);
	}
	@Override
	public void deleteNovelById(Integer novel_id) {
		// TODO Auto-generated method stub
		novelDao.delete(novel_id);
	}
	@Override
	public List<Novel> findLatestNovelLimit(Integer num) {
		// TODO Auto-generated method stub
		return novelDao.findLatestNovelLimit(num);
	}
	@Override
	public List<Novel> findLatestUpdatedNovelLimit(Integer num) {
		// TODO Auto-generated method stub
		return novelDao.findLatestUpdatedNovelLimit(num);
	}
	@Override
	public List<Novel> findNovelLimit(Integer num) {
		// TODO Auto-generated method stub
		return novelDao.findNovelLimit(num);
	}

	
	

	
	

}
