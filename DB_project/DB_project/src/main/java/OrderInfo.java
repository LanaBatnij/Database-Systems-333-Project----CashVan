
import java.util.*;
public class OrderInfo {
    private int orderID;
    private int paymentID;
    private Date dateOfOrder;
    private boolean onSale;
    private int saleAmount;

    public OrderInfo(int orderID, int paymentID, Date dateOfOrder, boolean onSale, int saleAmount) {
        this.orderID = orderID;
        this.paymentID = paymentID;
        this.dateOfOrder = dateOfOrder;
        this.onSale = onSale;
        this.saleAmount = saleAmount;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public Date getDateOfOrder() {
        return dateOfOrder;
    }

    public void setDateOfOrder(Date dateOfOrder) {
        this.dateOfOrder = dateOfOrder;
    }

    public boolean isOnSale() {
        return onSale;
    }

    public void setOnSale(boolean onSale) {
        this.onSale = onSale;
    }

    public int getSaleAmount() {
        return saleAmount;
    }

    public void setSaleAmount(int saleAmount) {
        this.saleAmount = saleAmount;
    }
}