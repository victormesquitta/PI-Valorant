package ValorantSSP.com.br.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import ValorantSSP.com.br.Model.Weapon;
import ValorantSSP.com.br.config.ConnectionPoolConfig;

public class WeaponDao {

    public void createWeapon(Weapon weapon){

        String SQL = "INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, weapon.getName());
            preparedStatement.setString(2, weapon.getType());
            preparedStatement.setInt(3, weapon.getCreds());
            preparedStatement.setInt(4, weapon.getDamageShortHead());
            preparedStatement.setInt(5, weapon.getDamageMediumHead());
            preparedStatement.setInt(6, weapon.getDamageLongHead());
            preparedStatement.setInt(7, weapon.getDamageShortBody());
            preparedStatement.setInt(8, weapon.getDamageMediumBody());
            preparedStatement.setInt(9, weapon.getDamageLongBody());
            preparedStatement.setInt(10, weapon.getDamageShortLeg());
            preparedStatement.setInt(11, weapon.getDamageMediumLeg());
            preparedStatement.setInt(12, weapon.getDamageLongLeg());
            preparedStatement.setInt(13, weapon.getMagazine());
            preparedStatement.setInt(14, weapon.getReserve());
            preparedStatement.setInt(15,  weapon.getFireRateSecs());
            preparedStatement.setString(16, weapon.getWallPenetration());
            preparedStatement.setString(17, weapon.getPath());


            preparedStatement.execute();

            connection.close();

        } catch (Exception e){

            System.out.println("fail in connection");
        }
    }
    public List<Weapon> findAllWeapons(){
        String SQL = "SELECT * FROM WEAPON";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> weapons = new ArrayList<>();

            while (resultSet.next()) {

                String weaponId = resultSet.getString("id");
                String weaponName = resultSet.getString("name");
                String weaponType = resultSet.getString("type");
                int weaponCreds = resultSet.getInt("creds");
                int weaponDamageShortHead = resultSet.getInt("damageShortHead");
                int weaponDamageMediumHead = resultSet.getInt("damageMediumHead");
                int weaponDamageLongHead = resultSet.getInt("damageLongHead");
                int weaponDamageShortBody = resultSet.getInt("damageShortBody");
                int weaponDamageMediumBody = resultSet.getInt("damageMediumBody");
                int weaponDamageLongBody = resultSet.getInt("damageLongBody");
                int weaponDamageShortLeg = resultSet.getInt("damageShortLeg");
                int weaponDamageMediumLeg = resultSet.getInt("damageMediumLeg");
                int weaponDamageLongLeg = resultSet.getInt("damageLongLeg");
                int weaponMagazine = resultSet.getInt("magazine");
                int weaponReserve = resultSet.getInt("reserve");
                int weaponFireRateSecs = resultSet.getInt("fireRateSecs");
                String weaponWallPenetration = resultSet.getString("wallPenetration");
                String weaponPath = resultSet.getString("path");

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
                weapons.add(weapon);

            }

            System.out.println("success in select * weapon");

            connection.close();

            return weapons;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Weapon> findAllPistols(){
        String SQL = "SELECT * FROM WEAPON WHERE TYPE = 'pistola'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> pistolas = new ArrayList<>();

            while (resultSet.next()) {

                String pistolID = resultSet.getString("id");
                String pistolName = resultSet.getString("name");
                String pistolType = resultSet.getString("type");
                int pistolCreds = resultSet.getInt("creds");
                int pistolDamageLongHead = resultSet.getInt("damageLongHead");
                int pistolDamageMediumHead = resultSet.getInt("damageLongHead");
                int pistolDamageShortHead = resultSet.getInt("damageLongHead");
                int pistolDamageShortBody = resultSet.getInt("damageShortBody");
                int pistolDamageMediumBody = resultSet.getInt("damageMediumBody");
                int pistolDamageLongBody = resultSet.getInt("damageLongBody");
                int pistolDamageShortLeg = resultSet.getInt("damageShortLeg");
                int pistolDamageMediumLeg = resultSet.getInt("damageMediumLeg");
                int pistolDamageLongLeg = resultSet.getInt("damageLongLeg");
                int pistolMagazine = resultSet.getInt("magazine");
                int pistolReserve = resultSet.getInt("reserve");
                int pistolFireRateSecs = resultSet.getInt("fireRateSecs");
                String pistolWallPenetration = resultSet.getString("wallPenetration");
                String pistolPath = resultSet.getString("path");

                Weapon pistol = new Weapon();
                pistol.setId(pistolID);
                pistol.setName(pistolName);
                pistol.setType(pistolType);
                pistol.setCreds(pistolCreds);
                pistol.setDamageLongHead(pistolDamageLongHead);
                pistol.setDamageMediumHead(pistolDamageMediumHead);
                pistol.setDamageShortHead(pistolDamageShortHead);
                pistol.setDamageLongBody(pistolDamageLongBody);
                pistol.setDamageMediumBody(pistolDamageMediumBody);
                pistol.setDamageShortBody(pistolDamageShortBody);
                pistol.setDamageLongLeg(pistolDamageLongLeg);
                pistol.setDamageMediumLeg(pistolDamageMediumLeg);
                pistol.setDamageShortLeg(pistolDamageShortLeg);
                pistol.setMagazine(pistolMagazine);
                pistol.setReserve(pistolReserve);
                pistol.setFireRateSecs(pistolFireRateSecs);
                pistol.setWallPenetration(pistolWallPenetration);
                pistol.setPath(pistolPath);
                pistolas.add(pistol);

            }

            System.out.println("success in select * weapon where type = 'pistola'");

            connection.close();

            return pistolas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Weapon> findAllSubs(){
        String SQL = "SELECT * FROM WEAPON WHERE TYPE = 'submetralhadora'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> submetralhadora = new ArrayList<>();

            while (resultSet.next()) {

                String subID = resultSet.getString("id");
                String subName = resultSet.getString("name");
                String subType = resultSet.getString("type");
                int subCreds = resultSet.getInt("creds");
                int subDamageLongHead = resultSet.getInt("damageLongHead");
                int subDamageMediumHead = resultSet.getInt("damageLongHead");
                int subDamageShortHead = resultSet.getInt("damageLongHead");
                int subDamageShortBody = resultSet.getInt("damageShortBody");
                int subDamageMediumBody = resultSet.getInt("damageMediumBody");
                int subDamageLongBody = resultSet.getInt("damageLongBody");
                int subDamageShortLeg = resultSet.getInt("damageShortLeg");
                int subDamageMediumLeg = resultSet.getInt("damageMediumLeg");
                int subDamageLongLeg = resultSet.getInt("damageLongLeg");
                int subMagazine = resultSet.getInt("magazine");
                int subReserve = resultSet.getInt("reserve");
                int subFireRateSecs = resultSet.getInt("fireRateSecs");
                String subWallPenetration = resultSet.getString("wallPenetration");
                String subPath = resultSet.getString("path");

                Weapon sub = new Weapon();
                sub.setId(subID);
                sub.setName(subName);
                sub.setType(subType);
                sub.setCreds(subCreds);
                sub.setDamageLongHead(subDamageLongHead);
                sub.setDamageMediumHead(subDamageMediumHead);
                sub.setDamageShortHead(subDamageShortHead);
                sub.setDamageLongBody(subDamageLongBody);
                sub.setDamageMediumBody(subDamageMediumBody);
                sub.setDamageShortBody(subDamageShortBody);
                sub.setDamageLongLeg(subDamageLongLeg);
                sub.setDamageMediumLeg(subDamageMediumLeg);
                sub.setDamageShortLeg(subDamageShortLeg);
                sub.setMagazine(subMagazine);
                sub.setReserve(subReserve);
                sub.setFireRateSecs(subFireRateSecs);
                sub.setWallPenetration(subWallPenetration);
                sub.setPath(subPath);
                submetralhadora.add(sub);

            }

            System.out.println("success in select * weapon where type = 'submetralhadora'");

            connection.close();

            return submetralhadora;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Weapon> findAllFuzilPrecisao(){
        String SQL = "SELECT * FROM WEAPON WHERE TYPE = 'fuzil de precisao'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> fuzilPrecisao = new ArrayList<>();

            while (resultSet.next()) {

                String fuziID = resultSet.getString("id");
                String fuziName = resultSet.getString("name");
                String fuziType = resultSet.getString("type");
                int fuziCreds = resultSet.getInt("creds");
                int fuziDamageLongHead = resultSet.getInt("damageLongHead");
                int fuziDamageMediumHead = resultSet.getInt("damageLongHead");
                int fuziDamageShortHead = resultSet.getInt("damageLongHead");
                int fuziDamageShortBody = resultSet.getInt("damageShortBody");
                int fuziDamageMediumBody = resultSet.getInt("damageMediumBody");
                int fuziDamageLongBody = resultSet.getInt("damageLongBody");
                int fuziDamageShortLeg = resultSet.getInt("damageShortLeg");
                int fuziDamageMediumLeg = resultSet.getInt("damageMediumLeg");
                int fuziDamageLongLeg = resultSet.getInt("damageLongLeg");
                int fuziMagazine = resultSet.getInt("magazine");
                int fuziReserve = resultSet.getInt("reserve");
                int fuziFireRateSecs = resultSet.getInt("fireRateSecs");
                String fuziWallPenetration = resultSet.getString("wallPenetration");
                String fuziPath = resultSet.getString("path");

                Weapon fuzilP = new Weapon();
                fuzilP.setId(fuziID);
                fuzilP.setName(fuziName);
                fuzilP.setType(fuziType);
                fuzilP.setCreds(fuziCreds);
                fuzilP.setDamageLongHead(fuziDamageLongHead);
                fuzilP.setDamageMediumHead(fuziDamageMediumHead);
                fuzilP.setDamageShortHead(fuziDamageShortHead);
                fuzilP.setDamageLongBody(fuziDamageLongBody);
                fuzilP.setDamageMediumBody(fuziDamageMediumBody);
                fuzilP.setDamageShortBody(fuziDamageShortBody);
                fuzilP.setDamageLongLeg(fuziDamageLongLeg);
                fuzilP.setDamageMediumLeg(fuziDamageMediumLeg);
                fuzilP.setDamageShortLeg(fuziDamageShortLeg);
                fuzilP.setMagazine(fuziMagazine);
                fuzilP.setReserve(fuziReserve);
                fuzilP.setFireRateSecs(fuziFireRateSecs);
                fuzilP.setWallPenetration(fuziWallPenetration);
                fuzilP.setPath(fuziPath);
                fuzilPrecisao.add(fuzilP);

            }

            System.out.println("success in select * weapon where type = 'fuzil de precisao'");

            connection.close();

            return fuzilPrecisao;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Weapon> findAllEscopetas(){
        String SQL = "SELECT * FROM WEAPON WHERE TYPE = 'escopeta'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> escopetas = new ArrayList<>();

            while (resultSet.next()) {

                String escID = resultSet.getString("id");
                String escName = resultSet.getString("name");
                String escType = resultSet.getString("type");
                int escCreds = resultSet.getInt("creds");
                int escDamageLongHead = resultSet.getInt("damageLongHead");
                int escDamageMediumHead = resultSet.getInt("damageLongHead");
                int escDamageShortHead = resultSet.getInt("damageLongHead");
                int escDamageShortBody = resultSet.getInt("damageShortBody");
                int escDamageMediumBody = resultSet.getInt("damageMediumBody");
                int escDamageLongBody = resultSet.getInt("damageLongBody");
                int escDamageShortLeg = resultSet.getInt("damageShortLeg");
                int escDamageMediumLeg = resultSet.getInt("damageMediumLeg");
                int escDamageLongLeg = resultSet.getInt("damageLongLeg");
                int escMagazine = resultSet.getInt("magazine");
                int escReserve = resultSet.getInt("reserve");
                int escFireRateSecs = resultSet.getInt("fireRateSecs");
                String escWallPenetration = resultSet.getString("wallPenetration");
                String escPath = resultSet.getString("path");

                Weapon escopeta = new Weapon();
                escopeta.setId(escID);
                escopeta.setName(escName);
                escopeta.setType(escType);
                escopeta.setCreds(escCreds);
                escopeta.setDamageLongHead(escDamageLongHead);
                escopeta.setDamageMediumHead(escDamageMediumHead);
                escopeta.setDamageShortHead(escDamageShortHead);
                escopeta.setDamageLongBody(escDamageLongBody);
                escopeta.setDamageMediumBody(escDamageMediumBody);
                escopeta.setDamageShortBody(escDamageShortBody);
                escopeta.setDamageLongLeg(escDamageLongLeg);
                escopeta.setDamageMediumLeg(escDamageMediumLeg);
                escopeta.setDamageShortLeg(escDamageShortLeg);
                escopeta.setMagazine(escMagazine);
                escopeta.setReserve(escReserve);
                escopeta.setFireRateSecs(escFireRateSecs);
                escopeta.setWallPenetration(escWallPenetration);
                escopeta.setPath(escPath);
                escopetas.add(escopeta);

            }

            System.out.println("success in select * weapon where type = 'escopeta'");

            connection.close();

            return escopetas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Weapon> findAllMetralhadoras(){
        String SQL = "SELECT * FROM WEAPON WHERE TYPE = 'metralhadora'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> metralhadoras = new ArrayList<>();

            while (resultSet.next()) {

                String fuzID = resultSet.getString("id");
                String fuzName = resultSet.getString("name");
                String fuzType = resultSet.getString("type");
                int fuzCreds = resultSet.getInt("creds");
                int fuzDamageLongHead = resultSet.getInt("damageLongHead");
                int fuzDamageMediumHead = resultSet.getInt("damageLongHead");
                int fuzDamageShortHead = resultSet.getInt("damageLongHead");
                int fuzDamageShortBody = resultSet.getInt("damageShortBody");
                int fuzDamageMediumBody = resultSet.getInt("damageMediumBody");
                int fuzDamageLongBody = resultSet.getInt("damageLongBody");
                int fuzDamageShortLeg = resultSet.getInt("damageShortLeg");
                int fuzDamageMediumLeg = resultSet.getInt("damageMediumLeg");
                int fuzDamageLongLeg = resultSet.getInt("damageLongLeg");
                int fuzMagazine = resultSet.getInt("magazine");
                int fuzReserve = resultSet.getInt("reserve");
                int fuzFireRateSecs = resultSet.getInt("fireRateSecs");
                String fuzWallPenetration = resultSet.getString("wallPenetration");
                String fuzPath = resultSet.getString("path");

                Weapon fuzil = new Weapon();
                fuzil.setId(fuzID);
                fuzil.setName(fuzName);
                fuzil.setType(fuzType);
                fuzil.setCreds(fuzCreds);
                fuzil.setDamageLongHead(fuzDamageLongHead);
                fuzil.setDamageMediumHead(fuzDamageMediumHead);
                fuzil.setDamageShortHead(fuzDamageShortHead);
                fuzil.setDamageLongBody(fuzDamageLongBody);
                fuzil.setDamageMediumBody(fuzDamageMediumBody);
                fuzil.setDamageShortBody(fuzDamageShortBody);
                fuzil.setDamageLongLeg(fuzDamageLongLeg);
                fuzil.setDamageMediumLeg(fuzDamageMediumLeg);
                fuzil.setDamageShortLeg(fuzDamageShortLeg);
                fuzil.setMagazine(fuzMagazine);
                fuzil.setReserve(fuzReserve);
                fuzil.setFireRateSecs(fuzFireRateSecs);
                fuzil.setWallPenetration(fuzWallPenetration);
                fuzil.setPath(fuzPath);
                metralhadoras.add(fuzil);

            }

            System.out.println("success in select * weapon where type = 'metralhadora'");

            connection.close();

            return metralhadoras;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Weapon> findAllFuzil(){
        String SQL = "SELECT * FROM WEAPON WHERE TYPE = 'fuzil'";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> fuzis = new ArrayList<>();

            while (resultSet.next()) {

                String fuzID = resultSet.getString("id");
                String fuzName = resultSet.getString("name");
                String fuzType = resultSet.getString("type");
                int fuzCreds = resultSet.getInt("creds");
                int fuzDamageLongHead = resultSet.getInt("damageLongHead");
                int fuzDamageMediumHead = resultSet.getInt("damageLongHead");
                int fuzDamageShortHead = resultSet.getInt("damageLongHead");
                int fuzDamageShortBody = resultSet.getInt("damageShortBody");
                int fuzDamageMediumBody = resultSet.getInt("damageMediumBody");
                int fuzDamageLongBody = resultSet.getInt("damageLongBody");
                int fuzDamageShortLeg = resultSet.getInt("damageShortLeg");
                int fuzDamageMediumLeg = resultSet.getInt("damageMediumLeg");
                int fuzDamageLongLeg = resultSet.getInt("damageLongLeg");
                int fuzMagazine = resultSet.getInt("magazine");
                int fuzReserve = resultSet.getInt("reserve");
                int fuzFireRateSecs = resultSet.getInt("fireRateSecs");
                String fuzWallPenetration = resultSet.getString("wallPenetration");
                String fuzPath = resultSet.getString("path");

                Weapon fuzil = new Weapon();
                fuzil.setId(fuzID);
                fuzil.setName(fuzName);
                fuzil.setType(fuzType);
                fuzil.setCreds(fuzCreds);
                fuzil.setDamageLongHead(fuzDamageLongHead);
                fuzil.setDamageMediumHead(fuzDamageMediumHead);
                fuzil.setDamageShortHead(fuzDamageShortHead);
                fuzil.setDamageLongBody(fuzDamageLongBody);
                fuzil.setDamageMediumBody(fuzDamageMediumBody);
                fuzil.setDamageShortBody(fuzDamageShortBody);
                fuzil.setDamageLongLeg(fuzDamageLongLeg);
                fuzil.setDamageMediumLeg(fuzDamageMediumLeg);
                fuzil.setDamageShortLeg(fuzDamageShortLeg);
                fuzil.setMagazine(fuzMagazine);
                fuzil.setReserve(fuzReserve);
                fuzil.setFireRateSecs(fuzFireRateSecs);
                fuzil.setWallPenetration(fuzWallPenetration);
                fuzil.setPath(fuzPath);
                fuzis.add(fuzil);

            }

            System.out.println("success in select * weapon where type = 'fuzil'");

            connection.close();

            return fuzis;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }
    public void deleteWeaponById(String weaponId) {

        String SQL = "DELETE WEAPON WHERE ID = ?";
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, weaponId);
            preparedStatement.execute();

            System.out.println("success on delete weapon with name: " + weaponId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }
    public void updateWeapon(Weapon weapon) {

        String SQL = "UPDATE WEAPON SET NAME = ?, TYPE = ?, CREDS = ?, DAMAGESHORTBODY = ?, DAMAGEMEDIUMBODY = ?, DAMAGELONGBODY = ?, DAMAGESHORTHEAD = ?, DAMAGEMEDIUMHEAD = ?, DAMAGELONGHEAD = ?, DAMAGESHORTLEG = ?, DAMAGEMEDIUMLEG = ?, DAMAGELONGLEG = ?, MAGAZINE = ?, RESERVE = ?, FIRERATESECS = ?, WALLPENETRATION = ?, PATH = ? WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();
            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, weapon.getName());
            preparedStatement.setString(2, weapon.getType());
            preparedStatement.setInt(3, weapon.getCreds());
            preparedStatement.setInt(4, weapon.getDamageShortHead());
            preparedStatement.setInt(5, weapon.getDamageMediumHead());
            preparedStatement.setInt(6, weapon.getDamageLongHead());
            preparedStatement.setInt(7, weapon.getDamageShortBody());
            preparedStatement.setInt(8, weapon.getDamageMediumBody());
            preparedStatement.setInt(9, weapon.getDamageLongBody());
            preparedStatement.setInt(10, weapon.getDamageShortLeg());
            preparedStatement.setInt(11, weapon.getDamageMediumLeg());
            preparedStatement.setInt(12, weapon.getDamageLongLeg());
            preparedStatement.setInt(13, weapon.getMagazine());
            preparedStatement.setInt(14, weapon.getReserve());
            preparedStatement.setInt(15, weapon.getFireRateSecs());
            preparedStatement.setString(16, weapon.getPath());
            preparedStatement.setString(17, weapon.getId());
            preparedStatement.setString(18, weapon.getWallPenetration());
            preparedStatement.execute();

            System.out.println("success in update weapon");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }

    }

}
