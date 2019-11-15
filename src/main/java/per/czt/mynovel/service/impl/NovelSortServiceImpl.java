package per.czt.mynovel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import per.czt.mynovel.dao.NovelSortDao;
import per.czt.mynovel.pojo.NovelSort;
import per.czt.mynovel.service.NovelSortService;
@Service
public class NovelSortServiceImpl implements NovelSortService {
	
	@Autowired
	private NovelSortDao novelSortDao;

	@Override
	public List<NovelSort> queryAllNovelSort() {
		// TODO Auto-generated method stub
		return novelSortDao.findAll();
	}

	@Override
	public NovelSort findById(Integer id) {
		// TODO Auto-generated method stub
		return novelSortDao.findOne(id);
	}

	@Override
	public void addNovelsort(NovelSort novelsort) {
		// TODO Auto-generated method stub
		novelSortDao.save(novelsort);
	}

	@Override
	public NovelSort findByName(String name) {
		// TODO Auto-generated method stub
		return novelSortDao.findNovelSortByName(name);
	}

}
