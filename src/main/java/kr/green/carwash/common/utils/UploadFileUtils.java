package kr.green.carwash.common.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception {
		
		/* UUID : 동일한 파일을 업로드했을 때 구분하기 위한 고유 범용 식별자를 생성 */
		UUID uid = UUID.randomUUID();
		
		/* savedName : 서버에 저장할 파일이름을 설정, 
		 * 표현 : 고유범용 식별자_파일명 */
		String savedName = uid.toString() + "_" + originalName;
		
		/* savedPath : 서버에 지정한 폴더에 저장하기 위해 만들 하위폴더 경로
		 * 하위폴더가 없으면 서버에 지정한 폴더에 많은 파일들이 업로드되서 성능저하가 일어나기 때문에
		 * 하위폴더를 생성해서 파일을을 분할하여 관리하는 것
		 * 일폴더의 경로를 반환 */
		String savedPath = calcPath(uploadPath);
		
		/* 서버경로에다가 일폴더경로/파일경로를 생성
		 * 예) C:\ychoi\업로드files\index.html */ 
		File target = new File(uploadPath + savedPath, savedName);
		
		/* 예) C:\ychoi\업로드files\index.html의 실제데이터를 복사해서 생성 */
		FileCopyUtils.copy(fileData, target);
		
		/* */
		String uploadFileName = makeIcon(uploadPath, savedPath, savedName);
		return uploadFileName;
	}

	private static String calcPath(String uploadPath) {
		
		Calendar cal = Calendar.getInstance();
		
		/* File.separator : \\2018 (운영체제마다 다름) */
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		
		/* monthPath : \\2018\\06 (0~11까지 값을 가져오는데 거기에 +1 : 1~12) 
		 * DecimalFormat : 2자리로 맞춰주는것 : 6월이면 06*/
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		
		/* File.separator : \\2018\\06\\28 (현재날짜를 가져오는것) */
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		
		/* makeDir : 폴더 생성 → 서버경로 밑에 연도 폴더를 생성하고 연도 폴더 밑에 달 폴더 생성하고 달 폴더 밑에 일 폴더 생성 */
		makeDir(uploadPath, yearPath, monthPath, datePath);

		/* 일폴더의 경로를 리턴 */
		return datePath;

	}
	
	private static void makeDir(String uploadPath, String... paths) {
		
		/* 일 폴더가 생성되어 있으면 더이상 작업하지 않고 종료하는 코드 
		 * new가 있다고 해서 폴더를 생성하는게 아니라, 일폴더를 이용하여 서버경로 + 일폴더 경로를 합친 경로를 생성하고 
		 * 생성된 경로가 존재하면 작업을 할 필요가 없음 */
		if (new File(uploadPath + paths[paths.length - 1]).exists())	
			return;
		
		/* 매개변수에서 입력받은 경로들을 하나씩 가져와서 해당경로에 폴더가 있는지 없는지 확인하여
		 * 있으면 그냥 넘어가고 없으면 폴더를 새로 생성하는 반복문 코드 */
		for (String path : paths) {
			File dirPath = new File(uploadPath + path);
			
			/* 해당경로가 존재하지 않으면 해당경로를 생성(폴더생성) */
			if (!dirPath.exists())
				dirPath.mkdir();
		}
	}

	private static String makeIcon(String uploadPath, String path, String fileName) throws Exception {
		String iconName = uploadPath + path + File.separator + fileName;
		
		/* 실제 서버에는 C:\ychoi\업로드files\... 에 있지만 컨트롤러에서 접근할 때는 C:/ychoi/업로드files/로 접근하기 위해 \를 /로 교체해야 함 
		 * iconName.substring(uploadPath.length()) : 풀경로(서버경로\폴더경로\파일명)에서 서버경로를 제외한 경로를 추출 : 폴더경로\파일명 
		 * .replace(File.separatorChar, '/' : 폴더경로\파일명을 폴더경로/파일명으로 수정하는 코드 */
		return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
	
	private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception{
	      
      // File을 통해 이미지 파일 경로를 읽어오고 ImageIO.read응 통해 이미지 파일을 BufferedImage에 저장
      BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
      
      // 원본 이미지를 기준으로 썸네일을 생성
      BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 50);
      
      // 썸네일명을 생성하는데 파일명 앞에 s_가 붙음
      String thumbnailName = uploadPath + File.separator + "s_" + fileName;
      
      // 썸네일명을 가지는 파일을 생성
      File newFile = new File(thumbnailName);
      
      // 이미지의 확장자 추출
      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
      
      // 썸네일 이미지를 저장
      ImageIO.write(destImg, formatName.toUpperCase(), newFile);
      
      return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
   }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
