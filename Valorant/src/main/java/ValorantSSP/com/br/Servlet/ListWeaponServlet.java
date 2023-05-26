package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.UserDao;
import ValorantSSP.com.br.Dao.WeaponDao;
import ValorantSSP.com.br.Model.User;
import ValorantSSP.com.br.Model.Weapon;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/armas")
public class ListWeaponServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Weapon> weapons = new WeaponDao().findAllWeapons();
        List<Weapon> pistols = new WeaponDao().findAllPistols();
        List<Weapon> subs = new WeaponDao().findAllSubs();
        List<Weapon> escopetas = new WeaponDao().findAllEscopetas();
        List<Weapon> fuzis = new WeaponDao().findAllFuzil();
        List<Weapon> fuzilPrecisao = new WeaponDao().findAllFuzilPrecisao();

        req.setAttribute("weapons", weapons);
        req.setAttribute("pistols", pistols);
        req.setAttribute("subs", subs);
        req.setAttribute("escopetas", escopetas);
        req.setAttribute("fuzis" , fuzis);
        req.setAttribute("fuzilPrecisao" , fuzilPrecisao);

        HttpSession session = req.getSession();

        if  (session.getAttribute("loggedUser") == null ) {

            req.getRequestDispatcher("user/weapons/Weapon.jsp").forward(req, resp);

        }  else {

            req.getRequestDispatcher("adm/dashboard-weapons/Weapons.jsp").forward(req, resp);
        }

    }
}
