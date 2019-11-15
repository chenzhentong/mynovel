package per.czt.mynovel.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {
	
	public static void uploadNovel(MultipartFile coversName) throws IllegalStateException, IOException {
		coversName.transferTo(new File("E:\\eclipse\\workplace\\mynovel\\src\\main\\resources\\static\\img\\book\\"
				+ coversName.getOriginalFilename()));
		
	}

}
