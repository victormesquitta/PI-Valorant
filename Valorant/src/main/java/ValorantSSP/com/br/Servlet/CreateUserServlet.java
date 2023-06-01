package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.UserDao;
import ValorantSSP.com.br.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cadastro")
public class CreateUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("adm/cadastro/index.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String usrUser = req.getParameter("usr-user");
        String usrPass = req.getParameter("usr-pass");
        String usrConfirmPass = req.getParameter("usr-confirm");

        User user = new User();

        user.setUsername(usrUser);
        user.setPassword(usrPass);

        UserDao userDao = new UserDao();

        if(usrConfirmPass.equals(usrPass)){

            userDao.createUser(user);

            resp.sendRedirect("/login");

        } else {

            req.setAttribute("message", "Invalid credentials!");

            req.getRequestDispatcher("adm/cadastro/index.jsp").forward(req, resp);

        }

    }


}
