package zw.itman.rentcar.util;

import java.util.HashMap;
import java.util.Map;

public class Message {

	private Integer code;
	private String sss;


	private Map<String, Object> extend = new HashMap<String, Object>();

	public Map<String, Object> getExtend() {
		return extend;
	}

	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getSss() {
		return sss;
	}

	public void setSss(String sss) {
		this.sss = sss;
	}


	public static Message success(String sss) {
		Message result = new Message();
		result.setCode(1);
		result.setSss(sss);
		return result;
	}


	public static Message fail(String sss) {
		Message result = new Message();
		result.setCode(-1);
		result.setSss(sss);
		return result;
	}

}
