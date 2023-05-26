package ValorantSSP.com.br.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/home")
public class LoginHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();

        if (session.getAttribute("loggedUser") == null) {


            req.getRequestDispatcher("index.jsp").forward(req, resp);

        } else {
            //pq o css n puxa
            req.getRequestDispatcher("adm/home/home.jsp").forward(req, resp);
            //resp.sendRedirect("adm/home/home.jsp");

        }
    }
}
