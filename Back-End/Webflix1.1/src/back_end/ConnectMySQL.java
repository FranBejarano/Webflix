/*
 * ConnectMySQL class connects the app with MySQL.
 * The mysql-connector library is used to guarantee this connection.
 */
package back_end;

/**
 * @author Francisco Jose Bejarano Escano
 * EC1825088
 * @date 16/03/2022
 * @location Edinburgh
 * @version 1.0
 */

//Import MySQL connection classes and drivers
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class ConnectMySQL {
 
    public Connection connection; 
    public Statement statement;
    public ResultSet result;
    
    private String urlDb = "jdbc:mysql://localhost:3306/test";
    private String userDb = "root";
    private String passDb = "";
    /**
     * Connects the app with the database
    public void ConnectDatabase() {
     */
    public void ConnectDatabase() {

        try {

            // Driver that allows the connection with the database
            final String controller = "com.mysql.cj.jdbc.Driver"; 
            Class.forName(controller);

            // The connects with the database through the URL, username of the
            // database and password
            connection = DriverManager.getConnection(urlDb, userDb, passDb);
            // Creates a Statement object for sending SQL statements to the database.
            statement = connection.createStatement();

        } 
        catch (ClassNotFoundException | SQLException ex) {

            JOptionPane.showMessageDialog(null,ex.getMessage(), "Error ", JOptionPane.ERROR_MESSAGE);
        }

    }

    /**
     * Disconnects the app with the database
     */
    public void DisconnectDatabase() {

        try {

            if (connection != null ) {

                if(statement != null) {

                    statement.close();
                }

            connection.close();
            }
        }
        catch (SQLException ex) {

            JOptionPane.showMessageDialog(null,ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
            System.exit(1);
        }
    }

    /**
     * Attempts to establish a connection to the given database URL.
     * @param url
     * @param user
     * @param password
     * @return a connection to the URL
     */
    public Connection getConnection(String url,String user,String password) {

        return connection;
    }
    
    //Getters
    public String getUrlDb() {
        return urlDb;
    }

    public String getUserDb() {
        return userDb;
    }

    public String getPassDb() {
        return passDb;
    }
    
    //Setters
    public void setUrlDb(String urlDb) {
        this.urlDb = urlDb;
    }

    public void setUserDb(String userDb) {
        this.userDb = userDb;
    }

    public void setPassDb(String passDb) {
        this.passDb = passDb;
    }
}
