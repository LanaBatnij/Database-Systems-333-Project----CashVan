import java.util.*;
public class Payment {
    private int paymentID;
    private String method;
    private Date paymentDate;
    private String remain;
    private int cusID;

    public Payment(int paymentID, String method, Date paymentDate, String remain, int cusID) {
        this.paymentID = paymentID;
        this.method = method;
        this.paymentDate = paymentDate;
        this.remain = remain;
        this.cusID = cusID;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getRemain() {
        return remain;
    }

    public void setRemain(String remain) {
        this.remain = remain;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }
}