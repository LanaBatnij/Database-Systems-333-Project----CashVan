public class OrderToProduct {
    private int productID;
    private int orderID;
    private double productPrice;


    public OrderToProduct(int productID, int orderID, double productPrice) {
        this.productID = productID;
        this.orderID = orderID;
        this.productPrice = productPrice;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }
}