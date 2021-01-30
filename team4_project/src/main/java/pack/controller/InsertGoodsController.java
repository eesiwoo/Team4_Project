package pack.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CategoryDto;
import pack.model.FileValidator;
import pack.model.GoodsDaoInter;

@Controller
public class InsertGoodsController {

	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@Autowired
	private FileValidator fileValidator;
	
	@RequestMapping(value = "admin", method=RequestMethod.GET)
	public ModelAndView gotoAdminPage() {
		// admin 으로 이동 	
		// categoryList
		ArrayList<CategoryDto> list = (ArrayList<CategoryDto>)goodsDaoInter.selectCategory();
		//System.out.println("list : " + list);
		return new ModelAndView("admin", "categoryList", list);
	}
	
	@RequestMapping(value = "insertGoods", method=RequestMethod.POST)
	public ModelAndView insertGoods(HttpServletRequest request, GoodsBean bean, 
			@RequestParam("fileImg") MultipartFile file, BindingResult result) {
		
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		// 파일 유효성 검사
		fileValidator.validate(file, result);
		System.out.println("파일 유효성 검사 완료");
		if(result.hasErrors()) {
			return new ModelAndView("admin");
		}
		
		String fileName = file.getOriginalFilename();
		bean.setGoods_img(fileName);
		System.out.println("goods_img : " + bean.getGoods_img());
		/* 상대경로
		String path = request.getSession().getServletContext().getRealPath("resources/images/goods") + "/" + fileName; */
		
		// 경로 지정
		String path = "/Users/jk/git/team4_project/src/main/webapp/resources/images/goods/" + fileName;
		
		try {
			inputStream = file.getInputStream();
			File newFile = new File(path);
			if(!newFile.exists()) {
				newFile.createNewFile();
			}
			
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];
			
			while((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
			System.out.println("파일 성공적으로 저장 성공");
			bean.setGoods_regDate();
			System.out.println("goods_regDate : " + bean.getGoods_regDate());
			Boolean re = goodsDaoInter.insertGoods(bean);
			if (re) System.out.println("상품 추가 성공");
			else System.out.println("상품 추가 실패");
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				outputStream.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return new ModelAndView("admin", "Msg", "성공적으로 업로드 완료");
	}
}
