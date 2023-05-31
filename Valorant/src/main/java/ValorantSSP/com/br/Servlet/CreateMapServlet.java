package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.MapDao;
import ValorantSSP.com.br.Model.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/create-map")
public class CreateMapServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String mapId = req.getParameter("map-id");
        String mapName = req.getParameter("map-name");
        String mapDescription = req.getParameter("map-description");
        int mapBombsite = Integer.parseInt(req.getParameter("map-bombsites"));
        String mapCoordinates = req.getParameter("map-coordinates");
        String mapCountry = req.getParameter("map-country");
        String mapPeculiarity = req.getParameter("map-peculiarity");
        String mapReleaseDate = req.getParameter("map-date");
        int mapSeason = Integer.parseInt(req.getParameter("map-season"));
        int mapAct = Integer.parseInt(req.getParameter("map-act"));
        boolean mapRotation = Boolean.parseBoolean(req.getParameter("map-rotation"));
        String mapPath = req.getParameter("map-path");

        Map map = new Map();

        map.setId(mapId);
        map.setName(mapName);
        map.setDescription(mapDescription);
        map.setBombsites(mapBombsite);
        map.setCoordinates(mapCoordinates);
        map.setCountry(mapCountry);
        map.setPeculiarity(mapPeculiarity);
        map.setReleaseDate(mapReleaseDate);
        map.setSeason(mapSeason);
        map.setAct(mapAct);
        map.setRotation(mapRotation);
        map.setPath(mapPath);

        MapDao mapDao = new MapDao();


        if (mapId.isBlank()) {

            mapDao.createMap(map);

        } else {

            mapDao.updateMap(map);
        }


        resp.sendRedirect("/maps");
    }


}
