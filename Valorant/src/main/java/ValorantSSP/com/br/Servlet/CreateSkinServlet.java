package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.SkinDao;
import ValorantSSP.com.br.Model.Skin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/create-skin")
public class CreateSkinServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String skinName = req.getParameter("map-name");
        String skinDate = req.getParameter("map-description");
        int skinSeason = Integer.parseInt(req.getParameter("map-bombsites"));
        int skinAct = Integer.parseInt(req.getParameter("map-act"));
        Float skinPrice = Float.parseFloat("skin-price");
        boolean skinRecolors = Boolean.parseBoolean(req.getParameter("map-rotation"));


        Skin skin = new Skin();
        skin.setName(skinName);
        skin.setDate(skinDate);
        skin.setSeason(skinSeason);
        skin.setAct(skinAct);
        skin.setRecolors(skinRecolors);
        skin.setPrice(skinPrice);


        new SkinDao().createSkin(skin);

        resp.sendRedirect("/find-all-skins");
    }

}
