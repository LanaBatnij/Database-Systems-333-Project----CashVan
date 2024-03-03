import java.util.*;
public class Login {
    private int loginID;
    private Date loginDate;
    private int userID;

    public Login(int loginID, Date loginDate, int userID) {
        this.loginID = loginID;
        this.loginDate = loginDate;
        this.userID = userID;
    }

    public int getLoginID() {
        return loginID;
    }

    public void setLoginID(int loginID) {
        this.loginID = loginID;
    }

    public Date getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
}