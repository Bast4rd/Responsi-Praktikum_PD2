package Library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Koneksi {

    private Message msg = new Message();

    private Connection con;
    private Statement st;
    private final String DRIVER = "com.mysql.jdbc.Driver";
    private final String DATABASE = "restaurant";
    private final String USER = "root";
    private final String PASS = "";

    public Koneksi() {
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + DATABASE, USER, PASS);
            st = con.createStatement();
//            msg.msgInformation("koneksi Berhasil");
        } catch (ClassNotFoundException | SQLException e) {
            msg.msgError("Error Koneksi : " + e.getMessage());
        }
    }

    public ResultSet getQuery(String query) {
        try {
            return st.executeQuery(query);
        } catch (SQLException e) {
            msg.msgError("Error Query : " + e.getMessage());
            return null;
        }
    }

    public void setExecute(String query) {
        try {
            st.executeUpdate(query);
        } catch (SQLException e) {
            msg.msgError("Error Execute : " + e.getMessage());
        }
    }

    public String getAutoMaxID(String prefix, int length, String table, String column) {
        String id = null;
        try {
            ResultSet rs = getQuery("SELECT MAX(SUBSTRING("
                    + column + ", " + (prefix.length() + 1) + ", " + length + ")) "
                    + "FROM " + table + "");
            if (rs.next()) {
                id = prefix + String.format("%0" + (length - prefix.length()) + "d", rs.getInt(1) + 1);
            } else {
                id = prefix + String.format("%0" + (length - prefix.length()) + "d", 1);
            }
        } catch (Exception e) {
            msg.msgError("Error getAutoMaxID : " + e.getMessage());
        }
        return id;
    }

}
