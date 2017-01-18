package util;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conx {
    private static final String URL = "jdbc:mysql://127.0.0.1/pfe";
    private static final String USER = "root";
    private static final String MDP = "";

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conx.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Connection getConnexion() throws SQLException {
        return DriverManager.getConnection(URL, USER, MDP);
    }
}

    

