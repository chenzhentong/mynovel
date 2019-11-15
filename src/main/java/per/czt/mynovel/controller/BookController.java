package per.czt.mynovel.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.http.fileupload.UploadContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.NovelChapter;
import per.czt.mynovel.pojo.NovelSort;
import per.czt.mynovel.service.NovelChapterService;
import per.czt.mynovel.service.NovelService;
import per.czt.mynovel.service.NovelSortService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	

	@Autowired
	private NovelSortService novelSortService;
	@Autowired
	private NovelService novelService;
	@Autowired
	private NovelChapterService novelChapterService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String goAddBook(Model model) {
		List<NovelSort> novelsortList = novelSortService.queryAllNovelSort();

		model.addAttribute("novelsortList", novelsortList);
		for (NovelSort novelsort : novelsortList) {
			System.out.println(novelsort);
		}

		return "admin/book_add";

	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addBook(HttpServletRequest request, MultipartFile coversName, Integer novelsort_id, Novel novel)
			throws IllegalStateException, IOException {
		FileController.uploadNovel(coversName);
		System.out.println(coversName.getOriginalFilename());
		novel.setNovelsort(novelSortService.findById(novelsort_id));
		if (coversName.getOriginalFilename() != null) {
			novel.setCovers(coversName.getOriginalFilename());

		}
		novel.setWords(0);
		novel.setState("连载中");
		novelService.saveNovel(novel);
		return "redirect:/admin/book";
	}

	@RequestMapping(value = "/all")
	public String showAllByPage(Model model, HttpServletRequest request) {
		int page = 0;
		String strPage = request.getParameter("page");
		if (strPage != null) {
			page = Integer.parseInt(strPage);
		}

		Pageable pageable = new PageRequest(page, 4);
		Page<Novel> pages = novelService.findAllNovelByPage(pageable);
		model.addAttribute("pages", pages);

		showNav(model);
		return "booklist";
	}

	@RequestMapping(value = "/sort/{novelsort_id}")
	public String showNovelBySortByPage(Model model, HttpServletRequest request,
			@PathVariable("novelsort_id") Integer novelsort_id) {

		int page = 0;
		String strPage = request.getParameter("page");
		if (strPage != null) {
			page = Integer.parseInt(strPage);
		}

		Pageable pageable = new PageRequest(page, 4);
		Page<Novel> pages = novelService.findNovelByNovelsortByPage(pageable, novelsort_id);
		model.addAttribute("pages", pages);
		model.addAttribute("novelsort_id", novelsort_id);
		showNav(model);
		return "booklist2";
	}

	public void showNav(Model model) {
		List<NovelSort> novelsortList = novelSortService.queryAllNovelSort();
		model.addAttribute("novelsortList", novelsortList);
	}

	// 类型+字数+状态+字母+顺序
	@RequestMapping("/{sort_id}/{small_words}/{big_words}/{state}/{firstcharacter}/{order}")
	public String showNovelByCondition(@PathVariable("sort_id") Integer sort_id,
			@PathVariable("small_words") Integer small_words, @PathVariable("big_words") Integer big_words,
			@PathVariable("state") String state, @PathVariable("firstcharacter") String firstcharacter,
			@PathVariable("order") Integer order,Model model,HttpServletRequest request) {
		int page=1;
		int pagesize=3;
		String strPage=request.getParameter("page");
		if(strPage!=null) {
			page=Integer.parseInt(strPage);
		}
		List<Novel> novelList = new ArrayList<Novel>();
		if (sort_id == 0) {
			novelList = novelService.findNovelByWordNumAndPinYinByPageAndState(firstcharacter, firstcharacter + "%",
					small_words, big_words, state, (page-1)*pagesize, pagesize);
		} else {
			novelService.findNovelBySortAndWordNumAndPinYinByPageAndState(sort_id, firstcharacter, firstcharacter + "%",
					small_words, big_words, state,  (page-1)*pagesize, pagesize);
		}
		System.out.println(novelList.size());
		showNav(model);
		model.addAttribute("novelList", novelList);
		return "booklist3";

	}
	
	@RequestMapping("/{novel_id}")
	public String showAllChapter(@PathVariable("novel_id") Integer novel_id,Model model) {
		Novel novel=novelService.findById(novel_id);
		model.addAttribute("novel", novel);
		List<NovelChapter> novelChapterList=novelChapterService.findAllNovelChaptersByNovelId(novel_id);
		model.addAttribute("novelChapterList", novelChapterList);
		showNav(model);
		model.addAttribute("maxNo", novelChapterService.findMaxNoByNovelId(novel_id));
		model.addAttribute("maxTitle", novelChapterService.findMaxTitleByNovelId(novel_id));
		
		return "bookdirectory";
	}
	
	
	@RequestMapping("/{novel_id}/{no}")
	public String showOneChapter(@PathVariable("novel_id") Integer novel_id,@PathVariable("no") Integer no,Model model) {
		Novel novel=novelService.findById(novel_id);
		model.addAttribute("novel", novel);

		model.addAttribute("maxNo", novelChapterService.findMaxNoByNovelId(novel_id));
		model.addAttribute("maxTitle", novelChapterService.findMaxTitleByNovelId(novel_id));
		model.addAttribute("minNo", novelChapterService.findMinNoByNovelId(novel_id));
		model.addAttribute("minTitle", novelChapterService.findMinTitleByNovelId(novel_id));
		NovelChapter novelChapter=novelChapterService.findOneChapter(no);
		
		model.addAttribute("novelChapter", novelChapter);
		System.out.println(novelChapter);
		showNav(model);
		return "bookchapter";
	}
	
	
	
	

	
	
}
