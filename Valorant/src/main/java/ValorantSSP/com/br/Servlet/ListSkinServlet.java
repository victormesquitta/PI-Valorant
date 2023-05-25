package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.SkinDao;
import ValorantSSP.com.br.Model.Skin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet ("/find-all-skins")
public class ListSkinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Skin> skins = new SkinDao().findAllSkins();

        req.setAttribute("skins", skins);

        req.getRequestDispatcher("User/Skins/Skins.jsp").forward(req, resp);

    }
}
