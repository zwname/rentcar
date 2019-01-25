package zw.itman.rentcar.dto;

/**
 * @ClassName CrasCateBrandDto
 * @Description
 * @Author --zhengwei
 * @Date 2019/1/17 10:08
 * @Version
 */
public class CarsCateBrandDto {
    private String carsid;

    private String carno;

    private String image;

    private String cateid;

    private String brandid;

    private String price;

    private String colour;

    private String degree;

    private String displacement;

    private String special;

    private String recommend;

    private String catename;
    private String brandname;


    public CarsCateBrandDto() {
    }

    public CarsCateBrandDto(String carsid, String carno, String image, String cateid, String brandid, String price, String colour, String degree, String displacement, String special, String recommend, String catename, String brandname) {
        this.carsid = carsid;
        this.carno = carno;
        this.image = image;
        this.cateid = cateid;
        this.brandid = brandid;
        this.price = price;
        this.colour = colour;
        this.degree = degree;
        this.displacement = displacement;
        this.special = special;
        this.recommend = recommend;
        this.catename = catename;
        this.brandname = brandname;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCateid() {
        return cateid;
    }

    public void setCateid(String cateid) {
        this.cateid = cateid;
    }

    public String getBrandid() {
        return brandid;
    }

    public void setBrandid(String brandid) {
        this.brandid = brandid;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getDisplacement() {
        return displacement;
    }

    public void setDisplacement(String displacement) {
        this.displacement = displacement;
    }

    public String getSpecial() {
        return special;
    }

    public void setSpecial(String special) {
        this.special = special;
    }

    public String getRecommend() {
        return recommend;
    }

    public void setRecommend(String recommend) {
        this.recommend = recommend;
    }

    public String getCatename() {
        return catename;
    }

    public void setCatename(String catename) {
        this.catename = catename;
    }

    public String getBrandname() {
        return brandname;
    }

    public void setBrandname(String brandname) {
        this.brandname = brandname;
    }

    @Override
    public String toString() {
        return "CrasCateBrandDto{" +
                "carsid='" + carsid + '\'' +
                ", carno='" + carno + '\'' +
                ", image='" + image + '\'' +
                ", cateid='" + cateid + '\'' +
                ", brandid='" + brandid + '\'' +
                ", price='" + price + '\'' +
                ", colour='" + colour + '\'' +
                ", degree='" + degree + '\'' +
                ", displacement='" + displacement + '\'' +
                ", special='" + special + '\'' +
                ", recommend='" + recommend + '\'' +
                ", catename='" + catename + '\'' +
                ", brandname='" + brandname + '\'' +
                '}';
    }
}
