package per.czt.mynovel.service.impl;

import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import per.czt.mynovel.dao.NovelChapterDao;
import per.czt.mynovel.dao.NovelDao;
import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.NovelChapter;
import per.czt.mynovel.service.NovelChapterService;
@Service
public class NovelChapterServiceImpl implements NovelChapterService {
	@Autowired
	private NovelChapterDao novelChapterDao;
	@Autowired
	private NovelDao novelDao;

	@Override
	public List<NovelChapter> findAllNovelChaptersByNovelId(final Integer novelId) {
		// TODO Auto-generated method stub
		Specification spec=new Specification<NovelChapter>() {

			@Override
			public Predicate toPredicate(Root<NovelChapter> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				// TODO Auto-generated method stub
				return cb.equal(root.get("novel").as(Novel.class),novelDao.findOne(novelId) );
			}

		};
		return novelChapterDao.findAll(spec);
	}

	@Override
	public void saveNovelChapter(NovelChapter novelChapter) {
		// TODO Auto-generated method stub
		novelChapterDao.save(novelChapter);
	}

	@Override
	public NovelChapter findOneChapter(final int no) {
		// TODO Auto-generated method stub
		Specification<NovelChapter> spec=new Specification<NovelChapter>() {

			@Override
			public Predicate toPredicate(Root<NovelChapter> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				// TODO Auto-generated method stub
				return cb.equal(root.get("no").as(Integer.class), no);
			}
		};
		return novelChapterDao.findOne(spec);
	}

	
	@Override
	public Integer findMinNoByNovelId(Integer novel_id) {
		// TODO Auto-generated method stub
		return novelChapterDao.findMinNoByNovelId(novel_id);
	}

	@Override
	public String findMinTitleByNovelId(Integer novel_id) {
		// TODO Auto-generated method stub
		return novelChapterDao.findMinTitleByNovelId(novel_id);
	}

	@Override
	public Integer findMaxNoByNovelId(Integer novel_id) {
		// TODO Auto-generated method stub
		return novelChapterDao.findMaxNoByNovelId(novel_id);
	}

	@Override
	public String findMaxTitleByNovelId(Integer novel_id) {
		// TODO Auto-generated method stub
		return novelChapterDao.findMaxTitleByNovelId(novel_id);
	}

	
}
