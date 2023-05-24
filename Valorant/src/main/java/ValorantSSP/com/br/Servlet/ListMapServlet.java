package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.MapDao;
import ValorantSSP.com.br.Model.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-all-maps")
public class ListMapServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Map> maps = new MapDao().findAllMaps();

        req.setAttribute("maps", maps);

        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);

    }
}
