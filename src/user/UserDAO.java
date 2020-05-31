package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public UserDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/BBS?characterEncoding=UTF-8&&serverTimezone=UTC";
            String dbID = "root";
            String dbPassword = "root";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int login(String userID, String userPassword){
        String SQL = "SELECT userPassword FROM USER WHERE userID=?"; //  ? will be replaced with setString's 2nd param
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID); //  2nd param goes to prepare statement's ? mark.
            rs = pstmt.executeQuery();
            if (rs.next()) {
                if (rs.getString(1).equals(userPassword))   //  matching password
                    return 1;   // successfully log in
                else
                    return 0;   //  wrong password
            }
            return -1;  //  there are no such ID in DB
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2;  //  -2 represents database error
    }

    public int signup(User user){
        String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
        //userID, userPassword,userName,userGender,userEmail

        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getUserPassword());
            pstmt.setString(3, user.getUserName());
            pstmt.setString(4, user.getUserGender());
            pstmt.setString(5, user.getUserEmail());
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;  //  -1 represents database error
    }
}
