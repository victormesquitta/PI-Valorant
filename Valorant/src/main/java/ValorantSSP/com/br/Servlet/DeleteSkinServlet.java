package ValorantSSP.com.br.Servlet;
import ValorantSSP.com.br.Dao.SkinDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/delete-skin")
public class DeleteSkinServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String skinId = req.getParameter("skin-id");

        new SkinDao().deleteSkinById(skinId);

        resp.sendRedirect("/skins");

    }
}
