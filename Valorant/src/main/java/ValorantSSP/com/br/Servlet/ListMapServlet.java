package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.MapDao;
import ValorantSSP.com.br.Model.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet({"/maps"})
public class ListMapServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Map> maps = new MapDao().findAllMaps();

        req.setAttribute("maps", maps);

        HttpSession session = req.getSession();

        if  (session.getAttribute("loggedUser") == null ) {

            req.getRequestDispatcher("user/maps/Maps.jsp.jsp").forward(req, resp);

        }  else {

            req.getRequestDispatcher("adm/dashboard-maps/Maps.jsp").forward(req, resp);
        }

    }
}
