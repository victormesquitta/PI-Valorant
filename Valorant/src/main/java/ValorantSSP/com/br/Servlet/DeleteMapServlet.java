package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.MapDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-map")
public class DeleteMapServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String mapId = req.getParameter("map-id");

        new MapDao().deleteMapById(mapId);

        resp.sendRedirect("/maps");

    }
}
