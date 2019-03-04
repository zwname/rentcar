package zw.itman.rentcar.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
   public static String craeteDate() {
	   Date date=new Date();
	   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	   return sdf.format(date);
   }
   
   public static String craeteNum() {
	   Date date=new Date();
	   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
	   String format = sdf.format(date).replace("-", "");
	   return format;
   }
   public static void main(String[] args) {
	/*String craeteNum = craeteNum();
	System.err.println(craeteNum);*/
}
}
