public class Customer {
    private int cusID;
    private String cusName;
    private String address;
    private String phoneNumber;
    private int category;
    private String rentedProduct;
    private String wantedProduct;
    private int SNN;


    public Customer(int cusID, String cusName, String address, String phoneNumber, int category,
                    String rentedProduct, String wantedProduct, int SNN) {
        this.cusID = cusID;
        this.cusName = cusName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.category = category;
        this.rentedProduct = rentedProduct;
        this.wantedProduct = wantedProduct;
        this.SNN = SNN;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public String getRentedProduct() {
        return rentedProduct;
    }

    public void setRentedProduct(String rentedProduct) {
        this.rentedProduct = rentedProduct;
    }

    public String getWantedProduct() {
        return wantedProduct;
    }

    public void setWantedProduct( String wantedProduct) {
        this.wantedProduct = wantedProduct;
    }

    public int getSNN() {
        return SNN;
    }

    public void setSNN(int SNN) {
        this.SNN = SNN;
    }
}