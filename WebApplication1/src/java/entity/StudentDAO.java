/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import util.SQLUtil;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author macus.khoo.2012
 */
public class StudentDAO {
    
    public static Student retrieveStudent(String userId) {
        Connection conn = null;
        try {
            conn = ConnectionManager.getConnection();
            return retrieveStudent(conn, userId);
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } finally {
            ConnectionManager.close(conn);
        }
    }
    public static Student retrieveStudent(Connection conn, String userId){
        Student s = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = SQLUtil.getSelectStatement(conn, "student", "userId", userId);
            rs = stmt.executeQuery();
            if (rs.next()) {
                s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (SQLException e) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        } finally {
            ConnectionManager.close(stmt, rs);
        }
        return s;
    }
    
     public static ArrayList<Student> retrieveAll() {
        ArrayList<Student> studentList = new ArrayList<Student>();
        Connection conn = null;
        try {
            conn = ConnectionManager.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
            ConnectionManager.close(conn);
            return studentList;
        }
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = SQLUtil.getSelectStatement(conn, "student");
            rs = stmt.executeQuery();

            while (rs.next()) {
                //Create student
                Student s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4));
                //Get student
                studentList.add(s);
            }
            return studentList;
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
        return null;
    }    
}
