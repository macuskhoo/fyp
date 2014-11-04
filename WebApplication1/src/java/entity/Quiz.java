/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author macus.khoo.2012
 */
public class Quiz {
    private int quizId;
    private String question;
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;
    
    public Quiz(int quizId,String question,String optionA,String optionB,String optionC,String optionD){
        this.quizId = quizId;
        this.question = question;
        this.optionA = optionA;
        this.optionB = optionB;
        this.optionC = optionC;
        this.optionD = optionD;
    }
    
    public int getQuizId(){
        return quizId;
    }
    public String getQuestion(){
        return question;
    }
    public String getOptionA(){
        return optionA;
    }
    public String getOptionB(){
        return optionB;
    }
    public String getOptionC(){
        return optionC;
    }
    public String getOptionD(){
        return optionD;
    }
    
}
