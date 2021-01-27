package pack.aspect;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import pack.model.UploadFileDto;

@Aspect
@Component
public class InsertImageAop {
	
	@Autowired
	UploadFileDto uploadFile;
	
	@Around("execution(* insertGoods*(..))")
	public Object insertImageAop(ProceedingJoinPoint joinPoint) throws Throwable{
		
		HttpServletRequest request = null;
		
		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadFile.getFile();
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
		
		Object object = joinPoint.proceed();
		return object;
	}
	
}
