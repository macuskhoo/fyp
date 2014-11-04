/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import entity.Student;
import entity.StudentDAO;
import java.util.ArrayList;
/**
 *
 * @author macus.khoo.2012
 */
public class StudentController {
    public static Student retrieveStudent(String userId) {
        return StudentDAO.retrieveStudent(userId);
    }
    public static ArrayList<Student> retrieveAll(){
        return StudentDAO.retrieveAll();
    }
}
