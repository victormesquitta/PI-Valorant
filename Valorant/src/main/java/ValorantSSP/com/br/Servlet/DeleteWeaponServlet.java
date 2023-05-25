package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.WeaponDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/delete-weapon")

public class DeleteWeaponServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String weaponId = req.getParameter("weapon-id");

        new WeaponDao().deleteWeaponById(weaponId);

        resp.sendRedirect("/find-all-weapons");

    }
}
