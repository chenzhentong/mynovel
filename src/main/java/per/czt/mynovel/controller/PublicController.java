package per.czt.mynovel.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import per.czt.mynovel.pojo.Novel;
import per.czt.mynovel.pojo.NovelSort;
import per.czt.mynovel.service.NovelChapterService;
import per.czt.mynovel.service.NovelService;
import per.czt.mynovel.service.NovelSortService;

@Controller
public class PublicController {
	
	
	
	@Autowired
	private NovelService novelService;
	@Autowired
	private NovelSortService novelsortService;
	@Autowired
	private NovelChapterService novelChapterService;
	
	@RequestMapping("/index")
	public String index(Model model) {
		showNav(model);
		List<Novel> latestUpdatedNovelList=novelService.findLatestUpdatedNovelLimit(10);
		model.addAttribute("latestUpdatedNovelList", latestUpdatedNovelList);
		List<Novel> latestUploadedNovelList=novelService.findLatestNovelLimit(10);
		model.addAttribute("latestUploadedNovelList", latestUploadedNovelList);
		List<Novel> novelList2=novelService.findNovelLimit(3);
		model.addAttribute("novelList2", novelList2);
		List<Novel> novelList1=novelService.findNovelLimit(16);
		model.addAttribute("novelList1", novelList1);
		
		
		
		/*Integer minNo=novelChapterService.findMinNoByNovelId(3);
		model.addAttribute("minNo",minNo);*/
	
		return "index";
	}
	public   void showNav(Model model) {
		List<NovelSort> novelsortList=novelsortService.queryAllNovelSort();
		model.addAttribute("novelsortList", novelsortList);
	}
	
	
	@RequestMapping("/list")
	public String booklist() {
		return "booklist";
	}
	
	
	
	
}
