package zw.itman.rentcar.dto;

/**
 * @ClassName UserTopicCarsDto
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/15 19:00
 * @Version
 */
public class UserTopicCarsDto {
    private String topicid;
    private String usersid;
    private String carsid;
    private String carno;
    private String username;
    private String num;
    private String addtime;
    private String contents;

    public String getUsersid() {
        return usersid;
    }

    public void setUserid(String usersid) {
        this.usersid = usersid;
    }

    public String getCarsid() {
        return carsid;
    }

    public void setCarsid(String carsid) {
        this.carsid = carsid;
    }

    public String getCarno() {
        return carno;
    }

    public void setCarno(String carno) {
        this.carno = carno;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getTopicid() {
        return topicid;
    }

    public void setTopicid(String topicid) {
        this.topicid = topicid;
    }

    public UserTopicCarsDto() {
    }

    public UserTopicCarsDto(String topicid, String usersid, String carsid, String carno, String username, String num, String addtime, String contents) {
        this.topicid = topicid;
        this.usersid = usersid;
        this.carsid = carsid;
        this.carno = carno;
        this.username = username;
        this.num = num;
        this.addtime = addtime;
        this.contents = contents;
    }

    @Override
    public String toString() {
        return "UserTopicCarsDto{" +
                "topicid='" + topicid + '\'' +
                ", userid='" + usersid + '\'' +
                ", carsid='" + carsid + '\'' +
                ", carno='" + carno + '\'' +
                ", username='" + username + '\'' +
                ", num='" + num + '\'' +
                ", addtime='" + addtime + '\'' +
                ", contents='" + contents + '\'' +
                '}';
    }
}
