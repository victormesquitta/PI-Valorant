package ValorantSSP.com.br.Dao;

import ValorantSSP.com.br.Model.Skin;
import ValorantSSP.com.br.config.ConnectionPoolConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SkinDao {
    public void createSkin(Skin skin){

        String SQL = "INSERT INTO SKIN (NAME, DATE, PRICE, SEASON, ACT, RECOLORS, PATH) VALUES (?,?,?,?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, skin.getName());
            preparedStatement.setString(2, skin.getDate());
            preparedStatement.setInt(3, skin.getSeason());
            preparedStatement.setInt(4, skin.getAct());
            preparedStatement.setFloat(5, skin.getPrice());
            preparedStatement.setInt(6, skin.getRecolors());
            preparedStatement.setString(7, skin.getPath());



            preparedStatement.execute();

            connection.close();

        } catch (Exception e){

            System.out.println("fail in connection");
            System.out.println(e.getMessage());
        }
    }
    public List<Skin> findAllSkins(){
        String SQL = "SELECT * FROM SKIN";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Skin> skins = new ArrayList<>();

            while (resultSet.next()) {

                String skinId = resultSet.getString("id");
                String skinName = resultSet.getString("name");
                int skinSeason = resultSet.getInt("season");
                int skinAct = resultSet.getInt("act");
                String skinDate = resultSet.getString("date");
                float skinPrice = resultSet.getFloat("price");
                int skinRecolors = resultSet.getInt("recolors");
                String skinPath = resultSet.getString("path");

                Skin skin = new Skin();
                skin.setId(skinId);
                skin.setName(skinName);
                skin.setPath(skinPath);
                skin.setSeason(skinSeason);
                skin.setAct(skinAct);
                skin.setDate(skinDate);
                skin.setPrice(skinPrice);
                skin.setRecolors(skinRecolors);

                skins.add(skin);

            }

            System.out.println("success in select * skin");

            connection.close();

            return skins;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public void deleteSkinById(String skinId) {

        String SQL = "DELETE SKIN WHERE ID = ?";
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, skinId);
            preparedStatement.execute();

            System.out.println("success on delete skin with id: " + skinId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }
    public void updateSkin(Skin skin) {

        String SQL = "UPDATE SKIN SET NAME = ?, DATE = ?, PRICE = ?, SEASON = ?, ACT = ?, RECOLORS = ?, PATH = ? WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();
            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, skin.getName());
            preparedStatement.setString(2, skin.getDate());
            preparedStatement.setInt(3, skin.getAct());
            preparedStatement.setInt(4, skin.getRecolors());
            preparedStatement.setFloat(5, skin.getPrice());
            preparedStatement.setInt(6, skin.getSeason());
            preparedStatement.setString(7, skin.getPath());
            preparedStatement.setString(8, skin.getId());
            preparedStatement.execute();

            System.out.println("success in update skin");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }

    }
}
