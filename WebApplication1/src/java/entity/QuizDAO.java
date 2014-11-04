/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import static entity.StudentDAO.retrieveStudent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.SQLUtil;

/**
 *
 * @author macus.khoo.2012
 */
public class QuizDAO {
     public static Quiz retrieveQuiz(String quizId) {
        Connection conn = null;
        try {
            conn = ConnectionManager.getConnection();
            return retrieveQuiz(conn, quizId);
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } finally {
            ConnectionManager.close(conn);
        }
    }
    public static Quiz retrieveQuiz(Connection conn, String quizId){
        Quiz q = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = SQLUtil.getSelectStatement(conn, "quiz", "quizId", quizId);
            rs = stmt.executeQuery();
            if (rs.next()) {
                q = new Quiz(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6));
            }
        } catch (SQLException e) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        } finally {
            ConnectionManager.close(stmt, rs);
        }
        return q;
    }
    
    public static ArrayList<Quiz> retrieveAll() {
        ArrayList<Quiz> quizList = new ArrayList<Quiz>();
        Connection conn = null;
        try {
            conn = ConnectionManager.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(QuizDAO.class.getName()).log(Level.SEVERE, null, ex);
            ConnectionManager.close(conn);
            return quizList;
        }
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = SQLUtil.getSelectStatement(conn, "quiz");
            rs = stmt.executeQuery();

            while (rs.next()) {
                //Create student
                Quiz q = new Quiz(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5),rs.getString(6));
                //Get student
                quizList.add(q);
            }
            return quizList;
        } catch (SQLException ex) {
            Logger.getLogger(QuizDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
        return null;
    }
    
    public static boolean updateQuiz(Connection conn, Quiz q) {
        PreparedStatement stmt = null;
        try {
            HashMap<String, Object> mapChange = new HashMap<String, Object>();
            mapChange.put("question", q.getQuestion());
            mapChange.put("optionA", q.getOptionA());
            mapChange.put("optionB", q.getOptionB());
            mapChange.put("optionC", q.getOptionC());
            mapChange.put("optionD", q.getOptionD());
            HashMap<String, Object> mapConstant = new HashMap<String, Object>();
            mapConstant.put("quizId", q.getQuizId());
            stmt = SQLUtil.getUpdateStatement(conn, "quiz", mapChange, mapConstant);
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(QuizDAO.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        } finally {
            ConnectionManager.close(stmt);
        }
        return false;
    }
    
    public static boolean updateQuiz(Quiz q) {
        Connection conn = null;
        try {
            conn = ConnectionManager.getConnection();
            return updateQuiz(conn, q);
        } catch (SQLException ex) {
            Logger.getLogger(QuizDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } finally {
            ConnectionManager.close(conn);
        }
    }
}
