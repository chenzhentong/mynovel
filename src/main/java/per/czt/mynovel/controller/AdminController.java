package per.czt.mynovel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.NovelChapter;
import per.czt.mynovel.service.NovelChapterService;
import per.czt.mynovel.service.NovelService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private NovelService novelService;
	@Autowired
	private NovelChapterService novelChapterService;
	
	@RequestMapping("/book")
	public  String manageBook(Model model) {
		List<Novel> novelList=novelService.findAll();
		model.addAttribute("novelList", novelList);
		
		return "admin/booklist";
	}
	@RequestMapping("/chapter/{novel_id}")
	public  String manageChapter(Model model,@PathVariable("novel_id")Integer novel_id) {
		
		List<NovelChapter> novelChapterList=novelChapterService.findAllNovelChaptersByNovelId(novel_id);
		model.addAttribute("novelChapterList", novelChapterList);
		Novel novel=novelService.findById(novel_id);
		model.addAttribute("novel", novel);
		return "admin/chapterlist";
	}

	@RequestMapping(value="/chapter/add/{novel_id}",method=RequestMethod.GET)
	public String addChapter(Model model,@PathVariable("novel_id")Integer novel_id) {
		Novel novel=novelService.findById(novel_id);
		model.addAttribute("novel", novel);
		
		return "admin/chapter_add";
		
	}
	
	@RequestMapping(value="/chapter/add/{novel_id}",method=RequestMethod.POST)
	@Transactional
	@Rollback(false)
	public String addChapter(@PathVariable("novel_id")Integer novel_id,NovelChapter novelChapter) {
		
		System.out.println(novel_id);
		System.out.println(novelChapter);
		Novel novel=novelService.findById(novel_id);

		
		
		novelChapterService.saveNovelChapter(novelChapter);
		novelChapter.setNovel(novel);
		System.out.println(novel);
		System.out.println(novelChapter);
		return "redirect:/admin/chapter/"+novel_id;
		
	}
}
