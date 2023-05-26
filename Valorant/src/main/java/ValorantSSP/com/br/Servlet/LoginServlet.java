package ValorantSSP.com.br.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import ValorantSSP.com.br.Dao.UserDao;
import ValorantSSP.com.br.Model.User;



    @WebServlet("/login")
    public class LoginServlet extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            req.getRequestDispatcher("adm/login/login.jsp").forward(req, resp);

        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String username = req.getParameter("username");
            String password = req.getParameter("password");

            User user = new User(username, password);

            boolean isValidUser = new UserDao().verifyCredentials(user);

            if (isValidUser) {

                req.getSession().setAttribute("loggedUser", username);

                resp.sendRedirect("adm/home/home.jsp");

            } else {

                req.setAttribute("message", "Invalid credentials!");

                resp.sendRedirect("adm/login/login.jsp");

            }

        }
    }
