package pack.model;


import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Service
public class FileValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// 
		return false;
	}

	@Override
	public void validate(Object uploadFile, Errors errors) {
		// 파일 유무 검사용 
		UploadFileDto file = (UploadFileDto)uploadFile;
		
		if (file.getFile().getSize() ==0){
			errors.rejectValue("file", "", "업로드할 파일을 선택하시오");
		}
	}
	
}
