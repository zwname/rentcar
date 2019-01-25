package zw.itman.rentcar.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Days {
	
	
	//计算天数
	public static long getDays(String begin,String end) throws ParseException {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		Date beginTime=sdf.parse(begin);
		Date endTime=sdf.parse(end);
		System.err.println("endTime.getTime()========"+endTime.getTime());
		System.err.println("beginTime.getTime()==========="+beginTime.getTime());
		long days=(endTime.getTime()-beginTime.getTime())/(3600*24*1000);
		return days;
	}
	
//	public static void main(String[] args)  {
//		
//		try {
//			String b="2013-12-2";
//			String e="2014-12-2";
//			long days = Days.getDays(b, e);
//			System.err.println("days=========="+days);
//		} catch (ParseException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//		
//	}

}
