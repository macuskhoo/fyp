/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Quiz;
import entity.QuizDAO;
import java.util.ArrayList;

/**
 *
 * @author macus.khoo.2012
 */
public class QuizController {
    public static Quiz retrieveQuiz(String quizId){
        return QuizDAO.retrieveQuiz(quizId);
    }
    public static ArrayList<Quiz> retrieveAll(){
        return QuizDAO.retrieveAll();
    }
    
    public static boolean updateQuiz(Quiz q){
        return QuizDAO.updateQuiz(q);
    }
}
