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

        String SQL = "INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGE, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH) VALUES (?,?,?,?,?,?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, weapon.getName());
            preparedStatement.setString(2, weapon.getType());
            preparedStatement.setInt(3, weapon.getCreds());
            preparedStatement.setInt(4, weapon.getDamage());
            preparedStatement.setInt(5, weapon.getMagazine());
            preparedStatement.setInt(6, weapon.getReserve());
            preparedStatement.setInt(7,  weapon.getFireRateSecs());
            preparedStatement.setString(8, weapon.getWallPenetration());
            preparedStatement.setString(9, weapon.getPath());


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
                int weaponDamage = resultSet.getInt("damage");
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
                weapon.setDamage(weaponDamage);
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
        String SQL = "SELECT * FROM WEAPON WHERE TYPE = 'pistolas'";

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
                int pistolDamage = resultSet.getInt("damage");
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
                pistol.setDamage(pistolDamage);
                pistol.setMagazine(pistolMagazine);
                pistol.setReserve(pistolReserve);
                pistol.setFireRateSecs(pistolFireRateSecs);
                pistol.setWallPenetration(pistolWallPenetration);
                pistol.setPath(pistolPath);
                pistolas.add(pistol);

            }

            System.out.println("success in select * weapon where type = 'pistolas'");

            connection.close();

            return pistolas;

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

}
