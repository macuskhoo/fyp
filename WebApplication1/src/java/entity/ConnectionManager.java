/**
 * A class that manages connections to the database. It also has a utility
 * method that close connections, statements and resultsets
 */
package entity;
import java.sql.*;
import java.util.Properties;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
 
 /**
 *
 * @author G3T8
 */
 
public class ConnectionManager {
  private static final String PROPS_FILENAME = "/connection.properties";
  private static String dbUser;
  private static String dbPassword;
  private static String dbURL;
  static {
    try {
      // Retrieve properties from connection.properties via the CLASSPATH
      // WEB-INF/classes is on the CLASSPATH
      InputStream is = ConnectionManager.class.getResourceAsStream(PROPS_FILENAME);
      Properties props = new Properties();
      props.load(is);
      // load database connection details
      String host = "127.10.139.130";
      String port = props.getProperty("db.port");
      String dbName = "is480";
      dbUser = "adminW1CrVNZ";
      dbPassword = "b7lRJ3TYmVyF";
      dbURL = "jdbc:mysql://" + host + ":" + port + "/" + dbName;
    } catch (Exception ex) {
      // unable to load properties file
      String message = "Unable to load '" + PROPS_FILENAME + "'.";
      System.out.println(message);
      Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, message, ex);
      throw new RuntimeException(message, ex);
    }
    try {
      Class.forName("com.mysql.jdbc.Driver").newInstance();
    } catch (Exception ex) {
      // unable to load properties file
      String message = "Unable to find JDBC driver for MySQL.";
      System.out.println(message);
      Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, message, ex);
      throw new RuntimeException(message, ex);
    }
  }
  /**
   * Gets a connection to the database
   *
   * @return the connection
   * @throws SQLException if an error occurs when connecting
   */
  public static Connection getConnection() throws SQLException {
    String message = "dbURL: " + dbURL
            + "  , dbUser: " + dbUser
            + "  , dbPassword: " + dbPassword;
    Logger.getLogger(ConnectionManager.class.getName()).log(Level.INFO, message);
    return DriverManager.getConnection(dbURL, dbUser, dbPassword);
  }
  /**
   * close the given connection, statement and resultset
   *
   * @param conn the connection object to be closed
   * @param stmt the statement object to be closed
   * @param rs the resultset object to be closed
   */
  public static void close(Connection conn, Statement stmt, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                    "Unable to close ResultSet", ex);
        }
        try {
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                    "Unable to close Statement", ex);
        }
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                    "Unable to close Connection", ex);
        }
    }

    /**
     * To set up the transaction
     * @param conn takes in a connection
     * @return true when the transaction is set up. Otherwise, false
     */
    public static boolean setupTransaction(Connection conn) {
        try {
            conn.setAutoCommit(false);
            return true;
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, "unable to setup transaction", e);
            return false;
        }
    }

    /**
     * To revert the transaction
     * @param conn takes in a connection
     */
    public static void revertTransaction(Connection conn) {
        try {
            conn.rollback();
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, "unable to rollback", e);
        }
    }

    /**
     * To commit the transaction into the database
     * @param conn takes in a connection
     */
    public static void commitTransaction(Connection conn) {
        try {
            conn.commit();
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, "unable to commit Transaction", e);
        }
    }
        public static void close(Connection conn) {
        close(conn, null, null);
    }

    /**
     * close the given connection, statement
     *
     * @param stmt the statement object to be closed
     */
    public static void close(Statement stmt) {
        close(null, stmt, null);
    }
    
    /**
     * close the given connection, statement
     *
     * @param rs the result set object to be closed
     */
    public static void close(ResultSet rs) {
        close(null, null, rs);
    }
    
    /**
     * close the given connection, statement
     *
     * @param conn the connection object to be closed
     * @param stmt the statement object to be closed
     */
    public static void close(Connection conn, Statement stmt) {
        close(conn, stmt, null);
    }
    
    /**
     * close the given statement and resultset
     * @param stmt the statement object to be closed
     * @param rs the result set object to be closed
     */
    public static void close(Statement stmt, ResultSet rs) {
        close(null, stmt, rs);
    }
}