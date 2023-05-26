package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.WeaponDao;
import ValorantSSP.com.br.Model.Weapon;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

<<<<<<< Updated upstream
@WebServlet("/armas")
=======
@WebServlet({"/find-all-weapons", "/admin/find-all-weapons"})
>>>>>>> Stashed changes
public class ListWeaponServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Weapon> weapons = new WeaponDao().findAllWeapons();
        List<Weapon> pistols = new WeaponDao().findAllPistols();

        req.setAttribute("weapons", weapons);
        req.setAttribute("pistols", pistols);

        //req.getRequestDispatcher("user/weapons/Weapon.jsp").forward(req, resp);
        req.getRequestDispatcher("adm/dashboard-weapons/Weapons.jsp").forward(req, resp);

    }
}
