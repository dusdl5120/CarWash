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
		
		/* UUID : ������ ������ ���ε����� �� �����ϱ� ���� ���� ���� �ĺ��ڸ� ���� */
		UUID uid = UUID.randomUUID();
		
		/* savedName : ������ ������ �����̸��� ����, 
		 * ǥ�� : �������� �ĺ���_���ϸ� */
		String savedName = uid.toString() + "_" + originalName;
		
		/* savedPath : ������ ������ ������ �����ϱ� ���� ���� �������� ���
		 * ���������� ������ ������ ������ ������ ���� ���ϵ��� ���ε�Ǽ� �������ϰ� �Ͼ�� ������
		 * ���������� �����ؼ� �������� �����Ͽ� �����ϴ� ��
		 * �������� ��θ� ��ȯ */
		String savedPath = calcPath(uploadPath);
		
		/* ������ο��ٰ� ���������/���ϰ�θ� ����
		 * ��) C:\ychoi\���ε�files\index.html */ 
		File target = new File(uploadPath + savedPath, savedName);
		
		/* ��) C:\ychoi\���ε�files\index.html�� ���������͸� �����ؼ� ���� */
		FileCopyUtils.copy(fileData, target);
		
		/* */
		String uploadFileName = makeIcon(uploadPath, savedPath, savedName);
		return uploadFileName;
	}

	private static String calcPath(String uploadPath) {
		
		Calendar cal = Calendar.getInstance();
		
		/* File.separator : \\2018 (�ü������ �ٸ�) */
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		
		/* monthPath : \\2018\\06 (0~11���� ���� �������µ� �ű⿡ +1 : 1~12) 
		 * DecimalFormat : 2�ڸ��� �����ִ°� : 6���̸� 06*/
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		
		/* File.separator : \\2018\\06\\28 (���糯¥�� �������°�) */
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		
		/* makeDir : ���� ���� �� ������� �ؿ� ���� ������ �����ϰ� ���� ���� �ؿ� �� ���� �����ϰ� �� ���� �ؿ� �� ���� ���� */
		makeDir(uploadPath, yearPath, monthPath, datePath);

		/* �������� ��θ� ���� */
		return datePath;

	}
	
	private static void makeDir(String uploadPath, String... paths) {
		
		/* �� ������ �����Ǿ� ������ ���̻� �۾����� �ʰ� �����ϴ� �ڵ� 
		 * new�� �ִٰ� �ؼ� ������ �����ϴ°� �ƴ϶�, �������� �̿��Ͽ� ������� + ������ ��θ� ��ģ ��θ� �����ϰ� 
		 * ������ ��ΰ� �����ϸ� �۾��� �� �ʿ䰡 ���� */
		if (new File(uploadPath + paths[paths.length - 1]).exists())	
			return;
		
		/* �Ű��������� �Է¹��� ��ε��� �ϳ��� �����ͼ� �ش��ο� ������ �ִ��� ������ Ȯ���Ͽ�
		 * ������ �׳� �Ѿ�� ������ ������ ���� �����ϴ� �ݺ��� �ڵ� */
		for (String path : paths) {
			File dirPath = new File(uploadPath + path);
			
			/* �ش��ΰ� �������� ������ �ش��θ� ����(��������) */
			if (!dirPath.exists())
				dirPath.mkdir();
		}
	}

	private static String makeIcon(String uploadPath, String path, String fileName) throws Exception {
		String iconName = uploadPath + path + File.separator + fileName;
		
		/* ���� �������� C:\ychoi\���ε�files\... �� ������ ��Ʈ�ѷ����� ������ ���� C:/ychoi/���ε�files/�� �����ϱ� ���� \�� /�� ��ü�ؾ� �� 
		 * iconName.substring(uploadPath.length()) : Ǯ���(�������\�������\���ϸ�)���� ������θ� ������ ��θ� ���� : �������\���ϸ� 
		 * .replace(File.separatorChar, '/' : �������\���ϸ��� �������/���ϸ����� �����ϴ� �ڵ� */
		return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
	
	private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception{
	      
      // File�� ���� �̹��� ���� ��θ� �о���� ImageIO.read�� ���� �̹��� ������ BufferedImage�� ����
      BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
      
      // ���� �̹����� �������� ������� ����
      BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 50);
      
      // ����ϸ��� �����ϴµ� ���ϸ� �տ� s_�� ����
      String thumbnailName = uploadPath + File.separator + "s_" + fileName;
      
      // ����ϸ��� ������ ������ ����
      File newFile = new File(thumbnailName);
      
      // �̹����� Ȯ���� ����
      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
      
      // ����� �̹����� ����
      ImageIO.write(destImg, formatName.toUpperCase(), newFile);
      
      return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
   }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
