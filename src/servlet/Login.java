package servlet;

import Database.Database;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            PreparedStatement ps = Database.getConnection().prepareStatement("select * from information where email = ? and password = ?");
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if (email.equals("admin_user@gmail.com")&&password.equals("admin@user")){
                request.getRequestDispatcher("/AddQuestion.jsp").forward(request,response);
            }
            else{
                request.getSession().setAttribute("email",email);
                request.getRequestDispatcher("/Exam.jsp").forward(request,response);
            }
        }catch (Exception e){
            System.out.println(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
