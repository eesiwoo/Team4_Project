package pack.model;

import org.springframework.web.multipart.MultipartFile;

public class UploadFileDto {		//file Dto 클래스
	private MultipartFile file;
	
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	public MultipartFile getFile() {
		return file;
	}
}
