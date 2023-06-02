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

        req.setCharacterEncoding("UTF-8");

        String weaponId = req.getParameter("weapon-id");
        String weaponName = req.getParameter("weapon-name");
        String weaponType = req.getParameter("weapon-type");
        int weaponCreds = Integer.parseInt(req.getParameter("weapon-creds"));
        int weaponDamageShortHead = Integer.parseInt(req.getParameter("weapon-damageShortHead"));
        int weaponDamageMediumHead = Integer.parseInt(req.getParameter("weapon-damageMediumHead"));
        int weaponDamageLongHead = Integer.parseInt(req.getParameter("weapon-damageLongHead"));
        int weaponDamageShortBody = Integer.parseInt(req.getParameter("weapon-damageShortBody"));
        int weaponDamageMediumBody = Integer.parseInt(req.getParameter("weapon-damageMediumBody"));
        int weaponDamageLongBody = Integer.parseInt(req.getParameter("weapon-damageLongBody"));
        int weaponDamageShortLeg = Integer.parseInt(req.getParameter("weapon-damageShortLeg"));
        int weaponDamageMediumLeg = Integer.parseInt(req.getParameter("weapon-damageMediumLeg"));
        int weaponDamageLongLeg = Integer.parseInt(req.getParameter("weapon-damageLongLeg"));
        int weaponMagazine = Integer.parseInt(req.getParameter("weapon-magazine"));
        int weaponReserve = Integer.parseInt(req.getParameter("weapon-reserve"));
        int weaponFireRateSecs = Integer.parseInt(req.getParameter("weapon-fireRateSecs"));
        String weaponWallPenetration = req.getParameter("weapon-wallPenetration");
        String weaponPath = req.getParameter("weapon-path");


        Weapon weapon = new Weapon();
        weapon.setId(weaponId);
        weapon.setName(weaponName);
        weapon.setType(weaponType);
        weapon.setCreds(weaponCreds);
        weapon.setDamageShortHead(weaponDamageShortHead);
        weapon.setDamageMediumHead(weaponDamageMediumHead);
        weapon.setDamageLongHead(weaponDamageLongHead);
        weapon.setDamageShortBody(weaponDamageShortBody);
        weapon.setDamageMediumBody(weaponDamageMediumBody);
        weapon.setDamageLongBody(weaponDamageLongBody);
        weapon.setDamageShortLeg(weaponDamageShortLeg);
        weapon.setDamageMediumLeg(weaponDamageMediumLeg);
        weapon.setDamageLongLeg(weaponDamageLongLeg);
        weapon.setMagazine(weaponMagazine);
        weapon.setReserve(weaponReserve);
        weapon.setFireRateSecs(weaponFireRateSecs);
        weapon.setWallPenetration(weaponWallPenetration);
        weapon.setPath(weaponPath);

        WeaponDao weaponDao = new WeaponDao();

        if(weaponId.isBlank()){
            weaponDao.createWeapon(weapon);
        }else{
            weaponDao.updateWeapon(weapon);
        }

        resp.sendRedirect("/armas");
    }

}
