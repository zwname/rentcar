package zw.itman.rentcar.pojo;

public class Topic {
    private String topicid;

    private String usersid;

    private String carsid;

    private String num;

    private String addtime;

    private String contents;

    public String getTopicid() {
        return topicid;
    }

    public void setTopicid(String topicid) {
        this.topicid = topicid == null ? null : topicid.trim();
    }

    public String getUsersid() {
        return usersid;
    }

    public void setUsersid(String usersid) {
        this.usersid = usersid == null ? null : usersid.trim();
    }

    public String getCarsid() {
        return carsid;
    }

    public void setCarsid(String carsid) {
        this.carsid = carsid == null ? null : carsid.trim();
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num == null ? null : num.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents == null ? null : contents.trim();
    }

	@Override
	public String toString() {
		return "Topic [topicid=" + topicid + ", usersid=" + usersid + ", carsid=" + carsid + ", num=" + num
				+ ", addtime=" + addtime + ", contents=" + contents + "]";
	}
    
    
}