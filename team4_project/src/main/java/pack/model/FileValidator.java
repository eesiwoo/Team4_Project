package pack.model;


import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// 
		return false;
	}

	@Override
	public void validate(Object uploadFile, Errors errors) {
		
		MultipartFile file = (MultipartFile)uploadFile;
		// 파일 유무 검사용 
		if (file.getSize() == 0){
			errors.rejectValue("file", "", "업로드할 파일을 선택하시오");
		}
		
		// 추가로 짤 계획 
		
	}
	
}
