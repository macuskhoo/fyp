<%-- 
    Document   : editquizes.jsp
    Created on : Nov 4, 2014, 3:32:18 AM
    Author     : King
--%>

<%@page import="controller.QuizController"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table class="table table-striped table-bordered table-condensed table-hover" >
            <%
                ArrayList<Quiz> quizList = QuizController.retrieveAll();
                String question = "";
                String a = "";
                String b = "";
                String c = "";
                String d = "";
                for(int i=0;i<quizList.size();i++){
                    Quiz q = quizList.get(i);
                    int id = q.getQuizId();
                    if(id == 1){
                        question = q.getQuestion();
                        a = q.getOptionA();
                        b = q.getOptionB();
                        c = q.getOptionC();
                        d = q.getOptionD();
                
            %>
                            <tr>
                            <b></b>
                            </tr>
                            <tr>
                                <th>Quiz 1</th>
                            </tr>
                            <tr>
                                <th>Question 1</th>
                                <td>             <form action ="UpdateQuizServlet" method ="post">
                    <button class="btn btn-small btn-info" type="submit">Edit</button>
                    <input type="hidden" name="quizId" value="1">
                    <input type ="text" value ="<%=question%>" name="question">
                    <input type ="text" value ="<%=a%>" name="optionA">
                    <input type ="text" value ="<%=b%>" name="optionB">
                    <input type ="text" value="<%=c%>" name="optionC">
                    <input type ="text" value="<%=d%>" name="optionD">
                </form></td>
                            </tr>
                            <tr>
                                <%
                }else if(id == 2){
                    question = q.getQuestion();
                        a = q.getOptionA();
                        b = q.getOptionB();
                        c = q.getOptionC();
                        d = q.getOptionD();
                
                                %>
                                <th>Question 2</th>
                                <td>                <form action ="UpdateQuizServlet" method ="post">
                    <button class="btn btn-small btn-info" type="submit">Edit</button>
                    <input type="hidden" name="quizId" value="2">
                   <input type ="text" value ="<%=question%>" name="question">
                    <input type ="text" value ="<%=a%>" name="optionA">
                    <input type ="text" value ="<%=b%>" name="optionB">
                    <input type ="text" value="<%=c%>" name="optionC">
                    <input type ="text" value="<%=d%>" name="optionD">
                </form></td>
                            </tr>
                            <tr>
                                <%
                }else if(id == 3){
                    question = q.getQuestion();
                        a = q.getOptionA();
                        b = q.getOptionB();
                        c = q.getOptionC();
                        d = q.getOptionD();
                }
                }
                                %>
                                <th>Question 3</th>
                                <td> <form action ="UpdateQuizServlet" method ="post">
                    <button class="btn btn-small btn-info" type="submit">Edit</button>
                    <input type="hidden" name="quizId" value="3">
                    <input type ="text" value ="<%=question%>" name="question">
                    <input type ="text" value ="<%=a%>" name="optionA">
                    <input type ="text" value ="<%=b%>" name="optionB">
                    <input type ="text" value="<%=c%>" name="optionC">
                    <input type ="text" value="<%=d%>" name="optionD">
                </form></td>
                            </tr>
                        </table>
        <br>
        <br>
        <%
            String asd = (String)session.getAttribute("responseText");
        %>
        <%=asd==null?"":asd%>
   

    </body>
</html>
