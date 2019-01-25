package zw.itman.rentcar.pojo;

public class Orders {
    private String ordersid;

    private String ordercode;

    private String usersid;

    private String carsid;

    private String thestart;

    private String theend;

    private String place;

    private String address;

    private String addtime;

    private String status;

    private String money;

    public String getOrdersid() {
        return ordersid;
    }

    public void setOrdersid(String ordersid) {
        this.ordersid = ordersid == null ? null : ordersid.trim();
    }

    public String getOrdercode() {
        return ordercode;
    }

    public void setOrdercode(String ordercode) {
        this.ordercode = ordercode == null ? null : ordercode.trim();
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

    public String getThestart() {
        return thestart;
    }

    public void setThestart(String thestart) {
        this.thestart = thestart == null ? null : thestart.trim();
    }

    public String getTheend() {
        return theend;
    }

    public void setTheend(String theend) {
        this.theend = theend == null ? null : theend.trim();
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money == null ? null : money.trim();
    }
}