package ValorantSSP.com.br.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import ValorantSSP.com.br.Model.Weapon;

public class WeaponDao {

    public void createWeapon(Weapon weapon){

        String SQL = "INSERT INTO MAP (NAME, TYPE, CREDS, DAMAGE, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION) VALUES (?,?,?,?,?,?,?,?)";

        try {

            System.out.println("success in connection");
            Connection connection = DriverManager.getConnection(
                    "jdbc:h2:~/test",
                    "sa",
                    "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, weapon.getName());
            preparedStatement.setString(2, weapon.getType());
            preparedStatement.setInt(3, weapon.getCreds());
            preparedStatement.setInt(4, weapon.getDamage());
            preparedStatement.setInt(5, weapon.getMagazine());
            preparedStatement.setInt(6, weapon.getReserve());
            preparedStatement.setInt(7,  weapon.getFireRateSecs());
            preparedStatement.setString(8, weapon.getWallPenetration());


            preparedStatement.execute();

            connection.close();

        } catch (Exception e){

            System.out.println("fail in connection");
        }
    }
    public List<Weapon> findAllWeapon(){
        String SQL = "SELECT * FROM WEAPON";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Weapon> weapons = new ArrayList<>();

            while (resultSet.next()) {

                String weaponName = resultSet.getString("name");

                Weapon weapon = new Weapon();
                weapon.setName(weaponName);

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
}
