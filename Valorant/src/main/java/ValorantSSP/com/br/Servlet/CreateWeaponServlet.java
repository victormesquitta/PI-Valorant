package ValorantSSP.com.br.Servlet;

import ValorantSSP.com.br.Dao.WeaponDao;
import ValorantSSP.com.br.Model.Weapon;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet ("/create-weapon")
public class CreateWeaponServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String weaponName = req.getParameter("weapon-name");
        String weaponType = req.getParameter("weapon-type");
        int weaponCreds = Integer.parseInt(req.getParameter("weapon-creds"));
        int weaponDamage = Integer.parseInt(req.getParameter("weapon-damage"));
        int weaponMagazine = Integer.parseInt(req.getParameter("weapon-magazine"));
        int weaponReserve = Integer.parseInt(req.getParameter("weapon-reserve"));
        int weaponFireRateSecs = Integer.parseInt(req.getParameter("weapon-fireRateSecs"));
        String weaponWallPenetration = req.getParameter("weapon-wallPenetration");


        Weapon weapon = new Weapon();
        weapon.setName(weaponName);
        weapon.setType(weaponType);
        weapon.setCreds(weaponCreds);
        weapon.setDamage(weaponDamage);
        weapon.setMagazine(weaponMagazine);
        weapon.setReserve(weaponReserve);
        weapon.setFireRateSecs(weaponFireRateSecs);
        weapon.setWallPenetration(weaponWallPenetration);

        new WeaponDao().createWeapon(weapon);

        resp.sendRedirect("/find-all-weapons");
    }


}
