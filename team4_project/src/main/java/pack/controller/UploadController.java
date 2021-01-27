package pack.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pack.model.FileValidator;
import pack.model.UploadFileDto;

@Controller
public class UploadController {
	
	@Autowired
	private FileValidator fileValidator;
	
	@RequestMapping(value="upload", method = RequestMethod.POST)
	public void fileSubmit(HttpServletRequest request,
			@ModelAttribute("uploadFile") UploadFileDto uploadFile, 
			BindingResult result) {
		InputStream inputStream = null;
		OutputStream outputStream = null;
		

		MultipartFile file = uploadFile.getFile();
//		// 업로드된 파일에 대한 에러 검사
//		fileValidator.validate(uploadFile, result);
//		
//		
//		if(result.hasErrors()) {
//			return new ModelAndView("admin");
//		}
		String fileName = file.getOriginalFilename();
		String path = request.getSession().getServletContext().getRealPath("resources/images/goods") + "/" + fileName;
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
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				outputStream.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
//		return new ModelAndView("uploadfile", "filename", fileName);
	}
	
	
}
