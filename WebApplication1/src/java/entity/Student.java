/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;
/**
 *
 * @author macus.khoo.2012
 */
public class Student {
    private int studentId;
    private String userId;
    private String pwd;
    private String school;
    public Student(int studentId,String userId,String pwd,String school){
        this.studentId = studentId;
        this.userId = userId;
        this.pwd = pwd;
        this.school = school;
    }
    
    public int getStudentId(){
        return studentId;
    }
    
    public String getUserId(){
        return userId;
    }
    public String getPassword(){
        return pwd;
    }
    public String getSchool(){
        return school;
    }
}
