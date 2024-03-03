import java.util.*;

public class Product {
    private int productID;
    private String productName;
    private int weight;
    private int category;
    private String barcode;
    private Date producedDate;
    private Date expiredDate;
    private int SNN;

    public Product(int productID, String productName, int weight, int category, String barcode,
                   Date producedDate, Date expiredDate, int SNN) {
        this.productID = productID;
        this.productName = productName;
        this.weight = weight;
        this.category = category;
        this.barcode = barcode;
        this.producedDate = producedDate;
        this.expiredDate = expiredDate;
        this.SNN = SNN;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public Date getProducedDate() {
        return producedDate;
    }

    public void setProducedDate(Date producedDate) {
        this.producedDate = producedDate;
    }

    public Date getExpiredDate() {
        return expiredDate;
    }

    public void setExpiredDate(Date expiredDate) {
        this.expiredDate = expiredDate;
    }

    public int getSNN() {
        return SNN;
    }

    public void setSNN(int SNN) {
        this.SNN = SNN;
    }
}
