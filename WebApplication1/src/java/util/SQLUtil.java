/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import entity.ConnectionManager;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Leong Pui Yi
 */
public class SQLUtil {

    /**
     * Get delete statement 
     * @param conn takes in a Connection
     * @param table the table to delete data from
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getDeleteStatement(Connection conn, String table) throws SQLException {
        return getDeleteStatement(conn, table, null);
    }

    /**
     * Get delete statement 
     * @param conn takes in a Connection
     * @param table the table to delete data from
     * @param primaryKeyHeader the column name of the data to be deleted
     * @param primaryKeyValue the value to be deleted
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getDeleteStatement(Connection conn, String table, String primaryKeyHeader, String primaryKeyValue) throws SQLException {
        HashMap<String, Object> map = new HashMap();
        if (primaryKeyHeader != null && primaryKeyValue != null) {
            map.put(primaryKeyHeader, primaryKeyValue);
        }
        return getDeleteStatement(conn, table, map);
    }

    /**
     * Get delete statement 
     * @param conn takes in a Connection
     * @param table the table to delete data from
     * @param map the delete object
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getDeleteStatement(Connection conn, String table, HashMap<String, Object> map) throws SQLException {
        PreparedStatement preparedStatement = null;
        String deleteTableSQL = "DELETE FROM " + table;
        if (map != null && !map.isEmpty()) {
            deleteTableSQL += " WHERE ";
            //creating an array of keyset
            String[] keys = (String[]) map.keySet().toArray(new String[map.keySet().size()]);
            for (String key : keys) {
                deleteTableSQL += key + " = ? AND ";
            }
            //this is to subtract the last ","
            deleteTableSQL = deleteTableSQL.substring(0, deleteTableSQL.length() - 4);
            try {
                preparedStatement = conn.prepareStatement(deleteTableSQL);
                for (int i = 1; i <= keys.length; i++) {
                    Object o = map.get(keys[i - 1]);
                    if (o instanceof String) {
                        preparedStatement.setString(i, (String) o);
                    } else if (o instanceof Integer) {
                        preparedStatement.setInt(i, (Integer) o);
                    } else if (o instanceof java.sql.Date) {
                        preparedStatement.setDate(i, (Date) o);
                    } else if (o instanceof Time) {
                        preparedStatement.setTime(i, (Time) o);
                    } else if (o instanceof Double) {
                        preparedStatement.setDouble(i, (Double) o);
                    } else {
                        throw new SQLException("value type not supported");
                    }
                }
            } catch (SQLException e) {
                Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                        e.getMessage(), e);
            }
        } else {
            try {
                preparedStatement = conn.prepareStatement(deleteTableSQL);
            } catch (SQLException e) {
                Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                        e.getMessage(), e);
            }
        }
        return preparedStatement;
    }

    /**
     * Get PreparedStatement for selecting everything
     *
     * @param conn takes in a connection
     * @param table the table to select data from
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getSelectStatement(Connection conn, String table) throws SQLException {
        return getSelectStatement(conn, table, null, null);
    }

    /**
     * To get PreparedStatement for selecting a row in table with primary key as
     * constrain
     *
     * @param conn takes in a connection
     * @param table the table to select data from
     * @param primaryKeyHeader the column name of the data to be selected
     * @param primaryKeyValue the value to be selected
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getSelectStatement(Connection conn, String table, String primaryKeyHeader, String primaryKeyValue) throws SQLException {
        PreparedStatement preparedStatement = null;
        String selectTableSQL = "SELECT * FROM " + table;
        if (primaryKeyHeader != null && primaryKeyValue != null) {
            selectTableSQL += " WHERE " + primaryKeyHeader + " = ?";
        }
        try {
            preparedStatement = conn.prepareStatement(selectTableSQL);
            if (primaryKeyHeader != null && primaryKeyValue != null) {
                preparedStatement.setString(1, primaryKeyValue);
            }
            return preparedStatement;
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING, e.getMessage(), e);
        }
        return preparedStatement;
    }
    
    /**
     * To get Select Statement
     * @param conn takes in a connection
     * @param table the table to select data from 
     * @param primaryKeyHeader the column name of the data to be selected
     * @param primaryKeyValue the value to be selected
     * @param orderByValue the column to sort
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getSelectStatement(Connection conn, String table, String primaryKeyHeader, String primaryKeyValue, String orderByValue) throws SQLException {
        PreparedStatement preparedStatement = null;
        String selectTableSQL = "SELECT * FROM " + table;
        if(primaryKeyHeader != null && primaryKeyValue != null) selectTableSQL += " WHERE " + primaryKeyHeader + " = ?";
        if(orderByValue != null) selectTableSQL += " ORDER BY ?";
        try {
            preparedStatement = conn.prepareStatement(selectTableSQL);
            int i = 1;
            if (primaryKeyHeader != null && primaryKeyValue != null) { 
                preparedStatement.setString(i, primaryKeyValue);
                i++;
            }
            if(orderByValue != null) preparedStatement.setString(i, orderByValue);
            return preparedStatement;
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING, e.getMessage(), e);
        }
        return preparedStatement;
    }

    /**
     * To get Select Statement
     * @param conn takes in a connection
     * @param table the table to select data from 
     * @param map the select object
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getSelectStatement(Connection conn, String table, HashMap<String, Object> map) throws SQLException {
        PreparedStatement preparedStatement = null;
        String selectTableSQL = "SELECT * FROM " + table;
        if (map != null && !map.isEmpty()) {
            selectTableSQL += " WHERE ";
            //creating an array of keyset
            String[] keys = (String[]) map.keySet().toArray(new String[map.keySet().size()]);
            for (String key : keys) {
                selectTableSQL += key + " = ? AND ";
            }
            //this is to subtract the last "AND "
            selectTableSQL = selectTableSQL.substring(0, selectTableSQL.length() - 4);
            try {
                preparedStatement = conn.prepareStatement(selectTableSQL);
                for (int i = 1; i <= keys.length; i++) {
                    Object o = map.get(keys[i - 1]);
                    if (o instanceof String) {
                        preparedStatement.setString(i, (String) o);
                    } else if (o instanceof Integer) {
                        preparedStatement.setInt(i, (Integer) o);
                    } else if (o instanceof java.sql.Date) {
                        preparedStatement.setDate(i, (Date) o);
                    } else if (o instanceof Time) {
                        preparedStatement.setTime(i, (Time) o);
                    } else if (o instanceof Double) {
                        preparedStatement.setDouble(i, (Double) o);
                    } else {
                        throw new SQLException("value type not supported");
                    }
                }
            } catch (SQLException e) {
                Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                        e.getMessage(), e);
            }
        } else {
            try {
                preparedStatement = conn.prepareStatement(selectTableSQL);
            } catch (SQLException e) {
                Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                        e.getMessage(), e);
            }
        }
        return preparedStatement;
    }

    /**
     * To get Select Statement 
     * @param conn takes in a connection
     * @param table the table to select the data from 
     * @param value the selected object
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getDistinctSelectStatement(Connection conn, String table, String value) throws SQLException {
        PreparedStatement preparedStatement = null;
        String selectTableSQL = "SELECT DISTINCT " + value + " FROM " + table;
        try {
            preparedStatement = conn.prepareStatement(selectTableSQL);
            return preparedStatement;
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING, e.getMessage(), e);
        }
        return preparedStatement;
    }
    
    /**
     * To get Insert Statement
     * @param conn takes in a connection
     * @param table the table to insert the data into
     * @param map the insert object
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getInsertStatement(Connection conn, String table, HashMap<String, Object> map) throws SQLException {
        //check if both hashmap is not null and not empty
        if (map == null || map.isEmpty()) {
            throw new SQLException("Header and value empty");
        }
        PreparedStatement preparedStatement = null;
        //create turn ArrayList into array with size of keyset().size()
        String[] keys = (String[]) map.keySet().toArray(new String[map.keySet().size()]);
        //creating the insert statement
        String insertTableSQL = "INSERT INTO " + table + " (";
        for (String key : keys) {
            insertTableSQL += key + ", ";
        }
        //this is to subtract the last ", "
        insertTableSQL = insertTableSQL.substring(0, insertTableSQL.length() - 2);
        insertTableSQL += ") VALUES (";
        for (String key : keys) {
            insertTableSQL += "?,";
        }
        //this is to subtract the last ","
        insertTableSQL = insertTableSQL.substring(0, insertTableSQL.length() - 1);
        insertTableSQL += ")";
        try {
            // execute insert SQL stetement
            preparedStatement = conn.prepareStatement(insertTableSQL);
            for (int i = 1; i <= keys.length; i++) {
                Object o = map.get(keys[i - 1]);
                if (o instanceof String) {
                    preparedStatement.setString(i, (String) o);
                } else if (o instanceof Integer) {
                    preparedStatement.setInt(i, (Integer) o);
                } else if (o instanceof java.sql.Date) {
                    preparedStatement.setDate(i, (Date) o);
                } else if (o instanceof Time) {
                    preparedStatement.setTime(i, (Time) o);
                } else if (o instanceof Double) {
                    preparedStatement.setDouble(i, (Double) o);
                } else {
                    throw new SQLException("value type not supported");
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                    e.getMessage(), e);
        }
        return preparedStatement;
    }

    /**
     * To get Update Statement
     * @param conn takes in a connection
     * @param table the table to update
     * @param changeMap the new data that is to be updated 
     * @param whereMap the old data
     * @return SQL statement
     * @throws SQLException
     */
    public static PreparedStatement getUpdateStatement(Connection conn, String table, HashMap<String, Object> changeMap, HashMap<String, Object> whereMap) throws SQLException {
        //check if both hashmap is not null and not empty
        if (changeMap == null || whereMap == null || changeMap.isEmpty() || whereMap.isEmpty()) {
            throw new SQLException("Header and value empty");
        }
        PreparedStatement stmt = null;
        String[] keysConstant = (String[]) whereMap.keySet().toArray(new String[whereMap.keySet().size()]);
        String[] keysChange = (String[]) changeMap.keySet().toArray(new String[changeMap.keySet().size()]);
        String updateTableSQL = "UPDATE " + table + " set ";
        for (String keyChange : keysChange) {
            updateTableSQL += keyChange + "=? , ";
        }
        updateTableSQL = updateTableSQL.substring(0, updateTableSQL.length() - 2);
        updateTableSQL += "WHERE ";
        for (String keyConstant : keysConstant) {
            updateTableSQL += keyConstant + "=? AND ";
        }
        updateTableSQL = updateTableSQL.substring(0, updateTableSQL.length() - 5);
        try {
            stmt = conn.prepareStatement(updateTableSQL);
            int i = 0;
            for (i = 1; i <= keysChange.length; i++) {
                Object o = changeMap.get(keysChange[i - 1]);
                if (o instanceof String) {
                    stmt.setString(i, (String) o);
                } else if (o instanceof Integer) {
                    stmt.setInt(i, (Integer) o);
                } else if (o instanceof java.sql.Date) {
                    stmt.setDate(i, (Date) o);
                } else if (o instanceof Time) {
                    stmt.setTime(i, (Time) o);
                } else if (o instanceof Double) {
                    stmt.setDouble(i, (Double) o);
                } else {
                    throw new SQLException("value type not supported");
                }
            }
            for (int j = 0; j < keysConstant.length; j++) {
                Object o = whereMap.get(keysConstant[j]);
                if (o instanceof String) {
                    stmt.setString(j + i, (String) o);
                } else if (o instanceof Integer) {
                    stmt.setInt(j + i, (Integer) o);
                } else if (o instanceof java.sql.Date) {
                    stmt.setDate(j + i, (Date) o);
                } else if (o instanceof Time) {
                    stmt.setTime(j + i, (Time) o);
                } else if (o instanceof Double) {
                    stmt.setDouble(j + i, (Double) o);
                } else {
                    throw new SQLException("value type not supported");
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING, e.getMessage(), e);
        }
        return stmt;
    }
}