package zw.itman.rentcar.dto;

public class UsersOrdersCarsDto {
		
		// 订单信息	
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
	    
	    // 用户信息
	    private String username;
	    private String realname;
	    private String contact;
	    private String address2;
	    private String idcard;
	    private String sex;
	    
	    // 车辆信息
	    private String carno;
	    private String price;
	    private String displacement;
	    private String image;
		public String getOrdersid() {
			return ordersid;
		}
		public void setOrdersid(String ordersid) {
			this.ordersid = ordersid;
		}
		public String getOrdercode() {
			return ordercode;
		}
		public void setOrdercode(String ordercode) {
			this.ordercode = ordercode;
		}
		public String getUsersid() {
			return usersid;
		}
		public void setUsersid(String usersid) {
			this.usersid = usersid;
		}
		public String getCarsid() {
			return carsid;
		}
		public void setCarsid(String carsid) {
			this.carsid = carsid;
		}
		public String getThestart() {
			return thestart;
		}
		public void setThestart(String thestart) {
			this.thestart = thestart;
		}
		public String getTheend() {
			return theend;
		}
		public void setTheend(String theend) {
			this.theend = theend;
		}
		public String getPlace() {
			return place;
		}
		public void setPlace(String place) {
			this.place = place;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getAddtime() {
			return addtime;
		}
		public void setAddtime(String addtime) {
			this.addtime = addtime;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getMoney() {
			return money;
		}
		public void setMoney(String money) {
			this.money = money;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getRealname() {
			return realname;
		}
		public void setRealname(String realname) {
			this.realname = realname;
		}
		public String getContact() {
			return contact;
		}
		public void setContact(String contact) {
			this.contact = contact;
		}
		public String getAddress2() {
			return address2;
		}
		public void setAddress2(String address2) {
			this.address2 = address2;
		}
		public String getIdcard() {
			return idcard;
		}
		public void setIdcard(String idcard) {
			this.idcard = idcard;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getCarno() {
			return carno;
		}
		public void setCarno(String carno) {
			this.carno = carno;
		}
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		public String getDisplacement() {
			return displacement;
		}
		public void setDisplacement(String displacement) {
			this.displacement = displacement;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public UsersOrdersCarsDto(String ordersid, String ordercode, String usersid, String carsid, String thestart,
				String theend, String place, String address, String addtime, String status, String money,
				String username, String realname, String contact, String address2, String idcard, String sex,
				String carno, String price, String displacement, String image) {
			super();
			this.ordersid = ordersid;
			this.ordercode = ordercode;
			this.usersid = usersid;
			this.carsid = carsid;
			this.thestart = thestart;
			this.theend = theend;
			this.place = place;
			this.address = address;
			this.addtime = addtime;
			this.status = status;
			this.money = money;
			this.username = username;
			this.realname = realname;
			this.contact = contact;
			this.address2 = address2;
			this.idcard = idcard;
			this.sex = sex;
			this.carno = carno;
			this.price = price;
			this.displacement = displacement;
			this.image = image;
		}
		public UsersOrdersCarsDto() {
			super();
		}
	    
		
	    
}
